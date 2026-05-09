.class public final Landroid/support/v4/app/g$a;
.super Landroid/support/v4/app/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/g;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/app/g;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/g;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/g$a;->a:Landroid/support/v4/app/g;

    invoke-direct {p0}, Landroid/support/v4/app/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g$a;->a:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->s:Landroid/support/v4/app/j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Landroid/support/v4/app/g;->n(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/g;

    move-result-object p1

    return-object p1
.end method

.method public final g(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g$a;->a:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment does not have a view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g$a;->a:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
