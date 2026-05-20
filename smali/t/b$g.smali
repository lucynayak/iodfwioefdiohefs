.class public final Lt/b$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/b;->k(Landroid/view/ViewGroup;Lt/m;Lt/m;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mViewBounds:Lt/b$i;


# direct methods
.method public constructor <init>(Lt/b$i;)V
    .registers 2

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lt/b$g;->mViewBounds:Lt/b$i;

    return-void
.end method
