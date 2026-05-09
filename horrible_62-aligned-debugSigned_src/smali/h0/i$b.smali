.class public final Lh0/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lh0/i;


# direct methods
.method public constructor <init>(Lh0/i;)V
    .registers 2

    iput-object p1, p0, Lh0/i$b;->b:Lh0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;Z)V
    .registers 3

    iget-object p2, p0, Lh0/i$b;->b:Lh0/i;

    invoke-virtual {p2, p1}, Lh0/i;->o(Landroid/support/v7/view/menu/e;)V

    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/e;)Z
    .registers 4

    iget-object v0, p0, Lh0/i$b;->b:Lh0/i;

    invoke-virtual {v0}, Lh0/i;->x()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
