.class public Ldev/virus/variable/compat/MemoryPatcher;
.super Ljava/lang/Object;

# Patches bobHurt in libminecraftpe.so at runtime via /proc/self/mem.
# p0 = true: enable NoHurtCam (BX LR), false: restore original (PUSH {R4-R6,LR})
.method public static patchNoHurtCam(Z)V
    .registers 7

    :try_start
    # Parse /proc/self/maps to find libminecraftpe.so base address
    new-instance v0, Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileReader;
    const-string v2, "/proc/self/maps"
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-wide/16 v1, 0x0

    :loop
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :done_maps

    const-string v4, "libminecraftpe.so"
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v4
    if-eqz v4, :loop

    # Parse hex start address (before the first '-')
    const-string v4, "-"
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v4
    const/4 v5, 0x0
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3
    const/16 v4, 0x10
    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    move-result-wide v1

    :done_maps
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    # If base is 0, library not found
    const-wide/16 v3, 0x0
    cmp-long v5, v1, v3
    if-eqz v5, :end

    # Runtime address = base + bobHurt file offset
    const-wide/32 v3, 0xE7DAB0
    add-long/2addr v1, v3

    # Open /proc/self/mem for read-write
    new-instance v0, Ljava/io/RandomAccessFile;
    const-string v3, "/proc/self/mem"
    const-string v4, "rw"
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # Seek to bobHurt
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p0, :write_original

    # NoHurtCam ON: write 70 47 (Thumb BX LR)
    const/16 v3, 0x70
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V
    const/16 v3, 0x47
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V
    goto :close_mem

    :write_original
    # NoHurtCam OFF: write 70 B5 (Thumb PUSH {R4-R6,LR})
    const/16 v3, 0x70
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V
    const/16 v3, 0xB5
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    :close_mem
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :catch

    goto :end

    :catch
    move-exception v0

    :end
    return-void
.end method
