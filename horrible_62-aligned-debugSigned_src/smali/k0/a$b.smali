.class public final Lk0/a$b;
.super Lk0/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public I:Lc0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public J:Lc0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/k<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk0/a$b;Lk0/a;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lk0/d$a;-><init>(Lk0/d$a;Lk0/d;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object p2, p1, Lk0/a$b;->I:Lc0/e;

    iput-object p2, p0, Lk0/a$b;->I:Lc0/e;

    iget-object p1, p1, Lk0/a$b;->J:Lc0/k;

    goto :goto_0

    :cond_0
    new-instance p1, Lc0/e;

    invoke-direct {p1}, Lc0/e;-><init>()V

    iput-object p1, p0, Lk0/a$b;->I:Lc0/e;

    new-instance p1, Lc0/k;

    invoke-direct {p1}, Lc0/k;-><init>()V

    :goto_0
    iput-object p1, p0, Lk0/a$b;->J:Lc0/k;

    return-void
.end method

.method public static j(II)J
    .registers 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final e()V
    .registers 2

    iget-object v0, p0, Lk0/a$b;->I:Lc0/e;

    invoke-virtual {v0}, Lc0/e;->c()Lc0/e;

    move-result-object v0

    iput-object v0, p0, Lk0/a$b;->I:Lc0/e;

    iget-object v0, p0, Lk0/a$b;->J:Lc0/k;

    invoke-virtual {v0}, Lc0/k;->b()Lc0/k;

    move-result-object v0

    iput-object v0, p0, Lk0/a$b;->J:Lc0/k;

    return-void
.end method

.method public final k(I)I
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk0/a$b;->J:Lc0/k;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lc0/k;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lk0/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk0/a;-><init>(Lk0/a$b;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lk0/a;

    invoke-direct {v0, p0, p1}, Lk0/a;-><init>(Lk0/a$b;Landroid/content/res/Resources;)V

    return-object v0
.end method
