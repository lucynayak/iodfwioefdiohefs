.class public Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;
    }
.end annotation


# instance fields
.field private _progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static buildWithBaseScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Header:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Body:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    new-instance v0, Lcom/microsoft/onlineid/internal/Resources;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const-string p3, "base_screen"

    invoke-virtual {v0, p3}, Lcom/microsoft/onlineid/internal/Resources;->getLayout(Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "baseScreenProgressView"

    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/microsoft/onlineid/internal/ui/ProgressView;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->_progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    const-string p2, "baseScreenHeader"

    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "baseScreenBody"

    invoke-virtual {v0, p3}, Lcom/microsoft/onlineid/internal/Resources;->getId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Header:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Body:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public showProgressViewAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->_progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->_progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->startAnimation()Z

    return-void
.end method

.method public stopProgressAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->_progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ui/ProgressView;->stopAnimation()Z

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;->_progress:Lcom/microsoft/onlineid/internal/ui/ProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
