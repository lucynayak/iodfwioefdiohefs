.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCIntroducing;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackDone(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/microsoft/xbox/idp/model/Profile$User;->id:Ljava/lang/String;

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    :cond_0
    const-string p0, "Introducing - Done"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCIntroducing.trackDone"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackPageView(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/microsoft/xbox/idp/model/Profile$User;->id:Ljava/lang/String;

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    :cond_0
    const-string p0, "Introducing view"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCIntroducing.trackPageView"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
