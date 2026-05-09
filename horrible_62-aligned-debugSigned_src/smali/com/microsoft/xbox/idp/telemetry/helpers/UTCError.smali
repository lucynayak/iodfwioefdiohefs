.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLIENTERRORVERSION:I = 0x1

.field private static final FAILURE:Ljava/lang/String; = "Client Error Type - Failure"

.field private static final MSACANCEL:Ljava/lang/String; = "Client Error Type - MSA canceled"

.field private static final SERVICEERRORVERSION:I = 0x1

.field private static final SIGNEDOUT:Ljava/lang/String; = "Client Error Type - Signed out"

.field private static final UINEEDEDERROR:Ljava/lang/String; = "Client Error Type - UI Needed"

.field private static final USERCANCEL:Ljava/lang/String; = "Client Error Type - User canceled"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackClose(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .registers 2

    :try_start_0
    const-string p0, "Errors - Close error screen"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackClose"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackException(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "%s:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorText(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v2, p0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_2

    aget-object v4, p0, v2

    if-eqz v4, :cond_0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v5

    const-string p1, "%s;%s"

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0xc8

    if-le v4, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setCallStack(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V

    :cond_3
    return-void
.end method

.method public static trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;J)V
    .registers 9

    const-string v0, "Client Error Type - Failure"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "job"

    invoke-virtual {v2, p1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "source"

    invoke-virtual {v2, p0, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, v1

    const-string v3, "%s"

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorCode(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object p2

    invoke-virtual {p0, p2}, LMicrosoft/Telemetry/Data;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p1

    const/4 p1, 0x2

    aput-object v2, p2, p1

    const-string p1, "Error:%s, errorCode:%s, additionalInfo:%s"

    invoke-static {p1, p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackFailure"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;Ljava/lang/Exception;)V
    .registers 8

    const-string v0, "Client Error Type - Failure"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "job"

    invoke-virtual {v2, p1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "source"

    invoke-virtual {v2, p0, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/4 p2, 0x1

    :try_start_1
    invoke-static {p2, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object p3

    invoke-virtual {p0, p3}, LMicrosoft/Telemetry/Data;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    const-string p3, "Error:%s, exception:%s, additionalInfo:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p1, v3, p2

    const/4 p1, 0x2

    aput-object v2, v3, p1

    invoke-static {p3, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackFailure"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackGoToEnforcement(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .registers 2

    :try_start_0
    const-string p0, "Errors - View enforcement site"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackGoToEnforcement"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackMSACancel(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V
    .registers 7

    const-string v0, "Client Error Type - MSA canceled"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "job"

    invoke-virtual {v2, p1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "source"

    invoke-virtual {v2, p0, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object p2

    invoke-virtual {p0, p2}, LMicrosoft/Telemetry/Data;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    const-string p2, "Error:%s, additionalInfo:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object v2, v3, p1

    invoke-static {p2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackUserCancel"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackPageView(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->getErrorScreen(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackPageView"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackRightButton(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .registers 2

    :try_start_0
    const-string p0, "Errors - Ok"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackRightButton"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v2, "pageName"

    invoke-virtual {v1, v2, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "%s"

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/HttpError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/HttpError;->getErrorCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    const-string v4, "UNKNOWN"

    const-string p2, "0"

    :goto_0
    :try_start_2
    new-instance v5, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;

    invoke-direct {v5}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;-><init>()V

    invoke-virtual {v5, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->setErrorName(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->setErrorText(Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v5, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->setPageName(Ljava/lang/String;)V

    new-array p0, v3, [Ljava/lang/Object;

    aput-object p2, p0, v0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->setErrorCode(Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object p0

    invoke-virtual {v5, p0}, LMicrosoft/Telemetry/Data;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    const-string p0, "Service Error:%s, errorCode:%s, additionalInfo:%s"

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "Client Error Type - Failure"

    aput-object v2, p1, v0

    aput-object p2, p1, v3

    const/4 p2, 0x2

    aput-object v1, p1, p2

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackServiceFailure"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackSignedOut(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V
    .registers 7

    const-string v0, "Client Error Type - Signed out"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "job"

    invoke-virtual {v2, p1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "source"

    invoke-virtual {v2, p0, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object p2

    invoke-virtual {p0, p2}, LMicrosoft/Telemetry/Data;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    const-string p2, "Error:%s, additionalInfo:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object v2, v3, p1

    invoke-static {p2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackSignedOut"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackTryAgain(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .registers 2

    :try_start_0
    const-string p0, "Errors - Try again"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackTryAgain"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackUINeeded(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V
    .registers 7

    const-string v0, "Client Error Type - UI Needed"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "job"

    invoke-virtual {v2, p1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "source"

    invoke-virtual {v2, p0, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object p2

    invoke-virtual {p0, p2}, LMicrosoft/Telemetry/Data;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    const-string p2, "Error:%s, additionalInfo:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object v2, v3, p1

    invoke-static {p2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackUINeeded"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackUserCancel(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V
    .registers 7

    const-string v0, "Client Error Type - User canceled"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "job"

    invoke-virtual {v2, p1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "source"

    invoke-virtual {v2, p0, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object p2

    invoke-virtual {p0, p2}, LMicrosoft/Telemetry/Data;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    const-string p2, "Error:%s, additionalInfo:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object v2, v3, p1

    invoke-static {p2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackUserCancel"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
