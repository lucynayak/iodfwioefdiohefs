.class Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;-><init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

.field public final synthetic val$this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$1;->this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$1;->val$this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$1;->this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->access$000(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;)V

    return-void
.end method
