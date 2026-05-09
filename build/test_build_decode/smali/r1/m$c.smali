.class public final Lr1/m$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr1/m;


# direct methods
.method public constructor <init>(Lr1/m;)V
    .locals 0

    iput-object p1, p0, Lr1/m$c;->b:Lr1/m;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lr1/m$c;->b:Lr1/m;

    invoke-virtual {v0}, Lr1/m;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lr1/m$c;->b:Lr1/m;

    invoke-virtual {v0, p1}, Lr1/m;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lr1/m$c$a;

    invoke-direct {v0, p0}, Lr1/m$c$a;-><init>(Lr1/m$c;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lr1/m$c;->b:Lr1/m;

    invoke-virtual {v0, p1}, Lr1/m;->c(Ljava/lang/Object;)Lr1/m$e;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, v1}, Lr1/m;->e(Lr1/m$e;Z)V

    :cond_0
    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lr1/m$c;->b:Lr1/m;

    iget v0, v0, Lr1/m;->h:I

    return v0
.end method
