.class public final Ld3/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/d0$a;,
        Ld3/d0$b;,
        Ld3/d0$c;,
        Ld3/d0$d;
    }
.end annotation


# instance fields
.field public a:Lorg/xmlpull/v1/XmlPullParser;

.field public b:Ld3/e;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/d0;->a:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public final a()Ld3/e;
    .registers 6

    iget-object v0, p0, Ld3/d0;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1
    new-instance v0, Ld3/d0$c;

    iget-object v1, p0, Ld3/d0;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Ld3/d0$c;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Ld3/d0;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    new-instance v3, Ld3/d0$b;

    iget-object v4, p0, Ld3/d0;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v3, v4, v2}, Ld3/d0$b;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5
    new-instance v0, Ld3/d0$d;

    iget-object v1, p0, Ld3/d0;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Ld3/d0$d;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 6
    new-instance v0, Ld3/d0$a;

    invoke-direct {v0}, Ld3/d0$a;-><init>()V

    return-object v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Ld3/d0;->a()Ld3/e;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final next()Ld3/e;
    .registers 3

    iget-object v0, p0, Ld3/d0;->b:Ld3/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld3/d0;->a()Ld3/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ld3/d0;->b:Ld3/e;

    return-object v0
.end method

.method public final peek()Ld3/e;
    .registers 2

    iget-object v0, p0, Ld3/d0;->b:Ld3/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld3/d0;->next()Ld3/e;

    move-result-object v0

    iput-object v0, p0, Ld3/d0;->b:Ld3/e;

    :cond_0
    iget-object v0, p0, Ld3/d0;->b:Ld3/e;

    return-object v0
.end method
