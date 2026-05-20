.class public Lcom/microsoft/xbox/toolkit/ui/TouchUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .registers 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "Original listener is null."

    invoke-static {v0, p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static createOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "Original listener is null."

    invoke-static {v0, p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static createOnLongClickListener(Landroid/view/View$OnLongClickListener;)Landroid/view/View$OnLongClickListener;
    .registers 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "Original listener is null."

    invoke-static {v0, p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
