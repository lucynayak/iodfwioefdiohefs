.class Lcom/mojang/minecraftpe/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->setTextToSpeechEnabled(Z)V
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
    .line 246
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$1;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 250
    return-void
.end method
