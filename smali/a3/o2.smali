.class public final La3/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "La3/w1;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/reflect/Constructor;

.field public final c:La3/u;

.field public final d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(La3/o2;)V
    .registers 5

    iget-object v0, p1, La3/o2;->b:Ljava/lang/reflect/Constructor;

    iget-object p1, p1, La3/o2;->d:Ljava/lang/Class;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, La3/u;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, La3/u;-><init>(I)V

    iput-object v1, p0, La3/o2;->c:La3/u;

    iput-object v0, p0, La3/o2;->b:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, La3/o2;->d:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, La3/u;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, La3/u;-><init>(I)V

    iput-object v1, p0, La3/o2;->c:La3/u;

    iput-object p1, p0, La3/o2;->b:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, La3/o2;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final A(La3/w1;)V
    .registers 4

    invoke-interface {p1}, La3/w1;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La3/o2;->c:La3/u;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "La3/w1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La3/o2;->c:La3/u;

    invoke-virtual {v0}, La3/u;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/o2;->b:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
