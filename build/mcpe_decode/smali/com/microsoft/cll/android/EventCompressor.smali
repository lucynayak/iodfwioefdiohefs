.class public Lcom/microsoft/cll/android/EventCompressor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidCll-EventCompressor"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventCompressor;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/cll/android/EventCompressor;->logger:Lcom/microsoft/cll/android/ILogger;

    return-void
.end method


# virtual methods
.method public compress(Ljava/lang/String;)[B
    .locals 7

    const-string v0, "AndroidCll-EventCompressor"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v3

    new-array v3, v3, [B

    new-instance v4, Ljava/util/zip/Deflater;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-virtual {v4, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->finish()V

    invoke-virtual {v4, v3}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result p1

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    if-lt p1, v2, :cond_0

    iget-object p1, p0, Lcom/microsoft/cll/android/EventCompressor;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "Compression resulted in a string of at least the max event buffer size of Vortex. Most likely this means we lost part of the string."

    invoke-interface {p1, v0, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v3, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object p1, p0, Lcom/microsoft/cll/android/EventCompressor;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v2, "Could not compress events"

    invoke-interface {p1, v0, v2}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
