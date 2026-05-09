.class public final Landroid/support/v7/widget/a$a;
.super Landroid/support/v7/view/menu/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic m:Landroid/support/v7/widget/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a;Landroid/content/Context;Landroid/support/v7/view/menu/l;Landroid/view/View;)V
    .locals 7

    iput-object p1, p0, Landroid/support/v7/widget/a$a;->m:Landroid/support/v7/widget/a;

    const/4 v4, 0x0

    const v5, 0x7f03001e

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/e;Landroid/view/View;ZII)V

    .line 2
    iget-object p2, p3, Landroid/support/v7/view/menu/l;->A:Landroid/support/v7/view/menu/g;

    .line 3
    invoke-virtual {p2}, Landroid/support/v7/view/menu/g;->g()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Landroid/support/v7/widget/a;->j:Landroid/support/v7/widget/a$d;

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p1, Landroid/support/v7/view/menu/a;->i:Landroid/support/v7/view/menu/j;

    .line 5
    check-cast p2, Landroid/view/View;

    .line 6
    :cond_0
    iput-object p2, p0, Landroid/support/v7/view/menu/h;->f:Landroid/view/View;

    .line 7
    :cond_1
    iget-object p1, p1, Landroid/support/v7/widget/a;->y:Landroid/support/v7/widget/a$f;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->d(Landroid/support/v7/view/menu/i$a;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/a$a;->m:Landroid/support/v7/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/a;->v:Landroid/support/v7/widget/a$a;

    invoke-super {p0}, Landroid/support/v7/view/menu/h;->c()V

    return-void
.end method
