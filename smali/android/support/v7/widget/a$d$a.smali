.class public final Landroid/support/v7/widget/a$d$a;
.super Lo0/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/a$d;-><init>(Landroid/support/v7/widget/a;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Landroid/support/v7/widget/a$d;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a$d;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/a$d$a;->k:Landroid/support/v7/widget/a$d;

    invoke-direct {p0, p2}, Lo0/f0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Ln0/g;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/a$d$a;->k:Landroid/support/v7/widget/a$d;

    iget-object v0, v0, Landroid/support/v7/widget/a$d;->d:Landroid/support/v7/widget/a;

    iget-object v0, v0, Landroid/support/v7/widget/a;->u:Landroid/support/v7/widget/a$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->a()Ln0/e;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/a$d$a;->k:Landroid/support/v7/widget/a$d;

    iget-object v0, v0, Landroid/support/v7/widget/a$d;->d:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->m()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/a$d$a;->k:Landroid/support/v7/widget/a$d;

    iget-object v0, v0, Landroid/support/v7/widget/a$d;->d:Landroid/support/v7/widget/a;

    iget-object v1, v0, Landroid/support/v7/widget/a;->w:Landroid/support/v7/widget/a$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/a;->j()Z

    const/4 v0, 0x1

    return v0
.end method
