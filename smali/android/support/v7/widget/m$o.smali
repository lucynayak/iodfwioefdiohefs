.class public final Landroid/support/v7/widget/m$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/m$o$a;
    }
.end annotation


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/m$o$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/m$o;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/m$o;->b:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/m$o$a;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/m$o;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m$o$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/m$o$a;

    invoke-direct {v0}, Landroid/support/v7/widget/m$o$a;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/m$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method
