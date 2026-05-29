.class public final Lt/c$a;
.super Lt/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/c;->J(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lt/c$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lt/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt/f;)V
    .registers 4

    iget-object v0, p0, Lt/c$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lt/r;->c(Landroid/view/View;F)V

    .line 1
    sget-object v0, Lt/r;->a:Lt/t;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p0}, Lt/f;->v(Lt/f$d;)Lt/f;

    return-void
.end method
