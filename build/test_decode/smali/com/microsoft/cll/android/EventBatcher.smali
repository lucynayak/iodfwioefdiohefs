.class public Lcom/microsoft/cll/android/EventBatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eventString:Ljava/lang/StringBuilder;

.field private final newLine:Ljava/lang/String;

.field private numberOfEvents:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->newLine:Ljava/lang/String;

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/cll/android/EventBatcher;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->newLine:Ljava/lang/String;

    iput p1, p0, Lcom/microsoft/cll/android/EventBatcher;->size:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput p1, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    return-void
.end method


# virtual methods
.method public canAddToBatch(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/microsoft/cll/android/EventBatcher;->size:I

    if-gt p1, v0, :cond_1

    iget p1, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBatchedEvents()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v2, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    return-object v0
.end method

.method public tryAddingEventToBatch(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/EventBatcher;->canAddToBatch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    return v0
.end method
