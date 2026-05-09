.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PAGEACTIONVERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    invoke-static {p0, v0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "activityTitle"

    invoke-virtual {p3, v1, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance p2, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;

    invoke-direct {p2}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;-><init>()V

    invoke-virtual {p2, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->setActionName(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->setPageName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1, p3}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v2

    invoke-virtual {p2, v2}, LMicrosoft/Telemetry/Data;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    const-string v2, "pageActions:%s, onPage:%s, additionalInfo:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p1, v3, v1

    const/4 p0, 0x2

    aput-object p3, v3, p0

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "UTCPageAction.track"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
