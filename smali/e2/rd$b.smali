.class final Le2/rd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/rd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Le2/rd;


# direct methods
.method public constructor <init>(Le2/rd;)V
    .registers 2

    iput-object p1, p0, Le2/rd$b;->b:Le2/rd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 7

    iget-object v0, p0, Le2/rd$b;->b:Le2/rd;

    if-eqz v0, :cond_1

    iget-object v0, v0, Le2/rd;->oView:Le2/RadarView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    const v2, 0x800328

    goto :goto_0

    :cond_0
    const/16 v2, 0x318

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v2, Lk2/a;->b:Landroid/content/Context;

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    :try_start_0
    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_1
    :goto_1
    return-void
.end method
