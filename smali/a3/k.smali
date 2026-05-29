.class public final La3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La3/i;

.field public final b:Lt/n;

.field public final c:Z

.field public final d:Ly2/r;

.field public final e:La3/k2;

.field public final f:La3/c1;

.field public final g:Ljava/lang/Class;

.field public final h:La3/c1;


# direct methods
.method public constructor <init>(La3/j2;La3/q;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, La3/j2;->c(La3/q;)La3/i;

    move-result-object p2

    iput-object p2, p0, La3/k;->a:La3/i;

    invoke-interface {p1}, La3/j2;->o()Lt/n;

    move-result-object p2

    iput-object p2, p0, La3/k;->b:Lt/n;

    invoke-interface {p1}, La3/j2;->q()Ly2/r;

    move-result-object p2

    iput-object p2, p0, La3/k;->d:Ly2/r;

    invoke-interface {p1}, La3/j2;->h()La3/r1;

    invoke-interface {p1}, La3/j2;->g()Z

    move-result p2

    iput-boolean p2, p0, La3/k;->c:Z

    invoke-interface {p1}, La3/j2;->l()La3/c1;

    move-result-object p2

    iput-object p2, p0, La3/k;->h:La3/c1;

    invoke-interface {p1}, La3/j2;->k()La3/k2;

    move-result-object p2

    iput-object p2, p0, La3/k;->e:La3/k2;

    invoke-interface {p1}, La3/j2;->f()V

    const/4 p2, 0x0

    iput-object p2, p0, La3/k;->f:La3/c1;

    invoke-interface {p1}, La3/j2;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, La3/k;->g:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, La3/k;->g:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "schema for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
