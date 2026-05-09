.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lp0/a;)Landroid/support/v4/media/c;
    .registers 4

    new-instance v0, Landroid/support/v4/media/c;

    invoke-direct {v0}, Landroid/support/v4/media/c;-><init>()V

    iget v1, v0, Landroid/support/v4/media/c;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lp0/a;->g(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/c;->a:I

    iget v1, v0, Landroid/support/v4/media/c;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lp0/a;->g(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/c;->b:I

    iget v1, v0, Landroid/support/v4/media/c;->c:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lp0/a;->g(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/c;->c:I

    iget v1, v0, Landroid/support/v4/media/c;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lp0/a;->g(II)I

    move-result p0

    iput p0, v0, Landroid/support/v4/media/c;->d:I

    return-object v0
.end method

.method public static write(Landroid/support/v4/media/c;Lp0/a;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/support/v4/media/c;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lp0/a;->o(II)V

    iget v0, p0, Landroid/support/v4/media/c;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lp0/a;->o(II)V

    iget v0, p0, Landroid/support/v4/media/c;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lp0/a;->o(II)V

    iget p0, p0, Landroid/support/v4/media/c;->d:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lp0/a;->o(II)V

    return-void
.end method
