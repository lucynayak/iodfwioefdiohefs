.class Lcom/microsoft/xbox/idp/services/EndpointsDnet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/idp/services/Endpoints;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accounts()Ljava/lang/String;
    .registers 2

    const-string v0, "https://accounts.dnet.xboxlive.com"

    return-object v0
.end method

.method public privacy()Ljava/lang/String;
    .registers 2

    const-string v0, "https://privacy.dnet.xboxlive.com"

    return-object v0
.end method

.method public profile()Ljava/lang/String;
    .registers 2

    const-string v0, "https://profile.dnet.xboxlive.com"

    return-object v0
.end method

.method public userAccount()Ljava/lang/String;
    .registers 2

    const-string v0, "https://accountstroubleshooter.dnet.xboxlive.com"

    return-object v0
.end method

.method public userManagement()Ljava/lang/String;
    .registers 2

    const-string v0, "https://user.mgt.dnet.xboxlive.com"

    return-object v0
.end method
