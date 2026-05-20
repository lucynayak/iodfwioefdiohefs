.class public Ld0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/b$a;
    }
.end annotation


# static fields
.field public static final b:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field public final a:Ld0/b$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Ld0/b;->b:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld0/b$a;

    invoke-direct {v0, p0}, Ld0/b$a;-><init>(Ld0/b;)V

    iput-object v0, p0, Ld0/b;->a:Ld0/b$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    sget-object v0, Ld0/b;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public b(Landroid/view/View;Le0/c;)V
    .registers 3

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    sget-object v0, Ld0/b;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
