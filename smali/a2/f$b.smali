.class La2/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final synthetic scrollView:Landroid/widget/ScrollView;

.field final synthetic settingsView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/f$b;->scrollView:Landroid/widget/ScrollView;

    iput-object p2, p0, La2/f$b;->settingsView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, La2/f$b;->settingsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, La2/f$b;->scrollView:Landroid/widget/ScrollView;

    const/4 p0, 0x0

    invoke-virtual {v2, p0, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method
