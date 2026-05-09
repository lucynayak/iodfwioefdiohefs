.class public Lr/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/accessibility/AccessibilityManager;

.field public final c:Lr/c$a;

.field public d:Lr/b;

.field public e:Lr/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Ly1/a;->h:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lr/c;->b:Landroid/view/accessibility/AccessibilityManager;

    new-instance p2, Lr/c$a;

    invoke-direct {p2, p0}, Lr/c$a;-><init>(Lr/c;)V

    iput-object p2, p0, Lr/c;->c:Lr/c$a;

    .line 3
    new-instance v0, Le0/b;

    invoke-direct {v0, p2}, Le0/b;-><init>(Le0/a;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lr/c;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method public static synthetic a(Lr/c;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lr/c;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method private setClickableOrFocusableBasedOnAccessibility(Z)V
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lr/c;->e:Lr/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr/a;->b()V

    :cond_0
    sget-object v0, Ld0/l;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lr/c;->e:Lr/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr/a;->a()V

    :cond_0
    iget-object v0, p0, Lr/c;->b:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lr/c;->c:Lr/c$a;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Le0/b;

    invoke-direct {v2, v1}, Le0/b;-><init>(Le0/a;)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :goto_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lr/c;->d:Lr/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr/b;->a()V

    :cond_0
    return-void
.end method

.method public setOnAttachStateChangeListener(Lr/a;)V
    .registers 2

    iput-object p1, p0, Lr/c;->e:Lr/a;

    return-void
.end method

.method public setOnLayoutChangeListener(Lr/b;)V
    .registers 2

    iput-object p1, p0, Lr/c;->d:Lr/b;

    return-void
.end method
