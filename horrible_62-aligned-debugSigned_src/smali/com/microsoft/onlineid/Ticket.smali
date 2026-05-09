.class public Lcom/microsoft/onlineid/Ticket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _expiry:Ljava/util/Date;

.field private final _scope:Lcom/microsoft/onlineid/ISecurityScope;

.field private final _value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/ISecurityScope;Ljava/util/Date;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expiry"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    iput-object p2, p0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    iput-object p3, p0, Lcom/microsoft/onlineid/Ticket;->_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/microsoft/onlineid/Ticket;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/microsoft/onlineid/Ticket;

    iget-object v1, p0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    iget-object v2, p1, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    iget-object v2, p1, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/onlineid/Ticket;->_value:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/onlineid/Ticket;->_value:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method public getExpiry()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    return-object v0
.end method

.method public getScope()Lcom/microsoft/onlineid/ISecurityScope;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/Ticket;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/microsoft/onlineid/Ticket;->_value:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Ticket{scope: "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
