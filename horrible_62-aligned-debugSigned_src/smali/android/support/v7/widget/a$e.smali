.class public final Landroid/support/v7/widget/a$e;
.super Landroid/support/v7/view/menu/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic m:Landroid/support/v7/widget/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a;Landroid/content/Context;Landroid/support/v7/view/menu/e;Landroid/view/View;)V
    .registers 12

    iput-object p1, p0, Landroid/support/v7/widget/a$e;->m:Landroid/support/v7/widget/a;

    const/4 v4, 0x1

    const v5, 0x7f03001e

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/e;Landroid/view/View;ZII)V

    const p2, 0x800005

    .line 2
    iput p2, p0, Landroid/support/v7/view/menu/h;->g:I

    .line 3
    iget-object p1, p1, Landroid/support/v7/widget/a;->y:Landroid/support/v7/widget/a$f;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->d(Landroid/support/v7/view/menu/i$a;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/a$e;->m:Landroid/support/v7/widget/a;

    .line 1
    iget-object v0, v0, Landroid/support/v7/view/menu/a;->d:Landroid/support/v7/view/menu/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/e;->d(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a$e;->m:Landroid/support/v7/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/a;->u:Landroid/support/v7/widget/a$e;

    invoke-super {p0}, Landroid/support/v7/view/menu/h;->c()V

    return-void
.end method
