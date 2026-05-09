.class public final Ldev/virus/variable/app/Keystrokes;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Landroid/content/Context;

.field public final p:Landroid/view/View;

.field public q:Landroid/widget/PopupWindow;

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public tvW:Landroid/widget/TextView;

.field public tvA:Landroid/widget/TextView;

.field public tvS:Landroid/widget/TextView;

.field public tvD:Landroid/widget/TextView;

.field public tvJump:Landroid/widget/TextView;

.field public tvSneak:Landroid/widget/TextView;

.field public bFwd:Z

.field public bBack:Z

.field public bLeft:Z

.field public bRight:Z

.field public bJump:Z

.field public bSneak:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 10

    const-string v0, "Keystrokes"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p1, p0, Ldev/virus/variable/app/Keystrokes;->o:Landroid/content/Context;

    iput-object p2, p0, Ldev/virus/variable/app/Keystrokes;->p:Landroid/view/View;

    # Create root horizontal LinearLayout
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, -0xDFDFE0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x4

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    # Create W key
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "W"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, -0xD2D2D3

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x18

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-object v5, p0, Ldev/virus/variable/app/Keystrokes;->tvW:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # Create A key
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "A"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, -0xD2D2D3

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x18

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-object v5, p0, Ldev/virus/variable/app/Keystrokes;->tvA:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # Create S key
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "S"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, -0xD2D2D3

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x18

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-object v5, p0, Ldev/virus/variable/app/Keystrokes;->tvS:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # Create D key
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "D"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, -0xD2D2D3

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x18

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-object v5, p0, Ldev/virus/variable/app/Keystrokes;->tvD:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # Create Spc (Jump) key
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "Spc"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, -0xD2D2D3

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x18

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-object v5, p0, Ldev/virus/variable/app/Keystrokes;->tvJump:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # Create Sft (Sneak) key
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "Sft"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, -0xD2D2D3

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x18

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-object v5, p0, Ldev/virus/variable/app/Keystrokes;->tvSneak:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # Set touch listener on root
    new-instance v5, Ldev/virus/variable/app/KeystrokesTouch;

    invoke-direct {v5, p0}, Ldev/virus/variable/app/KeystrokesTouch;-><init>(Ldev/virus/variable/app/Keystrokes;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    # Create PopupWindow
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    invoke-direct {v5, v4, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Ldev/virus/variable/app/Keystrokes;->q:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 2

    iget-object v0, p0, Ldev/virus/variable/app/Keystrokes;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final G()V
    .registers 6

    iget-object v0, p0, Ldev/virus/variable/app/Keystrokes;->q:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ldev/virus/variable/app/Keystrokes;->p:Landroid/view/View;

    iget v2, p0, Ldev/virus/variable/app/Keystrokes;->t:I

    iget v3, p0, Ldev/virus/variable/app/Keystrokes;->u:I

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final J()V
    .registers 3

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :cond_0

    # Forward (1)
    const/4 v1, 0x1

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    iput-boolean v1, p0, Ldev/virus/variable/app/Keystrokes;->bFwd:Z

    # Back (2)
    const/4 v1, 0x2

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    iput-boolean v1, p0, Ldev/virus/variable/app/Keystrokes;->bBack:Z

    # Left (3)
    const/4 v1, 0x3

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    iput-boolean v1, p0, Ldev/virus/variable/app/Keystrokes;->bLeft:Z

    # Right (4)
    const/4 v1, 0x4

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    iput-boolean v1, p0, Ldev/virus/variable/app/Keystrokes;->bRight:Z

    # Jump (-3)
    const/4 v1, -0x3

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    iput-boolean v1, p0, Ldev/virus/variable/app/Keystrokes;->bJump:Z

    # Sneak (-2)
    const/4 v1, -0x2

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v1

    iput-boolean v1, p0, Ldev/virus/variable/app/Keystrokes;->bSneak:Z

    # Post runnable to UI thread
    new-instance v1, Ldev/virus/variable/app/KeystrokesRunnable;

    invoke-direct {v1, p0}, Ldev/virus/variable/app/KeystrokesRunnable;-><init>(Ldev/virus/variable/app/Keystrokes;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final K(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ldev/virus/variable/app/Keystrokes;->t:I

    const-string v0, "y"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldev/virus/variable/app/Keystrokes;->u:I

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/virus/variable/app/Keystrokes;->q:Landroid/widget/PopupWindow;

    iget v0, p0, Ldev/virus/variable/app/Keystrokes;->t:I

    iget v1, p0, Ldev/virus/variable/app/Keystrokes;->u:I

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

    iget v1, p0, Ldev/virus/variable/app/Keystrokes;->t:I

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Ldev/virus/variable/app/Keystrokes;->u:I

    const-string v2, "y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lc2/b;->b:Lorg/json/JSONObject;

    const-string v2, "position"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
