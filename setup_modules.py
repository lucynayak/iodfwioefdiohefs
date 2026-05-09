"""
Run this script once to create the modules directory and smali files.
Usage: python setup_modules.py
"""
import os

BASE = r"C:\Users\triggertrash\Desktop\horrible\smali\dev\virus\variable\modules"
os.makedirs(BASE, exist_ok=True)

files = {}

files["Keystrokes.smali"] = '''.class public final Ldev/virus/variable/modules/Keystrokes;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final anchorView:Landroid/view/View;

.field public popup:Landroid/widget/PopupWindow;

.field public tvW:Landroid/widget/TextView;

.field public tvA:Landroid/widget/TextView;

.field public tvS:Landroid/widget/TextView;

.field public tvD:Landroid/widget/TextView;

.field public tvJump:Landroid/widget/TextView;

.field public tvSneak:Landroid/widget/TextView;

.field public posX:I

.field public posY:I

.field public offsetX:I

.field public offsetY:I

.field public volatile bFwd:Z

.field public volatile bBack:Z

.field public volatile bLeft:Z

.field public volatile bRight:Z

.field public volatile bJump:Z

.field public volatile bSneak:Z


# direct methods

# Helper: creates a styled key TextView
.method private static A(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6
    # p0 = Context, p1 = label string

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # Text color: white
    const v1, 0xFFFFFFFF

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    # Background: dark gray
    const v1, 0xFF2D2D2D

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    # Padding: 12px each side
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    # Text size: 13sp
    const/4 v1, 0x2

    const v2, 0x41500000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    # Gravity: CENTER
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 10
    # p0=this, p1=Context, p2=View(anchor), p3=LayoutInflater

    const-string v0, "Keystrokes"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Player"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p2, p0, Ldev/virus/variable/modules/Keystrokes;->anchorView:Landroid/view/View;

    # Create root LinearLayout (VERTICAL)
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    # Semi-transparent dark background
    const v1, 0xCC000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x6

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    # ---- ROW 1: W key (centered) ----
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v2, "W"

    invoke-static {p1, v2}, Ldev/virus/variable/modules/Keystrokes;->A(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/virus/variable/modules/Keystrokes;->tvW:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    # ---- ROW 2: A S D keys ----
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v2, "A"

    invoke-static {p1, v2}, Ldev/virus/variable/modules/Keystrokes;->A(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/virus/variable/modules/Keystrokes;->tvA:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v2, "S"

    invoke-static {p1, v2}, Ldev/virus/variable/modules/Keystrokes;->A(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/virus/variable/modules/Keystrokes;->tvS:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v2, "D"

    invoke-static {p1, v2}, Ldev/virus/variable/modules/Keystrokes;->A(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/virus/variable/modules/Keystrokes;->tvD:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    # ---- ROW 3: Jump Sneak ----
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v2, "Spc"

    invoke-static {p1, v2}, Ldev/virus/variable/modules/Keystrokes;->A(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/virus/variable/modules/Keystrokes;->tvJump:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v2, "Sft"

    invoke-static {p1, v2}, Ldev/virus/variable/modules/Keystrokes;->A(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/virus/variable/modules/Keystrokes;->tvSneak:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    # Set touch listener for drag
    new-instance v1, Ldev/virus/variable/modules/KeystrokesTouch;

    invoke-direct {v1, p0}, Ldev/virus/variable/modules/KeystrokesTouch;-><init>(Ldev/virus/variable/modules/Keystrokes;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    # Create PopupWindow (WRAP_CONTENT x WRAP_CONTENT)
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iput-object v1, p0, Ldev/virus/variable/modules/Keystrokes;->popup:Landroid/widget/PopupWindow;

    # Default position: 0, 0 (center of screen with CENTER gravity)
    const/4 v2, 0x0

    iput v2, p0, Ldev/virus/variable/modules/Keystrokes;->posX:I

    iput v2, p0, Ldev/virus/variable/modules/Keystrokes;->posY:I

    iput v2, p0, Ldev/virus/variable/modules/Keystrokes;->offsetX:I

    iput v2, p0, Ldev/virus/variable/modules/Keystrokes;->offsetY:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bFwd:Z

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bBack:Z

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bLeft:Z

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bRight:Z

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bJump:Z

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bSneak:Z

    return-void
.end method


# virtual methods

# Called on disable - dismiss popup
.method public final E()V
    .registers 2

    iget-object v0, p0, Ldev/virus/variable/modules/Keystrokes;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

# Called on enable - show popup
.method public final G()V
    .registers 7

    iget-object v0, p0, Ldev/virus/variable/modules/Keystrokes;->popup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ldev/virus/variable/modules/Keystrokes;->anchorView:Landroid/view/View;

    iget v2, p0, Ldev/virus/variable/modules/Keystrokes;->posX:I

    iget v3, p0, Ldev/virus/variable/modules/Keystrokes;->posY:I

    # Gravity.CENTER = 0x11
    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

# Main tick - called every game tick on game thread
.method public final J()V
    .registers 5
    # p0 = this

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :cond_0

    # Read forward (button 1)
    const/4 v1, 0x1

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v2

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bFwd:Z

    # Read back (button 2)
    const/4 v1, 0x2

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v2

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bBack:Z

    # Read left (button 3)
    const/4 v1, 0x3

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v2

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bLeft:Z

    # Read right (button 4)
    const/4 v1, 0x4

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v2

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bRight:Z

    # Read jump (button -3)
    const/4 v1, -0x3

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v2

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bJump:Z

    # Read sneak (button -2)
    const/4 v1, -0x2

    invoke-static {v1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->isMoveButtonPressed(I)Z

    move-result v2

    iput-boolean v2, p0, Ldev/virus/variable/modules/Keystrokes;->bSneak:Z

    # Post UI update runnable
    new-instance v1, Ldev/virus/variable/modules/KeystrokesRunnable;

    invoke-direct {v1, p0}, Ldev/virus/variable/modules/KeystrokesRunnable;-><init>(Ldev/virus/variable/modules/Keystrokes;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

# Load position from saved JSON config
.method public final K(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0

    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ldev/virus/variable/modules/Keystrokes;->posX:I

    const-string v0, "y"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldev/virus/variable/modules/Keystrokes;->posY:I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lc2/b;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/virus/variable/modules/Keystrokes;->popup:Landroid/widget/PopupWindow;

    iget v0, p0, Ldev/virus/variable/modules/Keystrokes;->posX:I

    iget v1, p0, Ldev/virus/variable/modules/Keystrokes;->posY:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    :catch_0
    :cond_0
    return-void
.end method

# Save position to JSON config
.method public final M()V
    .registers 5

    invoke-super {p0}, Lc2/b;->M()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Ldev/virus/variable/modules/Keystrokes;->posX:I

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Ldev/virus/variable/modules/Keystrokes;->posY:I

    const-string v2, "y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lc2/b;->b:Lorg/json/JSONObject;

    const-string v2, "position"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
'''

