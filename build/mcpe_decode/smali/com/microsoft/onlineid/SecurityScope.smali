.class public Lcom/microsoft/onlineid/SecurityScope;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/SecurityScope;->_target:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/SecurityScope;->_policy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/microsoft/onlineid/ISecurityScope;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/microsoft/onlineid/ISecurityScope;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/SecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/SecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/Strings;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_policy:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_target:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/SecurityScope;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_oAuthString:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/onlineid/SecurityScope;->_target:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/microsoft/onlineid/SecurityScope;->_policy:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "service::%s::%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_oAuthString:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_oAuthString:Ljava/lang/String;

    return-object v0
.end method
