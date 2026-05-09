.class public La3/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:La3/p;

.field public final b:La3/y;

.field public final c:La3/k;

.field public final d:La3/z0;


# direct methods
.method public constructor <init>(La3/p;La3/y;La3/k;La3/z0;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/p$a;->a:La3/p;

    iput-object p2, p0, La3/p$a;->b:La3/y;

    iput-object p3, p0, La3/p$a;->c:La3/k;

    iput-object p4, p0, La3/p$a;->d:La3/z0;

    return-void
.end method


# virtual methods
.method public a(Ld3/m;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, La3/p$a;->d:La3/z0;

    invoke-interface {v0}, La3/z0;->d()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, La3/p$a;->c:La3/k;

    .line 1
    iget-object v1, v1, La3/k;->e:La3/k2;

    .line 2
    iget-object v2, p0, La3/p$a;->d:La3/z0;

    invoke-interface {v2, v0}, La3/z0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, La3/p$a;->a:La3/p;

    iget-object v3, p0, La3/p$a;->c:La3/k;

    .line 3
    invoke-virtual {v2, p1, v0, v3}, La3/p;->i(Ld3/m;Ljava/lang/Object;La3/k;)V

    .line 4
    iget-object v2, p0, La3/p$a;->a:La3/p;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v1}, La3/k2;->f()La3/c1;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1, v0, v3}, La3/p;->f(Ld3/m;Ljava/lang/Object;La3/c1;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v2, p0, La3/p$a;->a:La3/p;

    .line 8
    invoke-virtual {v2, p1, v0, v1}, La3/p;->d(Ld3/m;Ljava/lang/Object;La3/k2;)V

    .line 9
    iget-object v2, p0, La3/p$a;->a:La3/p;

    .line 10
    invoke-virtual {v2, p1, v0, v1}, La3/p;->e(Ld3/m;Ljava/lang/Object;La3/k2;)V

    .line 11
    iget-object p1, p0, La3/p$a;->b:La3/y;

    check-cast p1, La3/m;

    invoke-virtual {p1, v0}, La3/m;->A(Ljava/lang/Object;)V

    return-object v0
.end method
