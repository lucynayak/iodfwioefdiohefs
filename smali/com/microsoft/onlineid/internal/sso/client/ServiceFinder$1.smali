.class final Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/microsoft/onlineid/internal/sso/SsoService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/microsoft/onlineid/internal/sso/SsoService;Lcom/microsoft/onlineid/internal/sso/SsoService;)I
    .registers 5

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.microsoft.msa.authenticator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getSsoVersion()I

    move-result v0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getSsoVersion()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getFirstInstallTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getFirstInstallTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    :cond_2
    move p1, v0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/microsoft/onlineid/internal/sso/SsoService;

    check-cast p2, Lcom/microsoft/onlineid/internal/sso/SsoService;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder$1;->compare(Lcom/microsoft/onlineid/internal/sso/SsoService;Lcom/microsoft/onlineid/internal/sso/SsoService;)I

    move-result p1

    return p1
.end method
