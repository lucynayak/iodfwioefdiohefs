.class public final synthetic La2/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/j;
.end annotation


# instance fields
.field public final synthetic a:La2/b;


# direct methods
.method public synthetic constructor <init>(La2/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/j$c;->a:La2/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, La2/j$c;->a:La2/b;

    invoke-virtual {v0}, La2/b;->a()V

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, La2/b;->b:Landroid/view/View;

    iget v2, v0, La2/b;->h:I

    iget v3, v0, La2/b;->i:I

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method
