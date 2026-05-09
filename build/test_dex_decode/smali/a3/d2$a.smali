.class public final La3/d2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/k2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:La3/j2;


# direct methods
.method public constructor <init>(La3/j2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, La3/d2$a;->b:Ljava/util/LinkedList;

    iput-object p1, p0, La3/d2$a;->c:La3/j2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()La3/g1;
    .locals 3

    new-instance v0, La3/g1;

    iget-object v1, p0, La3/d2$a;->c:La3/j2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La3/g1;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final f()La3/c1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()La3/g1;
    .locals 3

    new-instance v0, La3/g1;

    iget-object v1, p0, La3/d2$a;->c:La3/j2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La3/g1;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final i(Ljava/lang/String;)La3/c1;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La3/d2$a;->b:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final r(Ljava/lang/String;)La3/k2;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
