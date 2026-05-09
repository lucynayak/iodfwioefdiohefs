.class public Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
.super Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;
    }
.end annotation


# instance fields
.field public animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly2/f;
    .end annotation
.end field

.field public fillAfter:Z
    .annotation runtime Ly2/a;
    .end annotation
.end field

.field public offsetMs:I
    .annotation runtime Ly2/a;
    .end annotation
.end field

.field public target:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;
    .annotation runtime Ly2/a;
    .end annotation
.end field

.field public targetId:Ljava/lang/String;
    .annotation runtime Ly2/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;-><init>()V

    sget-object v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->View:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->target:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->targetId:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->fillAfter:Z

    return-void
.end method


# virtual methods
.method public compile()Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->targetId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object v0

    return-object v0
.end method

.method public compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 5

    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->animations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$1;->$SwitchMap$com$microsoft$xbox$xle$anim$XLEMAASAnimation$TargetType:[I

    iget-object v2, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->target:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;

    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    iget v3, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->offsetMs:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-direct {v2, v1, v3}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    invoke-direct {v0, v2}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;-><init>(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;-><init>(Landroid/view/animation/Animation;)V

    iget-boolean v1, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->fillAfter:Z

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->setFillAfter(Z)V

    :goto_2
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;->setTargetView(Landroid/view/View;)V

    return-object v0
.end method

.method public compileWithRoot(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->targetId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object p1

    return-object p1
.end method
