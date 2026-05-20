.class Lcom/mojang/minecraftpe/MainActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->createAlertDialog(ZZZ)V
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

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {p1}, Lcom/mojang/minecraftpe/MainActivity;->access$100(Lcom/mojang/minecraftpe/MainActivity;)V

    return-void
.end method
