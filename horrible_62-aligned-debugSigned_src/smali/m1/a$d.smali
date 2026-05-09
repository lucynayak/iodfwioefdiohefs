.class public final Lm1/a$d;
.super Lh1/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh1/i<",
        "Ll1/a;",
        "Lj1/a;",
        ">.a;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lm1/a;


# direct methods
.method public constructor <init>(Lm1/a;)V
    .registers 2

    iput-object p1, p0, Lm1/a$d;->a:Lm1/a;

    invoke-direct {p0}, Lh1/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ll1/a;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lm1/a;->c(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/Object;)Lh1/a;
    .registers 5

    check-cast p1, Ll1/a;

    .line 1
    iget-object v0, p0, Lm1/a$d;->a:Lm1/a;

    .line 2
    invoke-virtual {v0}, Lh1/i;->a()Landroid/app/Activity;

    move-result-object v1

    .line 3
    sget-object v2, Lm1/a$b;->f:Lm1/a$b;

    invoke-static {v0, v1, p1, v2}, Lm1/a;->b(Lm1/a;Landroid/content/Context;Ll1/a;Lm1/a$b;)V

    iget-object v0, p0, Lm1/a$d;->a:Lm1/a;

    invoke-virtual {v0}, Lm1/a;->d()Lh1/a;

    move-result-object v0

    .line 4
    sget-object v1, Lk1/f;->b:Lk1/f$b;

    if-nez v1, :cond_0

    new-instance v1, Lk1/f$b;

    invoke-direct {v1}, Lk1/f$b;-><init>()V

    sput-object v1, Lk1/f;->b:Lk1/f$b;

    :cond_0
    sget-object v1, Lk1/f;->b:Lk1/f$b;

    .line 5
    invoke-static {p1, v1}, Lk1/f;->a(Ll1/a;Lk1/f$a;)V

    .line 6
    instance-of v1, p1, Ll1/c;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Ll1/c;

    invoke-static {v2}, La3/r0;->m(Ll1/c;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    check-cast v2, Ll1/g;

    invoke-static {v2}, La3/r0;->n(Ll1/g;)Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    if-eqz v1, :cond_2

    const-string p1, "share"

    goto :goto_1

    .line 7
    :cond_2
    instance-of p1, p1, Ll1/g;

    if-eqz p1, :cond_3

    const-string p1, "share_open_graph"

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 8
    :goto_1
    invoke-static {v0, p1, v2}, La3/r0;->H(Lh1/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
