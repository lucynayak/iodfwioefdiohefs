.class public final Landroid/support/v7/view/menu/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/i;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/c$a;
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/view/LayoutInflater;

.field public d:Landroid/support/v7/view/menu/e;

.field public e:Landroid/support/v7/view/menu/ExpandedMenuView;

.field public f:Landroid/support/v7/view/menu/i$a;

.field public g:Landroid/support/v7/view/menu/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v7/view/menu/c;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/c;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/c;->f:Landroid/support/v7/view/menu/i$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/i$a;->a(Landroid/support/v7/view/menu/e;Z)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/l;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/support/v7/view/menu/e;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/support/v7/view/menu/f;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/f;-><init>(Landroid/support/v7/view/menu/e;)V

    .line 1
    iget-object v2, p1, Landroid/support/v7/view/menu/e;->a:Landroid/content/Context;

    .line 2
    invoke-static {v2, v1}, Lh0/e;->d(Landroid/content/Context;I)I

    move-result v3

    .line 3
    new-instance v4, Landroid/support/v7/app/AlertController$b;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-static {v2, v3}, Lh0/e;->d(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v5, v2, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/support/v7/app/AlertController$b;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v2, Landroid/support/v7/view/menu/c;

    invoke-direct {v2, v5}, Landroid/support/v7/view/menu/c;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/c;

    .line 5
    iput-object v0, v2, Landroid/support/v7/view/menu/c;->f:Landroid/support/v7/view/menu/i$a;

    .line 6
    iget-object v6, v0, Landroid/support/v7/view/menu/f;->b:Landroid/support/v7/view/menu/e;

    invoke-virtual {v6, v2}, Landroid/support/v7/view/menu/e;->b(Landroid/support/v7/view/menu/i;)V

    iget-object v2, v0, Landroid/support/v7/view/menu/f;->d:Landroid/support/v7/view/menu/c;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/c;->d()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 7
    iput-object v2, v4, Landroid/support/v7/app/AlertController$b;->f:Landroid/widget/ListAdapter;

    iput-object v0, v4, Landroid/support/v7/app/AlertController$b;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    iget-object v2, p1, Landroid/support/v7/view/menu/e;->o:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 9
    iput-object v2, v4, Landroid/support/v7/app/AlertController$b;->d:Landroid/view/View;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p1, Landroid/support/v7/view/menu/e;->n:Landroid/graphics/drawable/Drawable;

    .line 11
    iput-object v2, v4, Landroid/support/v7/app/AlertController$b;->b:Landroid/graphics/drawable/Drawable;

    .line 12
    iget-object v2, p1, Landroid/support/v7/view/menu/e;->m:Ljava/lang/CharSequence;

    .line 13
    iput-object v2, v4, Landroid/support/v7/app/AlertController$b;->c:Ljava/lang/CharSequence;

    .line 14
    :goto_0
    iput-object v0, v4, Landroid/support/v7/app/AlertController$b;->e:Landroid/content/DialogInterface$OnKeyListener;

    .line 15
    new-instance v2, Lh0/e;

    invoke-direct {v2, v5, v3}, Lh0/e;-><init>(Landroid/content/Context;I)V

    iget-object v3, v2, Lh0/e;->d:Landroid/support/v7/app/AlertController;

    .line 16
    iget-object v6, v4, Landroid/support/v7/app/AlertController$b;->d:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 17
    iput-object v6, v3, Landroid/support/v7/app/AlertController;->z:Landroid/view/View;

    goto :goto_1

    .line 18
    :cond_2
    iget-object v6, v4, Landroid/support/v7/app/AlertController$b;->c:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    .line 19
    iput-object v6, v3, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    iget-object v7, v3, Landroid/support/v7/app/AlertController;->x:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_3
    iget-object v6, v4, Landroid/support/v7/app/AlertController$b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 21
    iput-object v6, v3, Landroid/support/v7/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    iput v1, v3, Landroid/support/v7/app/AlertController;->u:I

    iget-object v7, v3, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v3, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_4
    :goto_1
    iget-object v1, v4, Landroid/support/v7/app/AlertController$b;->f:Landroid/widget/ListAdapter;

    const/4 v6, 0x0

    if-eqz v1, :cond_7

    .line 23
    iget-object v1, v4, Landroid/support/v7/app/AlertController$b;->a:Landroid/view/LayoutInflater;

    iget v7, v3, Landroid/support/v7/app/AlertController;->E:I

    invoke-virtual {v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AlertController$RecycleListView;

    iget v7, v3, Landroid/support/v7/app/AlertController;->G:I

    iget-object v8, v4, Landroid/support/v7/app/AlertController$b;->f:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    new-instance v8, Landroid/support/v7/app/AlertController$d;

    invoke-direct {v8, v5, v7}, Landroid/support/v7/app/AlertController$d;-><init>(Landroid/content/Context;I)V

    :goto_2
    iput-object v8, v3, Landroid/support/v7/app/AlertController;->A:Landroid/widget/ListAdapter;

    const/4 v5, -0x1

    iput v5, v3, Landroid/support/v7/app/AlertController;->B:I

    iget-object v5, v4, Landroid/support/v7/app/AlertController$b;->g:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_6

    new-instance v5, Landroid/support/v7/app/a;

    invoke-direct {v5, v4, v3}, Landroid/support/v7/app/a;-><init>(Landroid/support/v7/app/AlertController$b;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_6
    iput-object v1, v3, Landroid/support/v7/app/AlertController;->f:Landroid/support/v7/app/AlertController$RecycleListView;

    :cond_7
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, v4, Landroid/support/v7/app/AlertController$b;->e:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v3, :cond_8

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 25
    :cond_8
    iput-object v2, v0, Landroid/support/v7/view/menu/f;->c:Lh0/e;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, v0, Landroid/support/v7/view/menu/f;->c:Lh0/e;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x3eb

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Landroid/support/v7/view/menu/f;->c:Lh0/e;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 26
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->f:Landroid/support/v7/view/menu/i$a;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/i$a;->b(Landroid/support/v7/view/menu/e;)Z

    :cond_9
    return v1
.end method

.method public final c(Landroid/support/v7/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final d()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/c;->g:Landroid/support/v7/view/menu/c$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/view/menu/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/c$a;-><init>(Landroid/support/v7/view/menu/c;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/c;->g:Landroid/support/v7/view/menu/c$a;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->g:Landroid/support/v7/view/menu/c$a;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(Landroid/support/v7/view/menu/i$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/c;->f:Landroid/support/v7/view/menu/i$a;

    return-void
.end method

.method public final g(Landroid/content/Context;Landroid/support/v7/view/menu/e;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/view/menu/c;->b:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/view/menu/c;->c:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/c;->c:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Landroid/support/v7/view/menu/c;->d:Landroid/support/v7/view/menu/e;

    iget-object p1, p0, Landroid/support/v7/view/menu/c;->g:Landroid/support/v7/view/menu/c$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/view/menu/c$a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/c;->g:Landroid/support/v7/view/menu/c$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/c$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final k(Landroid/support/v7/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/v7/view/menu/c;->d:Landroid/support/v7/view/menu/e;

    iget-object p2, p0, Landroid/support/v7/view/menu/c;->g:Landroid/support/v7/view/menu/c$a;

    invoke-virtual {p2, p3}, Landroid/support/v7/view/menu/c$a;->c(I)Landroid/support/v7/view/menu/g;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/support/v7/view/menu/e;->t(Landroid/view/MenuItem;Landroid/support/v7/view/menu/i;I)Z

    return-void
.end method
