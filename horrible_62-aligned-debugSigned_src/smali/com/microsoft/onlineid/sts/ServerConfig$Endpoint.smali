.class public final enum Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/internal/configuration/ISetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Endpoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;",
        ">;",
        "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ApproveSession:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ConnectMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ConnectPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum DeviceProvision:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ListSessions:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ManageApprover:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ManageLoginKeys:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum Refresh:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum RemoteConnect:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignInMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignInPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignupMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignupPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignupWReplyMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignupWReplyPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum Sts:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;


# instance fields
.field private final _defaultValue:Ljava/net/URL;

.field private final _settingName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 21

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Int:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    :goto_0
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const/4 v2, 0x0

    const-string v3, "Configuration"

    const-string v4, "ConfigUrl"

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v2, "https://login."

    .line 1
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":443/RST2.srf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "Sts"

    const-string v6, "WLIDSTS_WCF"

    invoke-direct {v0, v5, v4, v6, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Sts:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v3, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 3
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/ppsecure/deviceaddcredential.srf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const-string v6, "DeviceProvision"

    const-string v7, "DeviceAddService"

    invoke-direct {v3, v6, v5, v7, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->DeviceProvision:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v4, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 5
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/ManageApprover.srf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const-string v7, "ManageApprover"

    invoke-direct {v4, v7, v6, v7, v5}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ManageApprover:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v5, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 7
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/ManageLoginKeys.srf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const-string v8, "ManageLoginKeys"

    invoke-direct {v5, v8, v7, v8, v6}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ManageLoginKeys:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v6, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 9
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 10
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/ListSessions.srf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    const-string v9, "ListSessions"

    invoke-direct {v6, v9, v8, v9, v7}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ListSessions:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v7, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 11
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 12
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/ApproveSession.srf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    const-string v10, "ApproveSession"

    invoke-direct {v7, v10, v9, v10, v8}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ApproveSession:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v8, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 13
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 14
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/ppsecure/InlineConnect.srf?id=80601"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    const-string v11, "ConnectMsa"

    const-string v12, "CPConnect"

    invoke-direct {v8, v11, v10, v12, v9}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v9, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 15
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 16
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/ppsecure/InlineConnect.srf?id=80604"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    const-string v12, "ConnectPartner"

    const-string v13, "CompleteAccountConnect"

    invoke-direct {v9, v12, v11, v13, v10}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v10, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 17
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 18
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/ppsecure/InlineLogin.srf?id=80601"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x9

    const-string v13, "SignInMsa"

    const-string v14, "CPSignInAuthUp"

    invoke-direct {v10, v13, v12, v14, v11}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignInMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v11, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 19
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 20
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/ppsecure/InlineLogin.srf?id=80604"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xa

    const-string v14, "SignInPartner"

    const-string v15, "CompleteAccountSignIn"

    invoke-direct {v11, v14, v13, v15, v12}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignInPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v12, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v13, "https://signup."

    .line 21
    invoke-static {v13}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 22
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/signup?id=80601"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb

    move-object/from16 v16, v11

    const-string v11, "SignupMsa"

    invoke-direct {v12, v11, v15, v11, v14}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v11, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 23
    invoke-static {v13}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 24
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/signup?id=80604"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc

    const-string v15, "SignupPartner"

    invoke-direct {v11, v15, v14, v15, v13}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v13, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 25
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 26
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/ppsecure/InlineLogin.srf?id=80601&actionid=7"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "SignupWReplyMsa"

    move-object/from16 v17, v11

    const/16 v11, 0xd

    invoke-direct {v13, v15, v11, v15, v14}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v11, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 27
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 28
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/ppsecure/InlineLogin.srf?id=80604&actionid=7"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "SignupWReplyPartner"

    move-object/from16 v18, v13

    const-string v13, "SignupWReplyPartner"

    move-object/from16 v19, v12

    const/16 v12, 0xe

    invoke-direct {v11, v15, v12, v13, v14}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v12, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const/16 v13, 0xf

    const-string v14, "https://account."

    .line 29
    invoke-static {v14}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 30
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Refresh"

    move-object/from16 v20, v11

    const-string v11, "URL_AccountSettings"

    invoke-direct {v12, v15, v13, v11, v14}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Refresh:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    new-instance v11, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const/16 v13, 0x10

    .line 31
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 32
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/RemoteConnectClientAuth.srf"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v14, "RemoteConnect"

    const-string v15, "RemoteConnect"

    invoke-direct {v11, v14, v13, v15, v2}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->RemoteConnect:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const/16 v2, 0x11

    new-array v2, v2, [Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const/4 v13, 0x0

    aput-object v1, v2, v13

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v4, v2, v0

    const/4 v0, 0x4

    aput-object v5, v2, v0

    const/4 v0, 0x5

    aput-object v6, v2, v0

    const/4 v0, 0x6

    aput-object v7, v2, v0

    const/4 v0, 0x7

    aput-object v8, v2, v0

    const/16 v0, 0x8

    aput-object v9, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v16, v2, v0

    const/16 v0, 0xb

    aput-object v19, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v20, v2, v0

    const/16 v0, 0xf

    aput-object v12, v2, v0

    const/16 v0, 0x10

    aput-object v11, v2, v0

    sput-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->_settingName:Ljava/lang/String;

    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->_defaultValue:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Default value for ServerConfig.Url with name \'"

    const-string p4, "\' is not a valid URL."

    .line 1
    invoke-static {p2, p3, p4}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getDefaultValue()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->_defaultValue:Ljava/net/URL;

    return-object v0
.end method

.method public getSettingName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->_settingName:Ljava/lang/String;

    return-object v0
.end method
