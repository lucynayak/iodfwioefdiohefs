.class Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->onAnimationEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

.field public final synthetic val$finishIterationID:I


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;I)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;->this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    iput p2, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;->val$finishIterationID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;->val$finishIterationID:I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;->this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    iget v2, v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->iterationID:I

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->access$200(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;)V

    :cond_0
    return-void
.end method
