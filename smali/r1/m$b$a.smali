.class public final Lr1/m$b$a;
.super Lr1/m$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/m$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr1/m<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr1/m$b;)V
    .registers 2

    iget-object p1, p1, Lr1/m$b;->b:Lr1/m;

    invoke-direct {p0, p1}, Lr1/m$d;-><init>(Lr1/m;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lr1/m$d;->a()Lr1/m$e;

    move-result-object v0

    return-object v0
.end method
