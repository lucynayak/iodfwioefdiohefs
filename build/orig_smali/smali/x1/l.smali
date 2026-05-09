.class public final synthetic Lx1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ldev/virus/variable/app/ScriptManagerActivity;

.field public final synthetic c:Lk2/d;

.field public final synthetic d:Landroid/widget/ImageButton;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Ldev/virus/variable/app/ScriptManagerActivity;Lk2/d;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/l;->b:Ldev/virus/variable/app/ScriptManagerActivity;

    iput-object p2, p0, Lx1/l;->c:Lk2/d;

    iput-object p3, p0, Lx1/l;->d:Landroid/widget/ImageButton;

    iput-object p4, p0, Lx1/l;->e:Landroid/widget/TextView;

    iput-object p5, p0, Lx1/l;->f:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lx1/l;->b:Ldev/virus/variable/app/ScriptManagerActivity;

    iget-object v0, p0, Lx1/l;->c:Lk2/d;

    iget-object v1, p0, Lx1/l;->d:Landroid/widget/ImageButton;

    iget-object v2, p0, Lx1/l;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lx1/l;->f:Landroid/widget/TextView;

    sget v4, Ldev/virus/variable/app/ScriptManagerActivity;->p:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-boolean v4, v0, Lk2/d;->e:Z

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_3

    .line 3
    :cond_0
    iget v1, v0, Lk2/d;->f:I

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-lt v1, v4, :cond_1

    .line 4
    iput v5, v0, Lk2/d;->f:I

    const-string v1, "0/10"

    .line 5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_1
    iget-boolean v1, v0, Lk2/d;->d:Z

    if-eqz v1, :cond_2

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "onScriptDisabled"

    .line 7
    invoke-static {v0, v2, v1}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iput-boolean v5, v0, Lk2/d;->d:Z

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lk2/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lk2/d;->d:Z

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "onScriptEnabled"

    .line 11
    invoke-static {v0, v2, v1}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :goto_0
    iget-boolean v1, v0, Lk2/d;->d:Z

    if-eqz v1, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p1}, Lh0/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050046

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-boolean p1, v0, Lk2/d;->d:Z

    if-eqz p1, :cond_4

    .line 15
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_3
    return-void
.end method
