.class public final Lh0/i$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lh0/i$f;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/support/v7/view/menu/e;

.field public i:Landroid/support/v7/view/menu/c;

.field public j:Lm0/c;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh0/i$g;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh0/i$g;->n:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/e;)V
    .locals 2

    iget-object v0, p0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lh0/i$g;->i:Landroid/support/v7/view/menu/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/e;->v(Landroid/support/v7/view/menu/i;)V

    :cond_1
    iput-object p1, p0, Lh0/i$g;->h:Landroid/support/v7/view/menu/e;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lh0/i$g;->i:Landroid/support/v7/view/menu/c;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/e;->b(Landroid/support/v7/view/menu/i;)V

    :cond_2
    return-void
.end method
