.class Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;-><init>(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V
    .registers 2

    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$1;->this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    return-object p1
.end method
