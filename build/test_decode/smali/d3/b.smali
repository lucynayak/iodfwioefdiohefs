.class public final Ld3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/b$a;,
        Ld3/b$b;,
        Ld3/b$c;,
        Ld3/b$d;
    }
.end annotation


# instance fields
.field public a:Ld3/e;

.field public b:Ld3/s;

.field public c:Ld3/o;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld3/s;

    invoke-direct {v0, p1}, Ld3/s;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v0, p0, Ld3/b;->b:Ld3/s;

    new-instance v0, Ld3/o;

    invoke-direct {v0}, Ld3/o;-><init>()V

    iput-object v0, p0, Ld3/b;->c:Ld3/o;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final next()Ld3/e;
    .locals 6

    iget-object v0, p0, Ld3/b;->a:Ld3/e;

    if-nez v0, :cond_6

    .line 1
    iget-object v0, p0, Ld3/b;->b:Ld3/s;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld3/b$a;

    invoke-direct {v0}, Ld3/b$a;-><init>()V

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, Ld3/b;->c:Ld3/o;

    invoke-virtual {v2}, Ld3/e0;->A()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    if-eq v1, v2, :cond_2

    if-eqz v2, :cond_1

    iget-object v0, p0, Ld3/b;->c:Ld3/o;

    invoke-virtual {v0}, Ld3/e0;->pop()Ljava/lang/Object;

    .line 4
    :cond_1
    new-instance v0, Ld3/b$a;

    invoke-direct {v0}, Ld3/b$a;-><init>()V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v1, p0, Ld3/b;->b:Ld3/s;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Ld3/b;->c:Ld3/o;

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Ld3/b$c;

    invoke-direct {v1, v0}, Ld3/b$c;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, v1, Ld3/b$c;->b:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 11
    new-instance v5, Ld3/b$b;

    invoke-direct {v5, v4}, Ld3/b$b;-><init>(Lorg/w3c/dom/Node;)V

    .line 12
    invoke-virtual {v5}, Ld3/b$b;->d()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_4
    new-instance v1, Ld3/b$d;

    invoke-direct {v1, v0}, Ld3/b$d;-><init>(Lorg/w3c/dom/Node;)V

    :cond_5
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_6
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Ld3/b;->a:Ld3/e;

    return-object v0
.end method

.method public final peek()Ld3/e;
    .locals 1

    iget-object v0, p0, Ld3/b;->a:Ld3/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld3/b;->next()Ld3/e;

    move-result-object v0

    iput-object v0, p0, Ld3/b;->a:Ld3/e;

    :cond_0
    iget-object v0, p0, Ld3/b;->a:Ld3/e;

    return-object v0
.end method
