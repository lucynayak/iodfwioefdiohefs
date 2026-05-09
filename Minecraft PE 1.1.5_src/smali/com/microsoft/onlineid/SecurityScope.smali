.class public Lcom/microsoft/onlineid/SecurityScope;
.super Ljava/lang/Object;
.source "SecurityScope.java"

# interfaces
.implements Lcom/microsoft/onlineid/ISecurityScope;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _oAuthString:Ljava/lang/String;

.field private final _policy:Ljava/lang/String;

.field private final _target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/microsoft/onlineid/SecurityScope;->_target:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/microsoft/onlineid/SecurityScope;->_policy:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    if-ne p0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    instance-of v3, p1, Lcom/microsoft/onlineid/ISecurityScope;

    if-nez v3, :cond_2

    move v1, v2

    .line 75
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/microsoft/onlineid/ISecurityScope;

    .line 80
    .local v0, "scope":Lcom/microsoft/onlineid/ISecurityScope;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/SecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/microsoft/onlineid/SecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Strings;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getPolicy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_policy:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_target:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/microsoft/onlineid/SecurityScope;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_oAuthString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "service::%s::%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/microsoft/onlineid/SecurityScope;->_target:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/microsoft/onlineid/SecurityScope;->_policy:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_oAuthString:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_oAuthString:Ljava/lang/String;

    return-object v0
.end method
