.class public Lcom/microsoft/cll/android/CorrelationVector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final base64CharSet:Ljava/lang/String;

.field private baseVector:Ljava/lang/String;

.field private currentVector:I

.field private final id0Length:I

.field public isInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    iput-object v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->base64CharSet:Ljava/lang/String;

    const/16 v0, 0x10

    iput v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->id0Length:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    return-void
.end method

.method private CanExtend()Z
    .locals 4

    iget v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    add-int/2addr v1, v2

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method private CanIncrement(I)Z
    .locals 4

    add-int/lit8 v0, p1, -0x1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget-object v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    add-int/2addr v0, p1

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v1

    if-gt v0, v1, :cond_1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private SeedCorrelationVector()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x40

    .line 2
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public Extend()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/cll/android/CorrelationVector;->Init()V

    :cond_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/CorrelationVector;->CanExtend()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/cll/android/CorrelationVector;->GetValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/cll/android/CorrelationVector;->GetValue()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public GetValue()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Increment()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/cll/android/CorrelationVector;->Init()V

    :cond_0
    iget v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/microsoft/cll/android/CorrelationVector;->CanIncrement(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/cll/android/CorrelationVector;->GetValue()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Init()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/cll/android/CorrelationVector;->SeedCorrelationVector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    iput-boolean v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    return-void
.end method

.method public IsValid(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "^[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/]{16}(.[0-9]+)+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public SetValue(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/CorrelationVector;->IsValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    iput-boolean v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set invalid correlation vector value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
