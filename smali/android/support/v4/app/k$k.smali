.class public final Landroid/support/v4/app/k$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/g$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Landroid/support/v4/app/d;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/d;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/support/v4/app/k$k;->a:Z

    iput-object p1, p0, Landroid/support/v4/app/k$k;->b:Landroid/support/v4/app/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    iget v0, p0, Landroid/support/v4/app/k$k;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/k$k;->b:Landroid/support/v4/app/d;

    iget-object v3, v3, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    iget-object v4, v3, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_1

    iget-object v5, v3, Landroid/support/v4/app/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/g;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/g;->X(Landroid/support/v4/app/g$e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/k$k;->b:Landroid/support/v4/app/d;

    iget-object v3, v1, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/k;

    iget-boolean v4, p0, Landroid/support/v4/app/k$k;->a:Z

    xor-int/2addr v0, v2

    invoke-virtual {v3, v1, v4, v0, v2}, Landroid/support/v4/app/k;->p(Landroid/support/v4/app/d;ZZZ)V

    return-void
.end method
