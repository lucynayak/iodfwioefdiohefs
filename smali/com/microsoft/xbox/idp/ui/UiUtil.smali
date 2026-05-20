.class public final Lcom/microsoft/xbox/idp/ui/UiUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScroll(Landroid/widget/ScrollView;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static ensureClickableSpanOnUnderlineSpan(Landroid/widget/TextView;ILandroid/text/style/ClickableSpan;)V
    .registers 6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    const-class v1, Landroid/text/style/UnderlineSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/UnderlineSpan;

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    const/16 v2, 0x21

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static ensureErrorButtonsFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Z
    .registers 5

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_error_buttons:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->hasFragment(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget p1, p1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->leftButtonTextId:I

    const-string v2, "ARG_LEFT_ERROR_BUTTON_STRING_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-class p1, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;

    invoke-static {p1, p0, v0, v1}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ensureErrorFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Z
    .registers 4

    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_body_fragment:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->hasFragment(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->errorFragmentClass:Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/idp/compat/BaseFragment;",
            ">;",
            "Lcom/microsoft/xbox/idp/compat/BaseActivity;",
            "I",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->hasFragment(I)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/compat/BaseFragment;

    invoke-virtual {p0, p3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2, p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->addFragment(ILcom/microsoft/xbox/idp/compat/BaseFragment;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object p1, Lcom/microsoft/xbox/idp/ui/UiUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ensureGamerTagCreationFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z
    .registers 4

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0, p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static ensureHeaderFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z
    .registers 4

    const-class v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0, p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static ensureWelcomeFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;IZLandroid/os/Bundle;)Z
    .registers 4

    if-eqz p2, :cond_0

    const-class p2, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    :goto_0
    invoke-static {p2, p0, p1, p3}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    const-class p2, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    goto :goto_0
.end method
