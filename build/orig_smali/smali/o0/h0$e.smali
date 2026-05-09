.class public final Lo0/h0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic b:Lo0/h0;


# direct methods
.method public constructor <init>(Lo0/h0;)V
    .locals 0

    iput-object p1, p0, Lo0/h0$e;->b:Lo0/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo0/h0$e;->b:Lo0/h0;

    iget-object v0, v0, Lo0/h0;->d:Lo0/d0;

    if-eqz v0, :cond_0

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lo0/h0$e;->b:Lo0/h0;

    iget-object v0, v0, Lo0/h0;->d:Lo0/d0;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    iget-object v1, p0, Lo0/h0$e;->b:Lo0/h0;

    iget-object v1, v1, Lo0/h0;->d:Lo0/d0;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lo0/h0$e;->b:Lo0/h0;

    iget-object v0, v0, Lo0/h0;->d:Lo0/d0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lo0/h0$e;->b:Lo0/h0;

    iget v2, v1, Lo0/h0;->n:I

    if-gt v0, v2, :cond_0

    iget-object v0, v1, Lo0/h0;->z:Lo0/o;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lo0/h0$e;->b:Lo0/h0;

    invoke-virtual {v0}, Lo0/h0;->d()V

    :cond_0
    return-void
.end method
