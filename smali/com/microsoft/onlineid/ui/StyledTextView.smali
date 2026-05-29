.class public Lcom/microsoft/onlineid/ui/StyledTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/ui/StyledTextView;->applyAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/ui/StyledTextView;->applyAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/sdk/R$styleable;->StyledTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v3, Lcom/microsoft/onlineid/sdk/R$styleable;->StyledTextView_font:I

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/ui/Fonts;->valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/Fonts;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/ui/Fonts;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    :cond_0
    sget v3, Lcom/microsoft/onlineid/sdk/R$styleable;->StyledTextView_isUnderlined:I

    if-ne v1, v3, :cond_2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
