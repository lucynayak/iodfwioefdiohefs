.class public Lcom/microsoft/xbox/toolkit/anim/BackEaseInterpolator;
.super Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;
.source "SourceFile"


# instance fields
.field private amplitude:F


# direct methods
.method public constructor <init>(FLcom/microsoft/xbox/toolkit/anim/EasingMode;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;-><init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    iput p1, p0, Lcom/microsoft/xbox/toolkit/anim/BackEaseInterpolator;->amplitude:F

    return-void
.end method


# virtual methods
.method public getInterpolationCore(F)F
    .registers 10

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float v0, p1, p1

    mul-float v0, v0, p1

    float-to-double v0, v0

    iget v2, p0, Lcom/microsoft/xbox/toolkit/anim/BackEaseInterpolator;->amplitude:F

    mul-float v2, v2, p1

    float-to-double v2, v2

    float-to-double v4, p1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    sub-double/2addr v0, v4

    double-to-float p1, v0

    return p1
.end method
