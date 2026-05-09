.class public final Landroid/support/v4/app/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/l;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/support/v4/app/l;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/l$a;->b:Landroid/support/v4/app/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/app/l$a;->b:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/l$a;->b:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/g;->R(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/l$a;->b:Landroid/support/v4/app/l;

    iget-object v1, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/k;

    iget-object v2, v0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/g;

    invoke-virtual {v2}, Landroid/support/v4/app/g;->l()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/k;->j0(Landroid/support/v4/app/g;IIIZ)V

    :cond_0
    return-void
.end method
