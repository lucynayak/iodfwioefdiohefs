.class public Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_CHAR_COUNT:I = 0x3a98


# instance fields
.field private _charCount:I

.field private _events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _shouldRecord:Z

.field private _wereAllEventsCaptured:Z


# direct methods
.method public constructor <init>(ZLandroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_shouldRecord:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    if-eqz p2, :cond_0

    const-string v0, "com.microsoft.onlineid.web_telemetry_events"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    const-string v0, "com.microsoft.onlineid.web_telemetry_all_events_captured"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_wereAllEventsCaptured:Z

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    iput p2, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_wereAllEventsCaptured:Z

    :cond_1
    return-void
.end method

.method private canFitEvent(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    const/16 v0, 0x3a98

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_shouldRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_shouldRecord:Z

    return v0
.end method

.method public recordEvent(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_shouldRecord:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->canFitEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_wereAllEventsCaptured:Z

    const-string v0, "Dropped web telemetry event of size: "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->getEvents()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "com.microsoft.onlineid.web_telemetry_events"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->wereAllEventsCaptured()Z

    move-result v0

    const-string v1, "com.microsoft.onlineid.web_telemetry_all_events_captured"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public wereAllEventsCaptured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_wereAllEventsCaptured:Z

    return v0
.end method
