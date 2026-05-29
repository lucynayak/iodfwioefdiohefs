.class public abstract Lcom/microsoft/onlineid/ui/AbstractListAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field public _items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public _observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_observers:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    return-void
.end method

.method private fireChanged()V
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->onChanged()V

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_observers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onChanged()V
    .registers 1

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContent(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->fireChanged()V

    return-void
.end method

.method public varargs setContent([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->fireChanged()V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
