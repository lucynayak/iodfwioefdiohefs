.class public Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AccountPickerBodyKey:Ljava/lang/String; = "com.microsoft.onlineid.account_picker_body"

.field public static final ActivityResultTypeKey:Ljava/lang/String; = "com.microsoft.onlineid.result_type"

.field public static final AllUsersKey:Ljava/lang/String; = "com.microsoft.onlineid.all_users"

.field public static final BackupDeviceKey:Ljava/lang/String; = "com.microsoft.onlineid.backup_device"

.field public static final BackupUsersKey:Ljava/lang/String; = "com.microsoft.onlineid.backup_users"

.field public static final CidExclusionListKey:Ljava/lang/String; = "com.microsoft.onlineid.cid_exclusion_list"

.field public static final ClientAppVersionNameKey:Ljava/lang/String; = "com.microsoft.onlineid.client_app_version_name"

.field public static final ClientConfigLastDownloadedTimeKey:Ljava/lang/String; = "com.microsoft.onlineid.client_config_last_downloaded_time"

.field public static final ClientConfigVersionKey:Ljava/lang/String; = "com.microsoft.onlineid.client_config_version"

.field public static final ClientFlightsKey:Ljava/lang/String; = "com.microsoft.onlineid.client_flights"

.field public static final ClientPackageNameKey:Ljava/lang/String; = "com.microsoft.onlineid.client_package_name"

.field public static final ClientSdkVersionKey:Ljava/lang/String; = "com.microsoft.onlineid.client_sdk_version"

.field public static final ClientSsoVersionKey:Ljava/lang/String; = "com.microsoft.onlineid.client_sso_version"

.field public static final ClientStateBundleKey:Ljava/lang/String; = "com.microsoft.onlineid.client_state"

.field public static final CobrandingIdKey:Ljava/lang/String; = "com.microsoft.onlineid.cobranding_id"

.field public static final DeviceDATokenKey:Ljava/lang/String; = "com.microsoft.onlineid.device_datoken"

.field public static final DeviceDATokenObtainedTime:Ljava/lang/String; = "com.microsoft.onlineid.device_datoken_obtained_time"

.field public static final DevicePasswordKey:Ljava/lang/String; = "com.microsoft.onlineid.device_password"

.field public static final DeviceProvisionTimeKey:Ljava/lang/String; = "com.microsoft.onlineid.device_provision_time"

.field public static final DevicePuidKey:Ljava/lang/String; = "com.microsoft.onlineid.device_puid"

.field public static final DeviceSessionKeyBase64Key:Ljava/lang/String; = "com.microsoft.onlineid.device_session_key_base64"

.field public static final DeviceUsernameKey:Ljava/lang/String; = "com.microsoft.onlineid.device_username"

.field public static final ErrorCodeKey:Ljava/lang/String; = "com.microsoft.onlineid.error_code"

.field public static final ErrorMessageKey:Ljava/lang/String; = "com.microsoft.onlineid.error_message"

.field public static final IsRegisteredForNgc:Ljava/lang/String; = "com.microsoft.onlineid.registered_for_ngc"

.field public static final IsSignedOutOfThisAppOnlyKey:Ljava/lang/String; = "com.microsoft.onlineid.signed_out_this_app_only"

.field public static final KeyPrefix:Ljava/lang/String; = "com.microsoft.onlineid."

.field public static final PreferredMembernameTypeKey:Ljava/lang/String; = "com.microsoft.onlineid.preferred_membername_type"

.field public static final PrefillUsernameKey:Ljava/lang/String; = "com.microsoft.onlineid.prefill_username"

.field public static final RedirectRequestToKey:Ljava/lang/String; = "com.microsoft.onlineid.redirect_request_to"

.field public static final RemoteConnectCodeKey:Ljava/lang/String; = "com.microsoft.onlineid.remote_connect_code"

.field public static final TicketExpirationTimeKey:Ljava/lang/String; = "com.microsoft.onlineid.ticket_expiration_time"

.field public static final TicketPolicyKey:Ljava/lang/String; = "com.microsoft.onlineid.ticket_scope_policy"

.field public static final TicketTargetKey:Ljava/lang/String; = "com.microsoft.onlineid.ticket_scope_target"

.field public static final TicketValueKey:Ljava/lang/String; = "com.microsoft.onlineid.ticket_value"

.field public static final UiResolutionIntentKey:Ljava/lang/String; = "com.microsoft.onlineid.ui_resolution_intent"

.field public static final UnauthenticatedSessionIdKey:Ljava/lang/String; = "com.microsoft.onlineid.unauth_session_id"

.field public static final UserCidKey:Ljava/lang/String; = "com.microsoft.onlineid.user_cid"

.field public static final UserDATokenKey:Ljava/lang/String; = "com.microsoft.onlineid.user_datoken"

.field public static final UserDATokenObtainedTimeKey:Ljava/lang/String; = "com.microsoft.onlineid.user_datoken_obtained_time"

