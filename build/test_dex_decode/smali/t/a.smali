.class public final Lt/a;
.super Lt/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lt/k;-><init>()V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lt/k;->z:Z

    .line 2
    new-instance v0, Lt/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lt/c;-><init>(I)V

    invoke-virtual {p0, v0}, Lt/k;->H(Lt/f;)Lt/k;

    new-instance v0, Lt/b;

    invoke-direct {v0}, Lt/b;-><init>()V

    invoke-virtual {p0, v0}, Lt/k;->H(Lt/f;)Lt/k;

    new-instance v0, Lt/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt/c;-><init>(I)V

    invoke-virtual {p0, v0}, Lt/k;->H(Lt/f;)Lt/k;

    return-void
.end method
