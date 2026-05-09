.class Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitForReady(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;->this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;->this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->access$000(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;)V

    return-void
.end method
