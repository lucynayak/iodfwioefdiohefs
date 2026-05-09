.class public final La3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La3/x0;

.field public final b:La3/x0;

.field public final c:La3/q;

.field public final d:La3/x0;

.field public final e:La3/x0;

.field public final f:La3/x0;

.field public final g:La3/x0;


# direct methods
.method public constructor <init>(La3/j2;La3/q;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, La3/j2;->e()La3/x0;

    move-result-object v0

    iput-object v0, p0, La3/i;->g:La3/x0;

    invoke-interface {p1}, La3/j2;->p()La3/x0;

    move-result-object v0

    iput-object v0, p0, La3/i;->b:La3/x0;

    invoke-interface {p1}, La3/j2;->s()La3/x0;

    move-result-object v0

    iput-object v0, p0, La3/i;->e:La3/x0;

    invoke-interface {p1}, La3/j2;->d()La3/x0;

    move-result-object v0

    iput-object v0, p0, La3/i;->f:La3/x0;

    invoke-interface {p1}, La3/j2;->m()La3/x0;

    move-result-object v0

    iput-object v0, p0, La3/i;->d:La3/x0;

    invoke-interface {p1}, La3/j2;->r()La3/x0;

    move-result-object p1

    iput-object p1, p0, La3/i;->a:La3/x0;

    iput-object p2, p0, La3/i;->c:La3/q;

    return-void
.end method
