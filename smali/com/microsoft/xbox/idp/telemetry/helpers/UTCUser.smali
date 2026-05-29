.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT:Z = true

.field private static isSilent:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIsSilent(Z)V
    .registers 1

    sput-boolean p0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->isSilent:Z

    return-void
.end method

.method public static trackCancel(Ljava/lang/CharSequence;)V
    .registers 5

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserCancel - User canceled"

    if-eqz v1, :cond_0

    :try_start_0
    const-string v3, "canceledPage"

    invoke-virtual {v0, v3, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, p0, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v2, p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    const-string v0, "UTCUser.trackCancel"

    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackMSACancel(Ljava/lang/CharSequence;Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V
    .registers 6

    :try_start_0
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v1, "isSilent"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "job"

    invoke-virtual {v0, p2, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "source"

    invoke-virtual {v0, p1, p3}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "MSA - Cancel"

    invoke-static {p1, p0, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCUser.trackMSACancel"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackSignout(Ljava/lang/CharSequence;)V
    .registers 4

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    sget-boolean v1, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->isSilent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isSilent"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Signout - User signed out"

    invoke-static {v1, p0, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->isSilent:Z

    return-void
.end method
