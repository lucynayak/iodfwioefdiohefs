.class Lcom/mojang/minecraftpe/MainActivity$16;
.super Lnet/hockeyapp/android/CrashManagerListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->registerCrashManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$16;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Lnet/hockeyapp/android/CrashManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldAutoUploadCrashes()Z
    .registers 2

    .prologue
    .line 1363
    const/4 v0, 0x1

    return v0
.end method
