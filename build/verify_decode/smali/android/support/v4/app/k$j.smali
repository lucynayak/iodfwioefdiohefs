.class public final Landroid/support/v4/app/k$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/k$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final synthetic d:Landroid/support/v4/app/k;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/k;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/k$j;->d:Landroid/support/v4/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v4/app/k$j;->b:I

    const/4 p1, 0x1

    iput p1, p0, Landroid/support/v4/app/k$j;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/d;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/k$j;->d:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v4/app/k$j;->b:I

    if-gez v1, :cond_0

    .line 1
    iget-object v0, v0, Landroid/support/v4/app/g;->t:Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/app/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k$j;->d:Landroid/support/v4/app/k;

    iget v1, p0, Landroid/support/v4/app/k$j;->b:I

    iget v2, p0, Landroid/support/v4/app/k$j;->c:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/v4/app/k;->l0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    return p1
.end method
