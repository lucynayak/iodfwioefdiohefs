.class public final Li2/a;
.super Li2/c;
.source "SourceFile"


# instance fields
.field public e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Li2/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .registers 4

    const-string v0, "Reset"

    const-string v1, "button"

    invoke-direct {p0, v0, v1}, Li2/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Li2/a;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSConstructor;
    .end annotation

    const-string v0, "button"

    invoke-direct {p0, p1, v0}, Li2/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    instance-of p1, p2, Lorg/mozilla/javascript/Function;

    if-eqz p1, :cond_0

    const-class p1, Landroid/view/View$OnClickListener;

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Li2/a;->e:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "ButtonSetting"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getName"
    .end annotation

    iget-object v0, p0, Li2/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getType"
    .end annotation

    iget-object v0, p0, Li2/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "isVisible"
    .end annotation

    invoke-super {p0}, Li2/c;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setVisibility(Z)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setVisibility"
    .end annotation

    invoke-super {p0, p1}, Li2/c;->setVisibility(Z)V

    return-void
.end method
