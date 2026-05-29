.class final Le2/rd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/rd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Le2/rd;


# direct methods
.method public constructor <init>(Le2/rd;)V
    .registers 2

    iput-object p1, p0, Le2/rd$a;->b:Le2/rd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .registers 6

    iget-object v0, p0, Le2/rd$a;->b:Le2/rd;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le2/rd;->oView:Le2/RadarView;

    if-eqz v0, :cond_0

    double-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
