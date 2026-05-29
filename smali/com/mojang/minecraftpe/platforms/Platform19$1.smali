.class Lcom/mojang/minecraftpe/platforms/Platform19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/platforms/Platform19;->onAppStart(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/platforms/Platform19;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/platforms/Platform19;)V
    .registers 2

    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19$1;->this$0:Lcom/mojang/minecraftpe/platforms/Platform19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 5

    iget-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19$1;->this$0:Lcom/mojang/minecraftpe/platforms/Platform19;

    invoke-static {p1}, Lcom/mojang/minecraftpe/platforms/Platform19;->access$100(Lcom/mojang/minecraftpe/platforms/Platform19;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform19$1;->this$0:Lcom/mojang/minecraftpe/platforms/Platform19;

    invoke-static {v0}, Lcom/mojang/minecraftpe/platforms/Platform19;->access$000(Lcom/mojang/minecraftpe/platforms/Platform19;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
