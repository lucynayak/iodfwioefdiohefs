.class public final Landroid/support/v4/app/h$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/app/h;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/h;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/h$a;->a:Landroid/support/v4/app/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/h$a;->a:Landroid/support/v4/app/h;

    invoke-virtual {p1}, Landroid/support/v4/app/h;->l()V

    iget-object p1, p0, Landroid/support/v4/app/h$a;->a:Landroid/support/v4/app/h;

    iget-object p1, p1, Landroid/support/v4/app/h;->d:Landroid/support/v4/app/i;

    invoke-virtual {p1}, Landroid/support/v4/app/i;->d()Z

    :goto_0
    return-void
.end method
