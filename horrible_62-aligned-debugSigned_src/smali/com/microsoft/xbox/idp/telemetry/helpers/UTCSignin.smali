.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static activityTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentActivity()Ljava/lang/CharSequence;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->activityTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static setCurrentActivity(Ljava/lang/CharSequence;)V
    .registers 1

    sput-object p0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->activityTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public static trackAccountAcquired(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    :try_start_0
    new-instance p2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v0, "cid"

    invoke-virtual {p2, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "job"

    invoke-virtual {p2, p1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "source"

    sget-object p1, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-virtual {p2, p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "Signin - Account acquired"

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->getCurrentActivity()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCSignin.trackAccountAcquired"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackMSASigninStart(Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .registers 5

    :try_start_0
    invoke-static {p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->setCurrentActivity(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v1, "cid"

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "MSA - Start"

    invoke-static {p0, p2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCSignin.trackMSASigninStart"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackMSASigninSuccess(Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .registers 5

    :try_start_0
    invoke-static {p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->setCurrentActivity(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v1, "cid"

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "MSA - Success"

    invoke-static {p0, p2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCSignin.trackMSASigninFinish"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackPageView(Ljava/lang/CharSequence;)V
    .registers 2

    :try_start_0
    const-string v0, "Sign in view"

    invoke-static {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "UTCSignin.trackPageView"

    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackSignin(Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .registers 5

    :try_start_0
    invoke-static {p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->setCurrentActivity(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v1, "cid"

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "Signin - Sign in"

    invoke-static {p0, p2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCSignin.trackSignin"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackTicketAcquired(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    :try_start_0
    new-instance p2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v0, "cid"

    invoke-virtual {p2, v0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "job"

    invoke-virtual {p2, p1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "source"

    sget-object p1, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-virtual {p2, p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "Signin - Ticket acquired"

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->getCurrentActivity()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCSignin.trackTicketAcquired"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackXBLSigninStart(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->setCurrentActivity(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v1, "cid"

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "XboxAccount - Start"

    invoke-static {p0, p1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCSignin.trackXBLSigninStart"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackXBLSigninSuccess(Ljava/lang/String;Ljava/lang/CharSequence;Z)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->setCurrentActivity(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v1, "cid"

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "createdXBLAccount"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "XboxAccount - Success"

    invoke-static {p0, p1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCSignin.trackXBLSigninSuccess"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
