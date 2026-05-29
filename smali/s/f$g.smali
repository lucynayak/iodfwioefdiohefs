.class public final Ls/f$g;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:I

.field public b:Ls/f$f;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/PorterDuff$Mode;

.field public e:Z

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Ls/f;->k:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Ls/f$f;

    invoke-direct {v0}, Ls/f$f;-><init>()V

    iput-object v0, p0, Ls/f$g;->b:Ls/f$f;

    return-void
.end method

.method public constructor <init>(Ls/f$g;)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Ls/f;->k:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    iget v0, p1, Ls/f$g;->a:I

    iput v0, p0, Ls/f$g;->a:I

    new-instance v0, Ls/f$f;

    iget-object v1, p1, Ls/f$g;->b:Ls/f$f;

    invoke-direct {v0, v1}, Ls/f$f;-><init>(Ls/f$f;)V

    iput-object v0, p0, Ls/f$g;->b:Ls/f$f;

    iget-object v1, p1, Ls/f$g;->b:Ls/f$f;

    iget-object v1, v1, Ls/f$f;->e:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Ls/f$g;->b:Ls/f$f;

    iget-object v2, v2, Ls/f$f;->e:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Ls/f$f;->e:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p1, Ls/f$g;->b:Ls/f$f;

    iget-object v0, v0, Ls/f$f;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls/f$g;->b:Ls/f$f;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Ls/f$g;->b:Ls/f$f;

    iget-object v2, v2, Ls/f$f;->d:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Ls/f$f;->d:Landroid/graphics/Paint;

    :cond_1
    iget-object v0, p1, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Ls/f$g;->c:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Ls/f$g;->d:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p1, p1, Ls/f$g;->e:Z

    iput-boolean p1, p0, Ls/f$g;->e:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    iget-object v0, p0, Ls/f$g;->b:Ls/f$f;

    iget-object v1, v0, Ls/f$f;->n:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-object v1, v0, Ls/f$f;->g:Ls/f$c;

    invoke-virtual {v1}, Ls/f$c;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ls/f$f;->n:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, v0, Ls/f$f;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b(II)V
    .registers 11

    iget-object v0, p0, Ls/f$g;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v0, p0, Ls/f$g;->f:Landroid/graphics/Bitmap;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Ls/f$g;->b:Ls/f$f;

    iget-object v3, v2, Ls/f$f;->g:Ls/f$c;

    sget-object v4, Ls/f$f;->p:Landroid/graphics/Matrix;

    move v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Ls/f$f;->a(Ls/f$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget v0, p0, Ls/f$g;->a:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    new-instance v0, Ls/f;

    invoke-direct {v0, p0}, Ls/f;-><init>(Ls/f$g;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    new-instance p1, Ls/f;

    invoke-direct {p1, p0}, Ls/f;-><init>(Ls/f$g;)V

    return-object p1
.end method
