.class public Landroid/support/design/internal/NavigationMenuView;
.super Landroid/support/v7/widget/m;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/m;->setLayoutManager(Landroid/support/v7/widget/m$j;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/support/v7/view/menu/e;)V
    .registers 2

    return-void
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
