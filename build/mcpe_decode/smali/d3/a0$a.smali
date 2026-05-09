.class public final Ld3/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ld3/z;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ld3/a0;


# direct methods
.method public constructor <init>(Ld3/a0;)V
    .locals 0

    iput-object p1, p0, Ld3/a0$a;->c:Ld3/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    iput p1, p0, Ld3/a0$a;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Ld3/a0$a;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ld3/a0$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld3/a0$a;->c:Ld3/a0;

    iget v1, p0, Ld3/a0$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld3/a0$a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/z;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Ld3/a0$a;->c:Ld3/a0;

    iget v1, p0, Ld3/a0$a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld3/z;

    if-eqz v1, :cond_0

    iget-object v0, v0, Ld3/a0;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
