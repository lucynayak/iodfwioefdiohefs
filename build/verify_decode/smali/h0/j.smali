.class public final Lh0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/k;


# instance fields
.field public final synthetic a:Lh0/i;


# direct methods
.method public constructor <init>(Lh0/i;)V
    .locals 0

    iput-object p1, p0, Lh0/j;->a:Lh0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ld0/q;)Ld0/q;
    .locals 5

    invoke-virtual {p2}, Ld0/q;->d()I

    move-result v0

    iget-object v1, p0, Lh0/j;->a:Lh0/i;

    invoke-virtual {v1, v0}, Lh0/i;->E(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ld0/q;->b()I

    move-result v0

    invoke-virtual {p2}, Ld0/q;->c()I

    move-result v2

    invoke-virtual {p2}, Ld0/q;->a()I

    move-result v3

    .line 1
    new-instance v4, Ld0/q;

    iget-object p2, p2, Ld0/q;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/WindowInsets;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p2

    invoke-direct {v4, p2}, Ld0/q;-><init>(Ljava/lang/Object;)V

    move-object p2, v4

    .line 2
    :cond_0
    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    .line 3
    iget-object p2, p2, Ld0/q;->a:Ljava/lang/Object;

    .line 4
    check-cast p2, Landroid/view/WindowInsets;

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    if-eq p1, p2, :cond_1

    new-instance p2, Landroid/view/WindowInsets;

    invoke-direct {p2, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Ld0/q;

    invoke-direct {v0, p2}, Ld0/q;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
