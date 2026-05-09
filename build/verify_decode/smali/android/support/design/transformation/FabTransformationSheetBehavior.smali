.class public Landroid/support/design/transformation/FabTransformationSheetBehavior;
.super Landroid/support/design/transformation/FabTransformationBehavior;
.source "SourceFile"


# instance fields
.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final s(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p3, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->g:Ljava/util/HashMap;

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/support/design/widget/CoordinatorLayout$f;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$f;

    .line 2
    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$f;->a:Landroid/support/design/widget/CoordinatorLayout$c;

    .line 3
    instance-of v5, v5, Landroid/support/design/transformation/FabTransformationScrimBehavior;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eq v4, p2, :cond_5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    iget-object v5, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->g:Ljava/util/HashMap;

    if-nez p3, :cond_4

    if-eqz v5, :cond_5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x4

    :goto_2
    sget-object v6, Ld0/l;->a:Ljava/util/WeakHashMap;

    .line 4
    invoke-virtual {v4, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-nez p3, :cond_7

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationSheetBehavior;->g:Ljava/util/HashMap;

    .line 6
    :cond_7
    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/design/transformation/ExpandableTransformationBehavior;->s(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method public final y(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$b;
    .locals 1

    if-eqz p2, :cond_0

    const p2, 0x7f020009

    goto :goto_0

    :cond_0
    const p2, 0x7f020008

    :goto_0
    new-instance v0, Landroid/support/design/transformation/FabTransformationBehavior$b;

    invoke-direct {v0}, Landroid/support/design/transformation/FabTransformationBehavior$b;-><init>()V

    invoke-static {p1, p2}, Lh/g;->a(Landroid/content/Context;I)Lh/g;

    move-result-object p1

    iput-object p1, v0, Landroid/support/design/transformation/FabTransformationBehavior$b;->a:Lh/g;

    new-instance p1, Ld1/a;

    invoke-direct {p1}, Ld1/a;-><init>()V

    iput-object p1, v0, Landroid/support/design/transformation/FabTransformationBehavior$b;->b:Ld1/a;

    return-object v0
.end method
