.class public final Landroid/support/v4/app/h$b;
.super Landroid/support/v4/app/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/j<",
        "Landroid/support/v4/app/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/support/v4/app/h;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/h;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    invoke-direct {p0, p1}, Landroid/support/v4/app/j;-><init>(Landroid/support/v4/app/h;)V

    return-void
.end method


# virtual methods
.method public final g(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/h$b;->e:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
