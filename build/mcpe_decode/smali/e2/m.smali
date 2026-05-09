.class public final Le2/m;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Landroid/content/Context;

.field public final p:Landroid/view/View;

.field public final q:Landroid/widget/PopupWindow;

.field public r:Z

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public final w:I

.field public final x:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 5

    const-string v0, "ChatMacros"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Misc"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/f;

    const-string v1, "Macros"

    const-string v3, "Split commands with ;"

    const-string v4, "/spawn;/warp pvp"

    invoke-direct {v0, v1, v3, v4}, Li2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Le2/m;->o:Landroid/content/Context;

    iput-object p2, p0, Le2/m;->p:Landroid/view/View;

    sget p1, Ldev/virus/variable/app/MinecraftActivity;->c:I

    int-to-float p1, p1

    const p2, 0x3d23d70a    # 0.04f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Le2/m;->w:I

    const p1, 0x7f0b0036

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Le2/m;->x:Landroid/widget/LinearLayout;

    new-instance p2, Le2/l;

    invoke-direct {p2, p0}, Le2/l;-><init>(Le2/m;)V

    .line 1
    iput-object p2, v0, Li2/f;->g:Li2/f$a;

    .line 2
    invoke-virtual {p0, v0}, Lc2/b;->addSetting(Li2/c;)V

    new-instance p2, Landroid/widget/PopupWindow;

    const/4 p3, -0x2

    invoke-direct {p2, p1, p3, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p2, p0, Le2/m;->q:Landroid/widget/PopupWindow;

    const-string p1, "/spawn"

    const-string p2, "/warp pvp"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x2

    if-ge v2, p2, :cond_0

    aget-object p2, p1, v2

    iget-object p3, p0, Le2/m;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Le2/m;->T(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    iget-object v0, p0, Le2/m;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final G()V
    .locals 5

    iget-object v0, p0, Le2/m;->q:Landroid/widget/PopupWindow;

    iget-object v1, p0, Le2/m;->p:Landroid/view/View;

    iget v2, p0, Le2/m;->u:I

    iget v3, p0, Le2/m;->v:I

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final K(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Le2/m;->u:I

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le2/m;->v:I

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/m;->q:Landroid/widget/PopupWindow;

    iget v1, p0, Le2/m;->u:I

    iget v2, p0, Le2/m;->v:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Le2/m;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    iget-object v3, p0, Le2/m;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Le2/m;->T(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final M()V
    .locals 3

    invoke-super {p0}, Lc2/b;->M()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Le2/m;->u:I

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Le2/m;->v:I

    const-string v2, "y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1
    iget-object v1, p0, Lc2/b;->b:Lorg/json/JSONObject;

    const-string v2, "position"

    .line 2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final T(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Le2/m;->o:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x2

    const/high16 v3, 0x41480000    # 12.5f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    sget v2, Ldev/virus/variable/app/MinecraftActivity;->c:I

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Le2/m;->o:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Le2/m;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Le2/k;

    invoke-direct {v1, p0, p1}, Le2/k;-><init>(Le2/m;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method
