.class public Lcom/microsoft/onlineid/internal/ui/AccountHeaderView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/AccountHeaderView$CustomTypefaceSpan;
    }
.end annotation


# static fields
.field public static final MarginLargeDip:F = 16.0f

.field public static final MarginLogoDip:F = 9.3f

.field public static final MarginMediumDip:F = 8.0f

.field public static final SizeLogoDip:F = 32.0f

.field public static final TextColorTitle:I

.field public static final TextSizeLargeSP:F = 16.0f


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x58

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView;->TextColorTitle:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStyle(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 7

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView$CustomTypefaceSpan;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUISemiBold:Lcom/microsoft/onlineid/internal/ui/Fonts;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/ui/Fonts;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/internal/ui/AccountHeaderView$CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x102002c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/microsoft/onlineid/internal/ui/Dimensions;->convertDipToPixels(FLandroid/util/DisplayMetrics;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
