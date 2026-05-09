.class public Lcom/microsoft/onlineid/internal/sso/SsoService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SsoServiceIntent:Ljava/lang/String; = "com.microsoft.msa.action.SSO_SERVICE"


# instance fields
.field private final _firstInstallTime:J

.field private final _packageName:Ljava/lang/String;

.field private final _sdkVersion:Ljava/lang/String;

.field private final _ssoVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    iput p2, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_firstInstallTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    iput p2, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    iput-wide p4, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_firstInstallTime:J

    return-void
.end method


# virtual methods
.method public getFirstInstallTime()J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_firstInstallTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoVersion()I
    .locals 1

    iget v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "["

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": sso "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sdk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    const-string v2, "]"

    .line 3
    invoke-static {v0, v1, v2}, La/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
