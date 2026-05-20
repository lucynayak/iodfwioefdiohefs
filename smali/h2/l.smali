.class public final Lh2/l;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic x:I


# instance fields
.field public final o:Landroid/view/View;

.field public p:Landroid/widget/PopupWindow;

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "FastPotion"

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lh2/l;->v:I

    iput-object p1, p0, Lh2/l;->o:Landroid/view/View;

    sget p1, Ldev/virus/variable/app/MinecraftActivity;->c:I

    int-to-float p1, p1

    const v0, 0x3ccccccd    # 0.025f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const v0, 0x7f0b003b

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lf2/a;

    invoke-direct {v0, p0, p1, v1}, Lf2/a;-><init>(Lc2/b;II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Landroid/widget/PopupWindow;

    sget v0, Ldev/virus/variable/app/MinecraftActivity;->c:I

    int-to-float v1, v0

    const v2, 0x3de66666    # 0.1125f

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    const v2, 0x3d851eb8    # 0.065f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-direct {p1, p2, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lh2/l;->p:Landroid/widget/PopupWindow;

    const p2, 0x7f0e01f6

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 2

    iget-object v0, p0, Lh2/l;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final G()V
    .registers 6

    iget-object v0, p0, Lh2/l;->p:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lh2/l;->o:Landroid/view/View;

    iget v2, p0, Lh2/l;->t:I

    iget v3, p0, Lh2/l;->u:I

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final J()V
    .registers 3

    iget v0, p0, Lh2/l;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lh2/l;->w:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh2/l;->w:I

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->longClick()V

    .line 2
    iget v0, p0, Lh2/l;->v:I

    .line 3
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeInventory;->setSelectedSlot(I)V

    .line 4
    iput v1, p0, Lh2/l;->v:I

    :cond_0
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

    iput v0, p0, Lh2/l;->t:I

    const-string v0, "y"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lh2/l;->u:I

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh2/l;->p:Landroid/widget/PopupWindow;

    iget v0, p0, Lh2/l;->t:I

    iget v1, p0, Lh2/l;->u:I

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

    iget v1, p0, Lh2/l;->t:I

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lh2/l;->u:I

    const-string v2, "y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1
    iget-object v1, p0, Lc2/b;->b:Lorg/json/JSONObject;

    const-string v2, "position"

    .line 2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
