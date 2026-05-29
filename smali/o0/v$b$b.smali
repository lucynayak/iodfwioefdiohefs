.class public final Lo0/v$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo0/v$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo0/v$b;


# direct methods
.method public constructor <init>(Lo0/v$b;)V
    .registers 2

    iput-object p1, p0, Lo0/v$b$b;->b:Lo0/v$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 4

    iget-object v0, p0, Lo0/v$b$b;->b:Lo0/v$b;

    iget-object v1, v0, Lo0/v$b;->G:Lo0/v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object v2, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, v0, Lo0/v$b;->F:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lo0/v$b$b;->b:Lo0/v$b;

    invoke-virtual {v0}, Lo0/h0;->dismiss()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo0/v$b$b;->b:Lo0/v$b;

    invoke-virtual {v0}, Lo0/v$b;->o()V

    iget-object v0, p0, Lo0/v$b$b;->b:Lo0/v$b;

    invoke-static {v0}, Lo0/v$b;->n(Lo0/v$b;)V

    :goto_1
    return-void
.end method
