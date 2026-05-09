.class public Lcom/microsoft/onlineid/internal/profile/ProfileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;
    }
.end annotation


# static fields
.field public static final AppIdRequestProperty:Ljava/lang/String; = "PS-ApplicationId"

.field public static final AuthTicketRequestProperty:Ljava/lang/String; = "PS-MSAAuthTicket"

.field public static final ClientVersion:Ljava/lang/String; = "MSA Android"

.field public static final ClientVersionRequestProperty:Ljava/lang/String; = "X-ClientVersion"

.field public static final OrderedBasicNameAttributeName:Ljava/lang/String; = "PublicProfile.OrderedBasicName"

.field public static final ProfileAppId:Ljava/lang/String; = "F5EF4246-47B3-403A-885B-023BBAE0F547"

.field public static final ProfileServiceScopeInt:Lcom/microsoft/onlineid/ISecurityScope;

.field public static final ProfileServiceScopeProduction:Lcom/microsoft/onlineid/ISecurityScope;

.field public static final ProfileServiceUrlInt:Ljava/lang/String; = "https://directory.services.live-int.com/profile/mine/WLX.Profiles.IC.json"

.field public static final ProfileServiceUrlProduction:Ljava/lang/String; = "https://pf.directory.live.com/profile/mine/WLX.Profiles.IC.json"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private final _jsonParser:Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;

.field private final _serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

.field private final _transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/microsoft/onlineid/SecurityScope;

    const-string v1, "ssl.live.com"

    const-string v2, "mbi_ssl"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->ProfileServiceScopeProduction:Lcom/microsoft/onlineid/ISecurityScope;

    new-instance v0, Lcom/microsoft/onlineid/SecurityScope;

    const-string v1, "ssl.live-int.com"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->ProfileServiceScopeInt:Lcom/microsoft/onlineid/ISecurityScope;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_applicationContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_jsonParser:Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ClockSkewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    new-instance v0, Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_jsonParser:Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    new-instance v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    new-instance v0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method


# virtual methods
.method public createUpdateProfileRequest(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 5

    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_applicationContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_applicationContext:Landroid/content/Context;

    const-class v4, Lcom/microsoft/onlineid/internal/MsaService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.microsoft.onlineid.internal.UPDATE_PROFILE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/configuration/Environment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->ProfileServiceScopeProduction:Lcom/microsoft/onlineid/ISecurityScope;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->ProfileServiceScopeInt:Lcom/microsoft/onlineid/ISecurityScope;

    :goto_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, p2, v3}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Z)Lcom/microsoft/onlineid/Ticket;

    move-result-object p2

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "https://pf.directory.live.com/profile/mine/WLX.Profiles.IC.json"

    goto :goto_1

    :cond_1
    const-string v0, "https://directory.services.live-int.com/profile/mine/WLX.Profiles.IC.json"

    :goto_1
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->openGetRequest(Ljava/net/URL;)V

    const-string v0, "PS-ApplicationId"

    const-string v3, "F5EF4246-47B3-403A-885B-023BBAE0F547"

    invoke-virtual {v1, v0, v3}, Lcom/microsoft/onlineid/internal/transport/Transport;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PS-MSAAuthTicket"

    invoke-virtual {p2}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lcom/microsoft/onlineid/internal/transport/Transport;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-ClientVersion"

    const-string v0, "MSA Android"

    invoke-virtual {v1, p2, v0}, Lcom/microsoft/onlineid/internal/transport/Transport;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance p2, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p2, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_jsonParser:Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;

    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;->parseDisplayName(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setDisplayName(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setTimeOfLastProfileUpdate(J)V

    iget-object p2, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p2, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance p1, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    const-string p2, "Account was deleted before operation could be completed."

    invoke-direct {p1, p2}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    throw p1
.end method
