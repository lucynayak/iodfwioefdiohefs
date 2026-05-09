.class public final Ld0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/l;->k(Landroid/view/View;Ld0/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld0/k;


# direct methods
.method public constructor <init>(Ld0/k;)V
    .locals 0

    iput-object p1, p0, Ld0/l$a;->a:Ld0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Ld0/q;

    invoke-direct {v1, p2}, Ld0/q;-><init>(Ljava/lang/Object;)V

    .line 2
    :goto_0
    iget-object p2, p0, Ld0/l$a;->a:Ld0/k;

    invoke-interface {p2, p1, v1}, Ld0/k;->a(Landroid/view/View;Ld0/q;)Ld0/q;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p1, Ld0/q;->a:Ljava/lang/Object;

    .line 4
    :goto_1
    check-cast v0, Landroid/view/WindowInsets;

    return-object v0
.end method
