.class public final Landroid/support/v7/view/menu/c$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroid/support/v7/view/menu/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/c$a;->c:Landroid/support/v7/view/menu/c;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/view/menu/c$a;->b:I

    invoke-virtual {p0}, Landroid/support/v7/view/menu/c$a;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/view/menu/c$a;->c:Landroid/support/v7/view/menu/c;

    iget-object v0, v0, Landroid/support/v7/view/menu/c;->d:Landroid/support/v7/view/menu/e;

    .line 1
    iget-object v1, v0, Landroid/support/v7/view/menu/e;->v:Landroid/support/v7/view/menu/g;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->j()V

    iget-object v0, v0, Landroid/support/v7/view/menu/e;->j:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/g;

    if-ne v4, v1, :cond_0

    iput v3, p0, Landroid/support/v7/view/menu/c$a;->b:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/c$a;->b:I

    return-void
.end method

.method public final c(I)Landroid/support/v7/view/menu/g;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/menu/c$a;->c:Landroid/support/v7/view/menu/c;

    iget-object v0, v0, Landroid/support/v7/view/menu/c;->d:Landroid/support/v7/view/menu/e;

    .line 1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->j()V

    iget-object v0, v0, Landroid/support/v7/view/menu/e;->j:Ljava/util/ArrayList;

    .line 2
    iget-object v1, p0, Landroid/support/v7/view/menu/c$a;->c:Landroid/support/v7/view/menu/c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x0

    iget v1, p0, Landroid/support/v7/view/menu/c$a;->b:I

    if-ltz v1, :cond_0

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/g;

    return-object p1
.end method

.method public final getCount()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/view/menu/c$a;->c:Landroid/support/v7/view/menu/c;

    iget-object v0, v0, Landroid/support/v7/view/menu/c;->d:Landroid/support/v7/view/menu/e;

    .line 1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/e;->j()V

    iget-object v0, v0, Landroid/support/v7/view/menu/e;->j:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/view/menu/c$a;->c:Landroid/support/v7/view/menu/c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x0

    iget v1, p0, Landroid/support/v7/view/menu/c$a;->b:I

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/c$a;->c(I)Landroid/support/v7/view/menu/g;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/view/menu/c$a;->c:Landroid/support/v7/view/menu/c;

    iget-object p2, p2, Landroid/support/v7/view/menu/c;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0010

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/support/v7/view/menu/j$a;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/c$a;->c(I)Landroid/support/v7/view/menu/g;

    move-result-object p1

    invoke-interface {p3, p1}, Landroid/support/v7/view/menu/j$a;->b(Landroid/support/v7/view/menu/g;)V

    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/c$a;->b()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
