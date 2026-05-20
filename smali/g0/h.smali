.class public abstract Lg0/h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lg0/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/h$b;,
        Lg0/h$a;
    }
.end annotation


# instance fields
.field public b:Z

.field public c:Z

.field public d:Landroid/database/Cursor;

.field public e:Landroid/content/Context;

.field public f:I

.field public g:Lg0/h$a;

.field public h:Lg0/h$b;

.field public i:Lg0/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg0/h;->c:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lg0/h;->d:Landroid/database/Cursor;

    iput-boolean v0, p0, Lg0/h;->b:Z

    iput-object p1, p0, Lg0/h;->e:Landroid/content/Context;

    const/4 p1, -0x1

    iput p1, p0, Lg0/h;->f:I

    new-instance p1, Lg0/h$a;

    invoke-direct {p1, p0}, Lg0/h$a;-><init>(Lg0/h;)V

    iput-object p1, p0, Lg0/h;->g:Lg0/h$a;

    new-instance p1, Lg0/h$b;

    invoke-direct {p1, p0}, Lg0/h$b;-><init>(Lg0/h;)V

    iput-object p1, p0, Lg0/h;->h:Lg0/h$b;

    return-void
.end method


# virtual methods
.method public abstract b(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method public c(Landroid/database/Cursor;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lg0/h;->d:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lg0/h;->g:Lg0/h$a;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lg0/h;->h:Lg0/h$b;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iput-object p1, p0, Lg0/h;->d:Landroid/database/Cursor;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lg0/h;->g:Lg0/h$a;

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v1, p0, Lg0/h;->h:Lg0/h$b;

    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lg0/h;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg0/h;->b:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    iput p1, p0, Lg0/h;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg0/h;->b:Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void
.end method

.method public abstract d(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public abstract e(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getCount()I
    .registers 2

    iget-boolean v0, p0, Lg0/h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg0/h;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-boolean v0, p0, Lg0/h;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg0/h;->d:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p2, :cond_0

    move-object p1, p0

    check-cast p1, Lg0/m;

    .line 1
    iget-object p2, p1, Lg0/m;->l:Landroid/view/LayoutInflater;

    iget p1, p1, Lg0/m;->k:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    iget-object p1, p0, Lg0/h;->d:Landroid/database/Cursor;

    invoke-virtual {p0, p2, p1}, Lg0/h;->b(Landroid/view/View;Landroid/database/Cursor;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFilter()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Lg0/h;->i:Lg0/i;

    if-nez v0, :cond_0

    new-instance v0, Lg0/i;

    invoke-direct {v0, p0}, Lg0/i;-><init>(Lg0/i$a;)V

    iput-object v0, p0, Lg0/h;->i:Lg0/i;

    :cond_0
    iget-object v0, p0, Lg0/h;->i:Lg0/i;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lg0/h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg0/h;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object p1, p0, Lg0/h;->d:Landroid/database/Cursor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 5

    iget-boolean v0, p0, Lg0/h;->b:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg0/h;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg0/h;->d:Landroid/database/Cursor;

    iget v0, p0, Lg0/h;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-boolean v0, p0, Lg0/h;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg0/h;->d:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lg0/h;->e(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p1, p0, Lg0/h;->d:Landroid/database/Cursor;

    invoke-virtual {p0, p2, p1}, Lg0/h;->b(Landroid/view/View;Landroid/database/Cursor;)V

    return-object p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "couldn\'t move cursor to position "

    .line 1
    invoke-static {p3, p1}, La/c;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this should only be called when the cursor is valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
