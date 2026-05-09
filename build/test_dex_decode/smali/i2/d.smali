.class public final Li2/d;
.super Li2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/d$a;
    }
.end annotation


# instance fields
.field public e:[D

.field public f:Li2/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li2/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSConstructor;
    .end annotation

    const-string v0, "slider"

    invoke-direct {p0, p1, v0}, Li2/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    instance-of p1, p2, Lorg/mozilla/javascript/NativeArray;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p2}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v0

    long-to-int p1, v0

    new-array v0, p1, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p2, v1}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/Context;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :cond_1
    iput-object v0, p0, Li2/d;->e:[D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[D)V
    .locals 1

    const-string v0, "slider"

    invoke-direct {p0, p1, v0}, Li2/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Li2/d;->e:[D

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)D
    .locals 6

    iget-object v0, p0, Li2/d;->e:[D

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "delta"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    iget-object p1, p0, Li2/d;->e:[D

    aget-wide v0, p1, v1

    return-wide v0

    :pswitch_1
    iget-object p1, p0, Li2/d;->e:[D

    aget-wide v0, p1, v4

    return-wide v0

    :pswitch_2
    iget-object p1, p0, Li2/d;->e:[D

    aget-wide v0, p1, v2

    return-wide v0

    :pswitch_3
    iget-object p1, p0, Li2/d;->e:[D

    aget-wide v0, p1, v3

    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a564 -> :sswitch_3
        0x1a652 -> :sswitch_2
        0x5b0bbb8 -> :sswitch_1
        0x432bbd79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "SliderSetting"

    return-object v0
.end method

.method public getCurrentValue()D
    .locals 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getCurrentValue"
    .end annotation

    iget-object v0, p0, Li2/d;->e:[D

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "getName"
    .end annotation

    iget-object v0, p0, Li2/c;->b:Ljava/lang/String;

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

.method public isVisible()Z
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "isVisible"
    .end annotation

    invoke-super {p0}, Li2/c;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setOnCurrentValueChangedListener(Ljava/lang/Object;)Li2/d;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setOnCurrentValueChangedListener"
    .end annotation

    .line 1
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    const-class v0, Li2/d$a;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li2/d$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Li2/d;->f:Li2/d$a;

    return-object p0
.end method

.method public setVisibility(Z)V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
        value = "setVisibility"
    .end annotation

    invoke-super {p0, p1}, Li2/c;->setVisibility(Z)V

    return-void
.end method
