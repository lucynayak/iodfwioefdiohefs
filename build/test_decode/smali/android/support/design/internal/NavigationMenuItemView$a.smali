.class public final Landroid/support/design/internal/NavigationMenuItemView$a;
.super Ld0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/support/design/internal/NavigationMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/design/internal/NavigationMenuItemView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView$a;->c:Landroid/support/design/internal/NavigationMenuItemView;

    invoke-direct {p0}, Ld0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Le0/c;)V
    .locals 2

    .line 1
    sget-object v0, Ld0/b;->b:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Le0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView$a;->c:Landroid/support/design/internal/NavigationMenuItemView;

    iget-boolean p1, p1, Landroid/support/design/internal/NavigationMenuItemView;->y:Z

    .line 5
    iget-object p2, p2, Le0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method
