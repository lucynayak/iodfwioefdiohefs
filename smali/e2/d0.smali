.class public final Le2/d0;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Landroid/view/View;

.field public p:Landroid/widget/PopupWindow;

.field public q:Landroid/widget/TextView;

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "PingMeter"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p1, p0, Le2/d0;->o:Landroid/view/View;

    const p1, 0x7f0b003f

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0800e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le2/d0;->q:Landroid/widget/TextView;

    const-string v0, "<font color=\'#00FF00\'>0</font>ms"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Le2/d0;->q:Landroid/widget/TextView;

    new-instance v0, Le2/b0;

    invoke-direct {v0, p0}, Le2/b0;-><init>(Le2/d0;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p2, Landroid/widget/PopupWindow;

    sget v0, Ldev/virus/variable/app/MinecraftActivity;->c:I

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, -0x2

    invoke-direct {p2, p1, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p2, p0, Le2/d0;->p:Landroid/widget/PopupWindow;

    const p1, 0x7f0e01f6

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 2

    iget-object v0, p0, Le2/d0;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final G()V
    .registers 6

    iget-object v0, p0, Le2/d0;->p:Landroid/widget/PopupWindow;

    iget-object v1, p0, Le2/d0;->o:Landroid/view/View;

    iget v2, p0, Le2/d0;->t:I

    iget v3, p0, Le2/d0;->u:I

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final J()V
    .registers 5

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Le2/d0;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le2/d0;->v:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :cond_2

    invoke-static {}, Ldev/virus/variable/launcher/api/Api;->getPing()I

    move-result v0

    const/16 v1, 0x96

    if-gt v0, v1, :cond_0

    const-string v1, "#00FF00"

    goto :goto_0

    :cond_0
    const/16 v1, 0x12c

    if-gt v0, v1, :cond_1

    const-string v1, "#FF9800"

    goto :goto_0

    :cond_1
    const-string v1, "#FF0000"

    :goto_0
    sget-object v2, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v3, Le2/c0;

    invoke-direct {v3, p0, v1, v0}, Le2/c0;-><init>(Le2/d0;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Le2/d0;->v:I

    :cond_2
    return-void
.end method

.method public final K(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le2/d0;->t:I

    const-string v0, "y"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le2/d0;->u:I

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le2/d0;->p:Landroid/widget/PopupWindow;

    iget v0, p0, Le2/d0;->t:I

    iget v1, p0, Le2/d0;->u:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method

.method public final M()V
    .registers 4

    invoke-super {p0}, Lc2/b;->M()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Le2/d0;->t:I

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Le2/d0;->u:I

    const-string v2, "y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1
    iget-object v1, p0, Lc2/b;->b:Lorg/json/JSONObject;

    const-string v2, "position"

    .line 2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final O()V
    .registers 4

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lx1/g;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lx1/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
