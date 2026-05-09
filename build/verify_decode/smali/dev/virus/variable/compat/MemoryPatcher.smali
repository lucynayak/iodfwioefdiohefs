.class public Ldev/virus/variable/compat/MemoryPatcher;
.super Ljava/lang/Object;


# direct methods
.method public static patchNoHurtCam(Z)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/self/maps"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-wide/16 v1, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "libminecraftpe.so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-wide/32 v3, 0xe7dab0

    add-long/2addr v1, v3

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/self/mem"

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p0, :cond_2

    const/16 v3, 0x70

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    const/16 v3, 0x47

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x70

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    const/16 v3, 0xb5

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    :goto_1
    return-void
.end method
