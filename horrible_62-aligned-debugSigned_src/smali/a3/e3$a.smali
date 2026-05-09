.class public final La3/e3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/e2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:La3/c1;

.field public final c:La3/w;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La3/w;La3/c1;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/e3$a;->c:La3/w;

    iput-object p3, p0, La3/e3$a;->d:Ljava/lang/Object;

    iput-object p2, p0, La3/e3$a;->b:La3/c1;

    return-void
.end method


# virtual methods
.method public final a(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-interface {p1}, Ld3/m;->getPosition()Landroid/arch/lifecycle/h;

    move-result-object v0

    invoke-interface {p1}, Ld3/q;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La3/e3$a;->c:La3/w;

    instance-of v3, v2, La3/e2;

    if-eqz v3, :cond_0

    check-cast v2, La3/e2;

    invoke-interface {v2, p1, p2}, La3/e2;->a(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    const/4 p2, 0x1

    iget-object v1, p0, La3/e3$a;->b:La3/c1;

    aput-object v1, p1, p2

    const/4 p2, 0x2

    aput-object v0, p1, p2

    new-instance p2, La3/a2;

    const-string v0, "Element \'%s\' is already used with %s at %s"

    invoke-direct {p2, v0, p1}, La3/a2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public final b(Ld3/m;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, La3/e3$a;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, La3/e3$a;->a(Ld3/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ld3/z;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, La3/e3$a;->c(Ld3/z;Ljava/lang/Object;)V

    return-void
.end method
