.class Lcom/mojang/minecraftpe/MainActivity$16;
.super Ln2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->registerCrashManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$16;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ln2/d;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldAutoUploadCrashes()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
