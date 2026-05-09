.class public final Lt/b$h;
.super Lt/i;
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
.field public final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lt/b$h;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lt/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt/f;)V
    .registers 4

    iget-object v0, p0, Lt/b$h;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lt/q;->a(Landroid/view/ViewGroup;Z)V

    invoke-virtual {p1, p0}, Lt/f;->v(Lt/f$d;)Lt/f;

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lt/b$h;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lt/q;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lt/b$h;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lt/q;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
