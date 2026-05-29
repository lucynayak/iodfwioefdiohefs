.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;
    }
.end annotation


# static fields
.field public static final UNKNOWNPAGE:Ljava/lang/String; = "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogEvent(LMicrosoft/Telemetry/Base;)V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getCll()Lcom/microsoft/cll/android/AndroidCll;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/cll/android/AndroidCll;->log(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "CLL not initialized.  Is null"

    invoke-static {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getErrorScreen(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$1;->$SwitchMap$com$microsoft$xbox$idp$ui$ErrorActivity$ErrorScreen:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Unknown"

    aput-object v1, p0, v0

    const-string v0, "%sErrorScreen"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Offline error view"

    return-object p0

    :cond_1
    const-string p0, "Create error view"

    return-object p0

    :cond_2
    const-string p0, "Generic error view"

    return-object p0

    :cond_3
    const-string p0, "Banned error view"

    return-object p0
.end method