.field public static final UserDisplayNameKey:Ljava/lang/String; = "com.microsoft.onlineid.user_display_name"

.field public static final UserJustAddedKey:Ljava/lang/String; = "com.microsoft.onlineid.user_just_added"

.field public static final UserPuidKey:Ljava/lang/String; = "com.microsoft.onlineid.user_puid"

.field public static final UserSessionKeyBase64Key:Ljava/lang/String; = "com.microsoft.onlineid.user_session_key_base64"

.field public static final UserUsernameKey:Ljava/lang/String; = "com.microsoft.onlineid.user_username"

.field public static final WebFlowTelemetryAllEventsCapturedKey:Ljava/lang/String; = "com.microsoft.onlineid.web_telemetry_all_events_captured"

.field public static final WebFlowTelemetryEventsKey:Ljava/lang/String; = "com.microsoft.onlineid.web_telemetry_events"

.field public static final WebFlowTelemetryPrecachingEnabledKey:Ljava/lang/String; = "com.microsoft.onlineid.web_telemetry_precaching_enabled"

.field public static final WebFlowTelemetryRequestedKey:Ljava/lang/String; = "com.microsoft.onlineid.web_telemetry_requested"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .registers 5

    :try_start_0
    new-instance v0, Lcom/microsoft/onlineid/sts/DeviceCredentials;

    const-string v1, "com.microsoft.onlineid.device_username"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.device_password"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/DeviceCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/microsoft/onlineid/sts/DAToken;

    const-string v2, "com.microsoft.onlineid.device_datoken"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.device_session_key_base64"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/microsoft/onlineid/sts/DAToken;-><init>(Ljava/lang/String;[B)V

    new-instance v2, Lcom/microsoft/onlineid/sts/DeviceIdentity;

    const-string v3, "com.microsoft.onlineid.device_puid"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0, v1}, Lcom/microsoft/onlineid/sts/DeviceIdentity;-><init>(Lcom/microsoft/onlineid/sts/DeviceCredentials;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v1, "Could not create DeviceIdentity from Bundle."

    invoke-direct {v0, v1, p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deviceAccountToBundle(Lcom/microsoft/onlineid/sts/DeviceIdentity;)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getPuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.device_puid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getCredentials()Lcom/microsoft/onlineid/sts/DeviceCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.device_username"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.device_password"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DAToken;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.device_datoken"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DAToken;->getSessionKey()[B

    move-result-object p0

    const-string v1, "com.microsoft.onlineid.device_session_key_base64"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->getCode()I

    move-result p0

    const-string v1, "com.microsoft.onlineid.error_code"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "com.microsoft.onlineid.error_message"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static exceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/exception/AuthenticationException;
    .registers 5

    const-string v0, "com.microsoft.onlineid.error_code"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "com.microsoft.onlineid.error_message"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->get(I)Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    move-result-object v0

    sget-object v2, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller$1;->$SwitchMap$com$microsoft$onlineid$internal$sso$SsoServiceError:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {p0, v1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;

    invoke-direct {p0, v1}, Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;

    const-string v2, "com.microsoft.onlineid.redirect_request_to"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance p0, Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;

    invoke-direct {p0, v1}, Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/microsoft/onlineid/sts/exception/StsException;

    new-instance v0, Lcom/microsoft/onlineid/sts/StsError;

    new-instance v2, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;-><init>(I)V

    invoke-direct {v0, v2}, Lcom/microsoft/onlineid/sts/StsError;-><init>(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)V

    invoke-direct {p0, v1, v0}, Lcom/microsoft/onlineid/sts/exception/StsException;-><init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/microsoft/onlineid/exception/NetworkException;

    invoke-direct {p0, v1}, Lcom/microsoft/onlineid/exception/NetworkException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    invoke-direct {p0, v1}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/microsoft/onlineid/exception/InternalException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/microsoft/onlineid/exception/InternalException;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/StorageException;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException;

    invoke-direct {p0, v1}, Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException;

    invoke-direct {p0, v1}, Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    new-instance p0, Lcom/microsoft/onlineid/exception/InternalException;

    invoke-direct {p0, v1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v0, "Neither error_code nor error_message was found in the given Bundle."

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static exceptionToBundle(Ljava/lang/Exception;)Landroid/os/Bundle;
    .registers 4

    :try_start_0
    throw p0
    :try_end_0
    .catch Lcom/microsoft/onlineid/internal/sso/exception/ClientNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/microsoft/onlineid/internal/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/microsoft/onlineid/sts/exception/StsException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/microsoft/onlineid/sts/exception/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/microsoft/onlineid/internal/sso/MasterRedirectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->Unknown:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->MasterRedirectException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->errorToBundle(Lcom/microsoft/onlineid/internal/sso/SsoServiceError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;->getRedirectRequestTo()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.microsoft.onlineid.redirect_request_to"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_2
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientConfigUpdateNeededException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_3
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->InvalidResponseException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    goto :goto_1

    :catch_4
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->StsException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    goto :goto_1

    :catch_5
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->NetworkException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    goto :goto_1

    :catch_6
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->AccountNotFound:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    goto :goto_1

    :catch_7
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->IllegalArgumentException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    goto :goto_1

    :catch_8
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->StorageException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    goto :goto_1

    :catch_9
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->UnsupportedClientVersion:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    goto :goto_1

    :catch_a
    move-exception p0

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    goto :goto_1
.end method

.method public static hasError(Landroid/os/Bundle;)Z
    .registers 3

    const-string v0, "com.microsoft.onlineid.error_code"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "com.microsoft.onlineid.error_message"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static hasLimitedUserAccount(Landroid/os/Bundle;)Z
    .registers 2

    const-string v0, "com.microsoft.onlineid.user_puid"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.user_cid"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.user_username"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasPendingIntent(Landroid/os/Bundle;)Z
    .registers 2

    const-string v0, "com.microsoft.onlineid.ui_resolution_intent"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasScope(Landroid/os/Bundle;)Z
    .registers 4

    const-string v0, "com.microsoft.onlineid.ticket_scope_target"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.microsoft.onlineid.ticket_scope_policy"

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasTicket(Landroid/os/Bundle;)Z
    .registers 6

    const-string v0, "com.microsoft.onlineid.ticket_scope_target"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.ticket_scope_policy"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.microsoft.onlineid.ticket_expiration_time"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string v0, "com.microsoft.onlineid.ticket_value"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static limitedUserAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .registers 6

    :try_start_0
    new-instance v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    const-string v1, "com.microsoft.onlineid.user_puid"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.user_cid"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.user_username"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V

    const-string v1, "com.microsoft.onlineid.user_display_name"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setDisplayName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v1, "Could not create limited AuthenticatorUserAccount from Bundle."

    invoke-direct {v0, v1, p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static limitedUserAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.user_cid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.user_puid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.user_username"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.microsoft.onlineid.user_display_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static onlineIdConfigurationToBundle(Lcom/microsoft/onlineid/OnlineIdConfiguration;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->getPreferredSignUpMemberNameType()Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    move-result-object v1

    sget-object v2, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->None:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.preferred_membername_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->getCobrandingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.microsoft.onlineid.cobranding_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->getShouldGatherWebTelemetry()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const-string v1, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-object v0
.end method

.method public static pendingIntentFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 2

    const-string v0, "com.microsoft.onlineid.ui_resolution_intent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v0, "PendingIntent not found in Bundle."

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pendingIntentToBundle(Landroid/app/PendingIntent;)Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.microsoft.onlineid.ui_resolution_intent"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static scopeFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/ISecurityScope;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/microsoft/onlineid/SecurityScope;

    const-string v1, "com.microsoft.onlineid.ticket_scope_target"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.ticket_scope_policy"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v1, "Could not create SecurityScope from Bundle."

    invoke-direct {v0, v1, p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static scopeToBundle(Lcom/microsoft/onlineid/ISecurityScope;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.ticket_scope_target"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.microsoft.onlineid.ticket_scope_policy"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ticketFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/Ticket;
    .registers 6

    :try_start_0
    new-instance v0, Lcom/microsoft/onlineid/Ticket;

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    const-string v3, "com.microsoft.onlineid.ticket_expiration_time"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "com.microsoft.onlineid.ticket_value"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/onlineid/Ticket;-><init>(Lcom/microsoft/onlineid/ISecurityScope;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v1, "Could not create Ticket from Bundle."

    invoke-direct {v0, v1, p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ticketToBundle(Lcom/microsoft/onlineid/Ticket;)Landroid/os/Bundle;
    .registers 4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/Ticket;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->scopeToBundle(Lcom/microsoft/onlineid/ISecurityScope;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.ticket_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/Ticket;->getExpiry()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string p0, "com.microsoft.onlineid.ticket_expiration_time"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static userAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->userDATokenFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v0

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v1, "Could not create AuthenticatorUserAccount from Bundle."

    invoke-direct {v0, v1, p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static userAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;
    .registers 2

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->limitedUserAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->userDATokenToBundle(Lcom/microsoft/onlineid/sts/DAToken;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static userDATokenFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/DAToken;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/microsoft/onlineid/sts/DAToken;

    const-string v1, "com.microsoft.onlineid.user_datoken"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.user_session_key_base64"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/microsoft/onlineid/sts/DAToken;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;

    const-string v1, "Could not create DAToken from Bundle."

    invoke-direct {v0, v1, p0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static userDATokenToBundle(Lcom/microsoft/onlineid/sts/DAToken;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DAToken;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.onlineid.user_datoken"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/DAToken;->getSessionKey()[B

    move-result-object p0

    const-string v1, "com.microsoft.onlineid.user_session_key_base64"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method
