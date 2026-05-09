.class public final Ly1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "games/com.mojang/minecraftpe/options.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "([0-9a-flor])"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(DD)D
    .registers 8

    sub-double/2addr p2, p0

    const-wide p0, 0x4066800000000000L    # 180.0

    add-double/2addr p2, p0

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p2, v0

    sub-double/2addr p2, p0

    const-wide v2, 0x4080e00000000000L    # 540.0

    add-double/2addr p2, v2

    rem-double/2addr p2, v0

    sub-double/2addr p2, p0

    return-wide p2
.end method

.method public static c(I)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/16 v4, 0x3f

    int-to-double v4, v4

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const-string v0, ""

    :goto_2
    return-object v0

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p0
.end method

.method public static e(JDD)Z
    .registers 15

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p0, v1

    if-eqz v3, :cond_0

    .line 1
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v1

    .line 2
    invoke-static {}, La3/r0;->u()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    .line 3
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionY(J)F

    move-result v3

    .line 4
    invoke-static {}, La3/r0;->v()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    .line 5
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result v5

    .line 6
    invoke-static {}, La3/r0;->w()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    mul-double v1, v1, v1

    mul-double v7, v3, v3

    add-double/2addr v7, v1

    mul-double v5, v5, v5

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v3, v1

    .line 7
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionX(J)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    .line 8
    invoke-static {}, La3/r0;->u()F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v1, v5

    float-to-double v5, v1

    .line 9
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->getPositionZ(J)F

    move-result p0

    add-float/2addr p0, v2

    .line 10
    invoke-static {}, La3/r0;->w()F

    move-result p1

    add-float/2addr p1, v2

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {v5, v6, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    neg-double p0, p0

    const-wide v1, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p0, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double v1, v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    neg-double v1, v1

    invoke-static {}, La3/r0;->y()F

    move-result v3

    float-to-double v3, v3

    invoke-static {p0, p1, v3, v4}, Ly1/b;->b(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {}, La3/r0;->t()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ly1/b;->b(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v3, p0, p2

    if-gez v3, :cond_0

    neg-double p2, p2

    cmpl-double v3, p0, p2

    if-lez v3, :cond_0

    cmpg-double p0, v1, p4

    if-gez p0, :cond_0

    neg-double p0, p4

    cmpl-double p2, v1, p0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static f(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_5

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0
.end method
