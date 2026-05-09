.class public final Lo0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/i$a;,
        Lo0/i$b;,
        Lo0/i$e;,
        Lo0/i$c;,
        Lo0/i$d;
    }
.end annotation


# static fields
.field public static final g:Landroid/graphics/PorterDuff$Mode;

.field public static h:Lo0/i;

.field public static final i:Lo0/i$c;

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:[I


# instance fields
.field public a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lc0/k<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Lc0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/a<",
            "Ljava/lang/String;",
            "Lo0/i$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lc0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lc0/e<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public e:Landroid/util/TypedValue;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lo0/i;->g:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Lo0/i$c;

    invoke-direct {v0}, Lo0/i$c;-><init>()V

    sput-object v0, Lo0/i;->i:Lo0/i$c;

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lo0/i;->j:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lo0/i;->k:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lo0/i;->l:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lo0/i;->m:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lo0/i;->n:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lo0/i;->o:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f070057
        0x7f070055
        0x7f070006
    .end array-data

    :array_1
    .array-data 4
        0x7f07001c
        0x7f070045
        0x7f070023
        0x7f07001e
        0x7f07001f
        0x7f070022
        0x7f070021
    .end array-data

    :array_2
    .array-data 4
        0x7f070054
        0x7f070056
        0x7f070015
        0x7f07004d
        0x7f07004e
        0x7f070050
        0x7f070052
        0x7f07004f
        0x7f070051
        0x7f070053
    .end array-data

    :array_3
    .array-data 4
        0x7f07003b
        0x7f070013
        0x7f07003a
    .end array-data

    :array_4
    .array-data 4
        0x7f07004b
        0x7f070058
    .end array-data

    :array_5
    .array-data 4
        0x7f070009
        0x7f07000e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lo0/i;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static c([II)Z
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static declared-synchronized g()Lo0/i;
    .registers 4

    const-class v0, Lo0/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo0/i;->h:Lo0/i;

    if-nez v1, :cond_0

    new-instance v1, Lo0/i;

    invoke-direct {v1}, Lo0/i;-><init>()V

    sput-object v1, Lo0/i;->h:Lo0/i;

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    new-instance v2, Lo0/i$e;

    invoke-direct {v2}, Lo0/i$e;-><init>()V

    const-string v3, "vector"

    invoke-virtual {v1, v3, v2}, Lo0/i;->a(Ljava/lang/String;Lo0/i$d;)V

    new-instance v2, Lo0/i$b;

    invoke-direct {v2}, Lo0/i$b;-><init>()V

    const-string v3, "animated-vector"

    invoke-virtual {v1, v3, v2}, Lo0/i;->a(Ljava/lang/String;Lo0/i$d;)V

    new-instance v2, Lo0/i$a;

    invoke-direct {v2}, Lo0/i$a;-><init>()V

    const-string v3, "animated-selector"

    invoke-virtual {v1, v3, v2}, Lo0/i;->a(Ljava/lang/String;Lo0/i$d;)V

    .line 2
    :cond_0
    sget-object v1, Lo0/i;->h:Lo0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 6

    const-class v0, Lo0/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo0/i;->i:Lo0/i$c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, p0, 0x1f

    mul-int/lit8 v2, v2, 0x1f

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc0/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v3, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Lc0/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static n(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    invoke-static {p0}, Lo0/c0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lo0/i;->g:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    invoke-static {p1, p2}, Lo0/i;->k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static p(Landroid/graphics/drawable/Drawable;Lo0/q0;[I)V
    .registers 6

    invoke-static {p0}, Lo0/c0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string p0, "AppCompatDrawableManag"

    const-string p1, "Mutated drawable is not the same instance as the input."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p1, Lo0/q0;->d:Z

    if-nez v0, :cond_2

    iget-boolean v1, p1, Lo0/q0;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4

    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo0/q0;->a:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iget-boolean v2, p1, Lo0/q0;->c:Z

    if-eqz v2, :cond_4

    iget-object p1, p1, Lo0/q0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, Lo0/i;->g:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-static {p2, p1}, Lo0/i;->k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 2
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_7
    return-void
.end method

.method public static q(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 9

    sget-object v0, Lo0/i;->g:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Lo0/i;->j:[I

    invoke-static {v1, p1}, Lo0/i;->c([II)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x1010031

    if-eqz v1, :cond_0

    const v5, 0x7f030096

    goto :goto_0

    :cond_0
    sget-object v1, Lo0/i;->l:[I

    invoke-static {v1, p1}, Lo0/i;->c([II)Z

    move-result v1

    if-eqz v1, :cond_1

    const v5, 0x7f030094

    goto :goto_0

    :cond_1
    sget-object v1, Lo0/i;->m:[I

    invoke-static {v1, p1}, Lo0/i;->c([II)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    const v1, 0x7f07002f

    if-ne p1, v1, :cond_3

    const p1, 0x1010030

    const v1, 0x42233333    # 40.8f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_3
    const v1, 0x7f070017

    if-ne p1, v1, :cond_4

    :goto_0
    move p1, v5

    const/4 v1, -0x1

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_7

    invoke-static {p2}, Lo0/c0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_5
    invoke-static {p0, p1}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0, v0}, Lo0/i;->k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v1, v4, :cond_6

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    return v2

    :cond_7
    return v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lo0/i$d;)V
    .registers 4

    iget-object v0, p0, Lo0/i;->b:Lc0/a;

    if-nez v0, :cond_0

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    iput-object v0, p0, Lo0/i;->b:Lc0/a;

    :cond_0
    iget-object v0, p0, Lo0/i;->b:Lc0/a;

    invoke-virtual {v0, p1, p2}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .registers 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Lo0/i;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/e;

    if-nez v0, :cond_0

    new-instance v0, Lc0/e;

    invoke-direct {v0}, Lc0/e;-><init>()V

    iget-object v1, p0, Lo0/i;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Lc0/e;->f(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 8

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const v2, 0x7f030095

    invoke-static {p1, v2}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f030093

    invoke-static {p1, v3}, Lo0/n0;->a(Landroid/content/Context;I)I

    move-result p1

    sget-object v3, Lo0/n0;->b:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p1, v0, v4

    sget-object p1, Lo0/n0;->d:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v2, p2}, Lw/a;->a(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Lo0/n0;->c:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    invoke-static {v2, p2}, Lw/a;->a(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Lo0/n0;->f:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    aput p2, v0, v2

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public final e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 10

    iget-object v0, p0, Lo0/i;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lo0/i;->e:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Lo0/i;->e:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long v5, v1

    or-long/2addr v3, v5

    .line 2
    invoke-virtual {p0, p1, v3, v4}, Lo0/i;->h(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const v5, 0x7f070014

    if-ne p2, v5, :cond_2

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const v6, 0x7f070013

    invoke-virtual {p0, p1, v6}, Lo0/i;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, p2, v5

    const v5, 0x7f070015

    invoke-virtual {p0, p1, v5}, Lo0/i;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, p2, v2

    invoke-direct {v1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v1, :cond_3

    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {p0, p1, v3, v4, v1}, Lo0/i;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_3
    return-object v1
.end method

.method public final f(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 11

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const v2, 0x7f03009b

    invoke-static {p1, v2}, Lo0/n0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x2

    const v5, 0x7f030094

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v2, Lo0/n0;->b:[I

    aput-object v2, v1, v7

    aget-object v2, v1, v7

    invoke-virtual {v3, v2, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, v0, v7

    sget-object v2, Lo0/n0;->e:[I

    aput-object v2, v1, v6

    invoke-static {p1, v5}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v6

    sget-object p1, Lo0/n0;->f:[I

    aput-object p1, v1, v4

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, v0, v4

    goto :goto_0

    :cond_0
    sget-object v3, Lo0/n0;->b:[I

    aput-object v3, v1, v7

    invoke-static {p1, v2}, Lo0/n0;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v7

    sget-object v3, Lo0/n0;->e:[I

    aput-object v3, v1, v6

    invoke-static {p1, v5}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v6

    sget-object v3, Lo0/n0;->f:[I

    aput-object v3, v1, v4

    invoke-static {p1, v2}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v4

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public final declared-synchronized h(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo0/i;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 1
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, v1}, Lc0/e;->e(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_1
    :try_start_2
    iget-object p1, v0, Lc0/e;->c:[J

    iget v2, v0, Lc0/e;->e:I

    invoke-static {p1, v2, p2, p3}, La3/r0;->i([JIJ)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p2, v0, Lc0/e;->d:[Ljava/lang/Object;

    aget-object p3, p2, p1

    sget-object v2, Lc0/e;->f:Ljava/lang/Object;

    if-eq p3, v2, :cond_2

    aput-object v2, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, v0, Lc0/e;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lo0/i;->j(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lo0/i;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo0/i;->f:Z

    const v1, 0x7f070059

    invoke-virtual {p0, p1, v1}, Lo0/i;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 2
    instance-of v3, v1, Ls/f;

    if-nez v3, :cond_2

    const-string v3, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    .line 3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lo0/i;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lo0/i;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    sget-object v0, Lu/a;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lo0/i;->o(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v0}, Lo0/c0;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :cond_7
    :try_start_1
    iput-boolean v2, p0, Lo0/i;->f:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo0/i;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2, v1}, Lc0/k;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    move-object v1, v0

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_0
    if-nez v1, :cond_f

    const v0, 0x7f070018

    if-ne p2, v0, :cond_1

    const v0, 0x7f050016

    .line 4
    :goto_0
    invoke-static {p1, v0}, Lj0/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    const v0, 0x7f07004a

    if-ne p2, v0, :cond_2

    const v0, 0x7f050019

    goto :goto_0

    :cond_2
    const v0, 0x7f070049

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lo0/i;->f(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_2

    :cond_3
    const v0, 0x7f07000d

    if-ne p2, v0, :cond_4

    const v0, 0x7f030093

    .line 5
    invoke-static {p1, v0}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lo0/i;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    :cond_4
    const v0, 0x7f070008

    if-ne p2, v0, :cond_5

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lo0/i;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    :cond_5
    const v0, 0x7f07000c

    if-ne p2, v0, :cond_6

    const v0, 0x7f030091

    .line 7
    invoke-static {p1, v0}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lo0/i;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    :cond_6
    const v0, 0x7f070047

    if-eq p2, v0, :cond_b

    const v0, 0x7f070048

    if-ne p2, v0, :cond_7

    goto :goto_1

    .line 8
    :cond_7
    sget-object v0, Lo0/i;->k:[I

    invoke-static {v0, p2}, Lo0/i;->c([II)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f030096

    invoke-static {p1, v0}, Lo0/n0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    :cond_8
    sget-object v0, Lo0/i;->n:[I

    invoke-static {v0, p2}, Lo0/i;->c([II)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f050015

    goto :goto_0

    :cond_9
    sget-object v0, Lo0/i;->o:[I

    invoke-static {v0, p2}, Lo0/i;->c([II)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f050014

    goto :goto_0

    :cond_a
    const v0, 0x7f070044

    if-ne p2, v0, :cond_c

    const v0, 0x7f050017

    goto/16 :goto_0

    :cond_b
    :goto_1
    const v0, 0x7f050018

    goto/16 :goto_0

    :cond_c
    :goto_2
    if-eqz v1, :cond_f

    .line 9
    iget-object v0, p0, Lo0/i;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo0/i;->a:Ljava/util/WeakHashMap;

    :cond_d
    iget-object v0, p0, Lo0/i;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/k;

    if-nez v0, :cond_e

    new-instance v0, Lc0/k;

    invoke-direct {v0}, Lc0/k;-><init>()V

    iget-object v2, p0, Lo0/i;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {v0, p2, v1}, Lc0/k;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_f
    monitor-exit p0

    return-object v1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 13

    iget-object v0, p0, Lo0/i;->b:Lc0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lc0/j;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lo0/i;->c:Lc0/k;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {v0, p2, v1}, Lc0/k;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lo0/i;->b:Lc0/a;

    invoke-virtual {v3, v0}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Lc0/k;

    invoke-direct {v0}, Lc0/k;-><init>()V

    iput-object v0, p0, Lo0/i;->c:Lc0/k;

    :cond_2
    iget-object v0, p0, Lo0/i;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lo0/i;->e:Landroid/util/TypedValue;

    :cond_3
    iget-object v0, p0, Lo0/i;->e:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3
    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    iget v6, v0, Landroid/util/TypedValue;->data:I

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 4
    invoke-virtual {p0, p1, v4, v5}, Lo0/i;->h(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    return-object v6

    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    if-eq v8, v3, :cond_5

    goto :goto_0

    :cond_5
    if-ne v8, v9, :cond_7

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lo0/i;->c:Lc0/k;

    invoke-virtual {v8, p2, v3}, Lc0/k;->a(ILjava/lang/Object;)V

    iget-object v8, p0, Lo0/i;->b:Lc0/a;

    invoke-virtual {v8, v3}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/i$d;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-interface {v3, p1, v1, v7, v8}, Lo0/i$d;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v6, v1

    :cond_6
    if-eqz v6, :cond_8

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {p0, p1, v4, v5, v6}, Lo0/i;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "AppCompatDrawableManag"

    const-string v1, "Exception while inflating drawable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    if-nez v6, :cond_9

    iget-object p1, p0, Lo0/i;->c:Lc0/k;

    invoke-virtual {p1, p2, v2}, Lc0/k;->a(ILjava/lang/Object;)V

    :cond_9
    return-object v6

    :cond_a
    return-object v1
.end method

.method public final o(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 12

    invoke-virtual {p0, p1, p2}, Lo0/i;->l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p4}, Lo0/c0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    :cond_0
    invoke-static {p4}, Lx/a;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 1
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f070049

    if-ne p2, p1, :cond_1

    .line 2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    if-eqz v1, :cond_6

    .line 3
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_2
    const v0, 0x7f070046

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    const v5, 0x7f030094

    const v6, 0x7f030096

    if-ne p2, v0, :cond_3

    .line 4
    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, v6}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lo0/i;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v1}, Lo0/i;->n(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, v6}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1

    :cond_3
    const v0, 0x7f07003d

    if-eq p2, v0, :cond_5

    const v0, 0x7f07003c

    if-eq p2, v0, :cond_5

    const v0, 0x7f07003e

    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p1, p2, p4}, Lo0/i;->q(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p3, :cond_6

    move-object p4, v1

    goto :goto_2

    :cond_5
    :goto_0
    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, v6}, Lo0/n0;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lo0/i;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v0, v1}, Lo0/i;->n(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, v5}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result v0

    :goto_1
    invoke-static {p3, v0, v1}, Lo0/i;->n(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v5}, Lo0/n0;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p2, p1, v1}, Lo0/i;->n(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :cond_6
    :goto_2
    return-object p4
.end method
