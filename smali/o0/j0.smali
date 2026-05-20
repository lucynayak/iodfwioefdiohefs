.class public final Lo0/j0;
.super Lo0/h0;
.source "SourceFile"

# interfaces
.implements Lo0/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/j0$a;
    }
.end annotation


# static fields
.field public static E:Ljava/lang/reflect/Method;


# instance fields
.field public D:Lo0/i0;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lo0/j0;->E:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lo0/h0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)V
    .registers 4

    iget-object v0, p0, Lo0/j0;->D:Lo0/i0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lo0/i0;->a(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)V
    .registers 4

    iget-object v0, p0, Lo0/j0;->D:Lo0/i0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lo0/i0;->b(Landroid/support/v7/view/menu/e;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/content/Context;Z)Lo0/d0;
    .registers 4

    new-instance v0, Lo0/j0$a;

    invoke-direct {v0, p1, p2}, Lo0/j0$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Lo0/j0$a;->setHoverListener(Lo0/i0;)V

    return-object v0
.end method

.method public final n()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo0/h0;->z:Lo0/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public final o()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo0/h0;->z:Lo0/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method
