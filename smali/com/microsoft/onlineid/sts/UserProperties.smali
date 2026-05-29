.class public Lcom/microsoft/onlineid/sts/UserProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;
    }
.end annotation


# instance fields
.field private final _userProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/microsoft/onlineid/sts/UserProperties;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/microsoft/onlineid/sts/UserProperties;

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    iget-object p1, p1, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public get(Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public has(Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;)Z
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public put(Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/UserProperties;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
