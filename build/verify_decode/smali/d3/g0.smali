.class public final Ld3/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/g0$a;,
        Ld3/g0$b;,
        Ld3/g0$c;,
        Ld3/g0$d;
    }
.end annotation


# instance fields
.field public a:Ld3/e;

.field public b:Ljavax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/g0;->b:Ljavax/xml/stream/XMLEventReader;

    return-void
.end method


# virtual methods
.method public final a(Ld3/g0$c;)Ld3/g0$c;
    .locals 3

    invoke-virtual {p1}, Ld3/g0$c;->A()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Attribute;

    .line 1
    new-instance v2, Ld3/g0$b;

    invoke-direct {v2, v1}, Ld3/g0$b;-><init>(Ljavax/xml/stream/events/Attribute;)V

    .line 2
    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final b()Ld3/e;
    .locals 2

    iget-object v0, p0, Ld3/g0;->b:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1
    new-instance v1, Ld3/g0$c;

    invoke-direct {v1, v0}, Ld3/g0$c;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ld3/g0;->a(Ld3/g0$c;)Ld3/g0$c;

    :cond_0
    return-object v1

    .line 2
    :cond_1
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    new-instance v1, Ld3/g0$d;

    invoke-direct {v1, v0}, Ld3/g0$d;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    return-object v1

    .line 4
    :cond_2
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    new-instance v0, Ld3/g0$a;

    invoke-direct {v0}, Ld3/g0$a;-><init>()V

    return-object v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Ld3/g0;->b()Ld3/e;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final next()Ld3/e;
    .locals 2

    iget-object v0, p0, Ld3/g0;->a:Ld3/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld3/g0;->b()Ld3/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ld3/g0;->a:Ld3/e;

    return-object v0
.end method

.method public final peek()Ld3/e;
    .locals 1

    iget-object v0, p0, Ld3/g0;->a:Ld3/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld3/g0;->next()Ld3/e;

    move-result-object v0

    iput-object v0, p0, Ld3/g0;->a:Ld3/e;

    :cond_0
    iget-object v0, p0, Ld3/g0;->a:Ld3/e;

    return-object v0
.end method
