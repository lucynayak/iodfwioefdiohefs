.class Lcom/mojang/minecraftpe/MainActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->showKeyboard(Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field public final synthetic val$fLimitInput:Z

.field public final synthetic val$fMaxLength:I

.field public final synthetic val$fNumbersOnly:Z

.field public final synthetic val$startText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;IZZ)V
    .registers 6

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$startText:Ljava/lang/String;

    iput p3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$fMaxLength:I

    iput-boolean p4, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$fLimitInput:Z

    iput-boolean p5, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$fNumbersOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$startText:Ljava/lang/String;

    iget v2, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$fMaxLength:I

    iget-boolean v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$fLimitInput:Z

    iget-boolean v4, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$fNumbersOnly:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mojang/minecraftpe/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZZ)V

    return-void
.end method
