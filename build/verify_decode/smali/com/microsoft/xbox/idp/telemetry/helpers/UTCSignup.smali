.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignup;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackClaimGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    :cond_0
    const-string p0, "Signup - Claim gamertag"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackClearGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    :cond_0
    const-string p0, "Signup - Clear gamertag text"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackPageView(Ljava/lang/CharSequence;)V
    .locals 1

    :try_start_0
    const-string v0, "Sign up view"

    invoke-static {v0, p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackSearchGamerTag(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    :cond_0
    const-string p0, "Signup - Search for gamertag"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trackSignInWithDifferentUser(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    :cond_0
    const-string p0, "Signup - Signin with different user"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
