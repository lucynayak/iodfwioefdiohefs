.class public final Lt/k$b;
.super Lt/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lt/k;


# direct methods
.method public constructor <init>(Lt/k;)V
    .locals 0

    invoke-direct {p0}, Lt/i;-><init>()V

    iput-object p1, p0, Lt/k$b;->a:Lt/k;

    return-void
.end method


# virtual methods
.method public final a(Lt/f;)V
    .locals 2

    iget-object v0, p0, Lt/k$b;->a:Lt/k;

    iget v1, v0, Lt/k;->A:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lt/k;->A:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lt/k;->B:Z

    invoke-virtual {v0}, Lt/f;->m()V

    :cond_0
    invoke-virtual {p1, p0}, Lt/f;->v(Lt/f$d;)Lt/f;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lt/k$b;->a:Lt/k;

    iget-boolean v1, v0, Lt/k;->B:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lt/f;->F()V

    iget-object v0, p0, Lt/k$b;->a:Lt/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lt/k;->B:Z

    :cond_0
    return-void
.end method