files["KeystrokesRunnable.smali"] = '''.class public final Ldev/virus/variable/modules/KeystrokesRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ldev/virus/variable/modules/Keystrokes;


# direct methods
.method public constructor <init>(Ldev/virus/variable/modules/Keystrokes;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/virus/variable/modules/KeystrokesRunnable;->a:Ldev/virus/variable/modules/Keystrokes;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7
    # p0 = this

    iget-object v0, p0, Ldev/virus/variable/modules/KeystrokesRunnable;->a:Ldev/virus/variable/modules/Keystrokes;

    # Get accent color (from MinecraftActivity.h), fallback green
    const v1, 0xFF00E676

    :try_start_0
    sget-object v2, Ldev/virus/variable/app/MinecraftActivity;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0

    # Inactive color: dark gray
    const v2, 0xFF2D2D2D

    # ---- Update W (forward) ----
    iget-object v3, v0, Ldev/virus/variable/modules/Keystrokes;->tvW:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/modules/Keystrokes;->bFwd:Z

    if-eqz v4, :w_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :check_a

    :w_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # ---- Update A (left) ----
    :check_a
    iget-object v3, v0, Ldev/virus/variable/modules/Keystrokes;->tvA:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/modules/Keystrokes;->bLeft:Z

    if-eqz v4, :a_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :check_s

    :a_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # ---- Update S (back) ----
    :check_s
    iget-object v3, v0, Ldev/virus/variable/modules/Keystrokes;->tvS:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/modules/Keystrokes;->bBack:Z

    if-eqz v4, :s_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :check_d

    :s_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # ---- Update D (right) ----
    :check_d
    iget-object v3, v0, Ldev/virus/variable/modules/Keystrokes;->tvD:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/modules/Keystrokes;->bRight:Z

    if-eqz v4, :d_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :check_jump

    :d_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # ---- Update Jump ----
    :check_jump
    iget-object v3, v0, Ldev/virus/variable/modules/Keystrokes;->tvJump:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/modules/Keystrokes;->bJump:Z

    if-eqz v4, :jump_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :check_sneak

    :jump_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # ---- Update Sneak ----
    :check_sneak
    iget-object v3, v0, Ldev/virus/variable/modules/Keystrokes;->tvSneak:Landroid/widget/TextView;

    iget-boolean v4, v0, Ldev/virus/variable/modules/Keystrokes;->bSneak:Z

    if-eqz v4, :sneak_off

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :done

    :sneak_off
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :done
    return-void
.end method
'''

