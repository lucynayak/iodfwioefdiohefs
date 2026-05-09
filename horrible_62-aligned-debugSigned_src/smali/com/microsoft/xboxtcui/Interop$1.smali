.class final Lcom/microsoft/xboxtcui/Interop$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xboxtcui/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->access$000(I)V

    return-void
.end method
