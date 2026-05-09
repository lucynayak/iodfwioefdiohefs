.class Lcom/mojang/minecraftpe/platforms/Platform19$2;
.super Ljava/lang/Object;
.source "Platform19.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/platforms/Platform19;->onAppStart(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/platforms/Platform19;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/platforms/Platform19;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/platforms/Platform19;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19$2;->this$0:Lcom/mojang/minecraftpe/platforms/Platform19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform19$2;->this$0:Lcom/mojang/minecraftpe/platforms/Platform19;

    invoke-static {v0}, Lcom/mojang/minecraftpe/platforms/Platform19;->access$200(Lcom/mojang/minecraftpe/platforms/Platform19;)Landroid/view/View;

    move-result-object v0

    # Full immersive sticky mode
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    # Set display cutout mode for API 28+ (render into notch area)
    :try_start_cutout
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    # LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES = 1
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_cutout
    .catch Ljava/lang/Throwable; {:try_start_cutout .. :try_end_cutout} :catch_cutout

    :catch_cutout
    .line 45
    return-void
.end method
