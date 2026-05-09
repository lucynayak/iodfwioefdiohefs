.class public final Li2/e;
.super Li2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/e$a;
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Li2/e$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Li2/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSConstructor;
    .end annotation

    const-string v0, "state"

    invoke-direct {p0, p1, v0}, Li2/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Li2/e;->e:Z

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "StateSetting"

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

.method public isActive()Z
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "isActive"
    .end annotation

    iget-boolean v0, p0, Li2/e;->e:Z

    return v0
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

.method public setOnStateToggleListener(Ljava/lang/Object;)Li2/e;
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setOnStateToggleListener"
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    const-class v0, Li2/e$a;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li2/e$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Li2/e;->f:Li2/e$a;

    return-object p0
.end method

.method public setVisibility(Z)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setVisibility"
    .end annotation

    invoke-super {p0, p1}, Li2/c;->setVisibility(Z)V

    return-void
.end method
