.class public final Lh1/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/z$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh1/j;->v(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/j;


# direct methods
.method public constructor <init>(Lh1/j;)V
    .registers 2

    iput-object p1, p0, Lh1/j$b;->a:Lh1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Le1/m;)V
    .registers 4

    iget-object p2, p0, Lh1/j$b;->a:Lh1/j;

    invoke-virtual {p2}, Landroid/support/v4/app/g;->c()Landroid/support/v4/app/h;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void
.end method
