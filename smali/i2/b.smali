.class public final Li2/b;
.super Li2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/b$a;
    }
.end annotation


# instance fields
.field public e:[Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Li2/b$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Li2/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSConstructor;
    .end annotation

    const-string v0, "mode"

    invoke-direct {p0, p1, v0}, Li2/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Li2/b;->A(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li2/b;->e:[Ljava/lang/String;

    invoke-static {p2}, Li2/b;->A(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Li2/b;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    const-string v0, "mode"

    invoke-direct {p0, p1, v0}, Li2/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Li2/b;->e:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p1, p2, p1

    iput-object p1, p0, Li2/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static A(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5

    instance-of v0, p0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "ModeSetting"

    return-object v0
.end method

.method public getCurrentMode()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getCurrentMode"
    .end annotation

    iget-object v0, p0, Li2/b;->f:Ljava/lang/String;

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

.method public setOnModeSelectedListener(Ljava/lang/Object;)Li2/b;
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setOnModeSelectedListener"
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    const-class v0, Li2/b$a;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li2/b$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Li2/b;->g:Li2/b$a;

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
