.class public final Landroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lp0/a;)Landroid/support/v4/media/AudioAttributesCompat;
    .locals 3

    new-instance v0, Landroid/support/v4/media/AudioAttributesCompat;

    invoke-direct {v0}, Landroid/support/v4/media/AudioAttributesCompat;-><init>()V

    iget-object v1, v0, Landroid/support/v4/media/AudioAttributesCompat;->a:Landroid/support/v4/media/a;

    const/4 v2, 0x1

    .line 1
    invoke-virtual {p0, v2}, Lp0/a;->e(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp0/a;->k()Lp0/c;

    move-result-object v1

    .line 2
    :goto_0
    check-cast v1, Landroid/support/v4/media/a;

    iput-object v1, v0, Landroid/support/v4/media/AudioAttributesCompat;->a:Landroid/support/v4/media/a;

    return-object v0
.end method

.method public static write(Landroid/support/v4/media/AudioAttributesCompat;Lp0/a;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/support/v4/media/AudioAttributesCompat;->a:Landroid/support/v4/media/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lp0/a;->l(I)V

    invoke-virtual {p1, p0}, Lp0/a;->s(Lp0/c;)V

    return-void
.end method
