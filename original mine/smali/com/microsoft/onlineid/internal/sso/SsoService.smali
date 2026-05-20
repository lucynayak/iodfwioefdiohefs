.class public Lcom/microsoft/onlineid/internal/sso/SsoService;
.super Ljava/lang/Object;
.source "SsoService.java"


# static fields
.field public static final SsoServiceIntent:Ljava/lang/String; = "com.microsoft.msa.action.SSO_SERVICE"


# instance fields
.field private final _firstInstallTime:J

.field private final _packageName:Ljava/lang/String;

.field private final _sdkVersion:Ljava/lang/String;

.field private final _ssoVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ssoVersion"    # I
    .param p3, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    .line 30
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_firstInstallTime:J

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ssoVersion"    # I
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .param p4, "firstInstallTime"    # J

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    .line 47
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    .line 48
    iput-wide p4, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_firstInstallTime:J

    .line 49
    return-void
.end method


# virtual methods
.method public getFirstInstallTime()J
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_firstInstallTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoVersion()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": sso "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
