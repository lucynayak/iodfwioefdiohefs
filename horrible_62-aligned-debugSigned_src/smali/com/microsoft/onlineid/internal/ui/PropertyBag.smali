.class public Lcom/microsoft/onlineid/internal/ui/PropertyBag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    }
.end annotation


# instance fields
.field private final _values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;",
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

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->_values:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public remove(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->_values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
