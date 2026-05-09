.class public final Li2/f;
.super Li2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/f$a;
    }
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Li2/f$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li2/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSConstructor;
    .end annotation

    const-string v0, "text-field"

    invoke-direct {p0, p1, v0}, Li2/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Li2/f;->e:Ljava/lang/String;

    iput-object p3, p0, Li2/f;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "TextFieldSetting"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getName"
    .end annotation

    iget-object v0, p0, Li2/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getText"
    .end annotation

    iget-object v0, p0, Li2/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getType"
    .end annotation

    iget-object v0, p0, Li2/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getValue"
    .end annotation

    iget-object v0, p0, Li2/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "isVisible"
    .end annotation

    invoke-super {p0}, Li2/c;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setOnTextChangedListener(Ljava/lang/Object;)Li2/f;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setOnTextChangedListener"
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    const-class v0, Li2/f$a;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li2/f$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Li2/f;->g:Li2/f$a;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setText"
    .end annotation

    iput-object p1, p0, Li2/f;->f:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setVisibility"
    .end annotation

    invoke-super {p0, p1}, Li2/c;->setVisibility(Z)V

    return-void
.end method
