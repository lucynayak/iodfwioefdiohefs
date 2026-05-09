.class public Li2/c;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    iput-object p1, p0, Li2/c;->b:Ljava/lang/String;

    iput-object p2, p0, Li2/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static getCurrentMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getCurrentMode"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p0

    invoke-virtual {p0}, Li2/c;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Li2/b;

    invoke-virtual {p0}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The \""

    const-string v1, "\" setting is not an instance of \"ModeSetting\""

    .line 1
    invoke-static {v0, p1, v1}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCurrentValue(Ljava/lang/String;Ljava/lang/String;)D
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getCurrentValue"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p0

    invoke-virtual {p0}, Li2/c;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Li2/d;

    invoke-virtual {p0}, Li2/d;->getCurrentValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The \""

    const-string v1, "\" setting is not an instance of \"SliderSetting\"."

    .line 1
    invoke-static {v0, p1, v1}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getText"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p0

    invoke-virtual {p0}, Li2/c;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text-field"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Li2/f;

    invoke-virtual {p0}, Li2/f;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The \""

    const-string v1, "\" setting is not an instance of \"TextFieldSetting\"."

    .line 1
    invoke-static {v0, p1, v1}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getType"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p0

    invoke-virtual {p0}, Li2/c;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isActive(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isActive"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p0

    invoke-virtual {p0}, Li2/c;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Li2/e;

    invoke-virtual {p0}, Li2/e;->isActive()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The \""

    const-string v1, "\" setting is not an instance of \"StateSetting\"."

    .line 1
    invoke-static {v0, p1, v1}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isVisible(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "isVisible"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p0

    invoke-virtual {p0}, Li2/c;->isVisible()Z

    move-result p0

    return p0
.end method

.method public static setVisibility(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setVisibility"
    .end annotation

    invoke-static {p0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p0

    invoke-virtual {p0, p2}, Li2/c;->setVisibility(Z)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Setting"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Li2/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Li2/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    iget-object v0, p0, Li2/c;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public setVisibility(Z)V
    .registers 3

    iget-object v0, p0, Li2/c;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
