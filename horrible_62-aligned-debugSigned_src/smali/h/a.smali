.class public final Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf0/b;

.field public static final b:Lf0/a;

.field public static final c:Lf0/c;

.field public static final d:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v0, Lf0/b;

    invoke-direct {v0}, Lf0/b;-><init>()V

    sput-object v0, Lh/a;->a:Lf0/b;

    new-instance v0, Lf0/a;

    invoke-direct {v0}, Lf0/a;-><init>()V

    sput-object v0, Lh/a;->b:Lf0/a;

    new-instance v0, Lf0/c;

    invoke-direct {v0}, Lf0/c;-><init>()V

    sput-object v0, Lh/a;->c:Lf0/c;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lh/a;->d:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method
