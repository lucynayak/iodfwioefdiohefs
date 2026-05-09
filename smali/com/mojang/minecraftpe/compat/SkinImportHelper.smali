.class public Lcom/mojang/minecraftpe/compat/SkinImportHelper;
.super Ljava/lang/Object;


# Copies content from a content:// URI to a cache file
# Returns absolute file path or null on failure
# Works on all Android versions including scoped storage (Android 10+)

.method public static copyUriToCache(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    :try_start_0
    # Get InputStream from content resolver
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    # v0 = InputStream
    if-nez v0, :has_stream

    const/4 v1, 0x0

    return-object v1

    :has_stream
    # Create output file in cache dir
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "skin_import.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # v1 = File

    # Create FileOutputStream
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    # v2 = FileOutputStream

    # Create buffer
    const/16 v3, 0x1000

    new-array v3, v3, [B

    # v3 = byte[4096]

    # Copy loop
    :loop
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :done_loop

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :loop

    :done_loop
    # Close streams
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    # Return absolute path
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method