files["KeystrokesTouch.smali"] = '''.class public final Ldev/virus/variable/modules/KeystrokesTouch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Ldev/virus/variable/modules/Keystrokes;


# direct methods
.method public constructor <init>(Ldev/virus/variable/modules/Keystrokes;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/virus/variable/modules/KeystrokesTouch;->a:Ldev/virus/variable/modules/Keystrokes;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    # p0=this, p1=View(will reuse as module), p2=MotionEvent

    # Get module reference into p1 (reusing View param register)
    iget-object p1, p0, Ldev/virus/variable/modules/KeystrokesTouch;->a:Ldev/virus/variable/modules/Keystrokes;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :action_down

    const/4 v1, 0x2

    if-eq v0, v1, :action_move

    goto :done

    :action_down
    # Record initial offset: offsetX = posX - rawX
    iget v0, p1, Ldev/virus/variable/modules/Keystrokes;->posX:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Ldev/virus/variable/modules/Keystrokes;->offsetX:I

    iget v0, p1, Ldev/virus/variable/modules/Keystrokes;->posY:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Ldev/virus/variable/modules/Keystrokes;->offsetY:I

    goto :done

    :action_move
    # Update posX = rawX + offsetX
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Ldev/virus/variable/modules/Keystrokes;->offsetX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Ldev/virus/variable/modules/Keystrokes;->posX:I

    # Update posY = rawY + offsetY
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p1, Ldev/virus/variable/modules/Keystrokes;->offsetY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Ldev/virus/variable/modules/Keystrokes;->posY:I

    # Move popup to new position
    iget-object v2, p1, Ldev/virus/variable/modules/Keystrokes;->popup:Landroid/widget/PopupWindow;

    iget v0, p1, Ldev/virus/variable/modules/Keystrokes;->posX:I

    iget v1, p1, Ldev/virus/variable/modules/Keystrokes;->posY:I

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    :done
    const/4 v0, 0x1

    return v0
.end method
'''

files["ModPE.smali"] = '''.class public final Ldev/virus/variable/modules/ModPE;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    # p0=this, p1=Context

    const-string v0, "ModPE"

    const/4 v1, 0x0

    const-string v2, "Misc"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    iput-object p1, p0, Ldev/virus/variable/modules/ModPE;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods

# Called when module button is clicked (non-toggleable module)
.method public final D()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldev/virus/variable/modules/ModPE;->a:Landroid/content/Context;

    const-class v2, Ldev/virus/variable/app/ScriptManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Ldev/virus/variable/modules/ModPE;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
'''

for fname, content in files.items():
    fpath = os.path.join(BASE, fname)
    with open(fpath, 'w', encoding='utf-8') as f:
        f.write(content)
    print(f"Created: {fpath}")

print("\\nAll done! modules directory and smali files created.")
