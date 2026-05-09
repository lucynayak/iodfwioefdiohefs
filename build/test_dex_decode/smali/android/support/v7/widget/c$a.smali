.class public final Landroid/support/v7/widget/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Landroid/support/v7/widget/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/c$a;->a:J

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    const/16 v1, 0x40

    if-nez v0, :cond_0

    if-lt p1, v1, :cond_1

    iget-wide v0, p0, Landroid/support/v7/widget/c$a;->a:J

    goto :goto_0

    :cond_0
    if-ge p1, v1, :cond_2

    :cond_1
    iget-wide v0, p0, Landroid/support/v7/widget/c$a;->a:J

    const-wide/16 v2, 0x1

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_2
    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/c$a;->a(I)I

    move-result p1

    iget-wide v0, p0, Landroid/support/v7/widget/c$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/c$a;

    invoke-direct {v0}, Landroid/support/v7/widget/c$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    :cond_0
    return-void
.end method

.method public final c(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/c$a;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/c$a;->c(I)Z

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/c$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(I)Z
    .locals 12

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/c$a;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/c$a;->d(I)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    iget-wide v4, p0, Landroid/support/v7/widget/c$a;->a:J

    and-long v6, v4, v2

    const-wide/16 v8, 0x0

    const/4 p1, 0x0

    const/4 v10, 0x1

    cmp-long v11, v6, v8

    if-eqz v11, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    not-long v7, v2

    and-long/2addr v4, v7

    iput-wide v4, p0, Landroid/support/v7/widget/c$a;->a:J

    sub-long/2addr v2, v0

    and-long v0, v4, v2

    not-long v2, v2

    and-long/2addr v2, v4

    invoke-static {v2, v3, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/c$a;->a:J

    iget-object v0, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/c$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/c$a;->f(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/c$a;->d(I)Z

    :cond_3
    return v6
.end method

.method public final e()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/c$a;->a:J

    iget-object v0, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/c$a;->e()V

    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/c$a;->b()V

    iget-object v1, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/c$a;->f(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/c$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/c$a;->a:J

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/c$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/c$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v7/widget/c$a;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
