.class public final Lo0/u;
.super Lo0/f0;
.source "SourceFile"


# instance fields
.field public final synthetic k:Lo0/v$b;

.field public final synthetic l:Lo0/v;


# direct methods
.method public constructor <init>(Lo0/v;Landroid/view/View;Lo0/v$b;)V
    .registers 4

    iput-object p1, p0, Lo0/u;->l:Lo0/v;

    iput-object p3, p0, Lo0/u;->k:Lo0/v$b;

    invoke-direct {p0, p2}, Lo0/f0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Ln0/g;
    .registers 2

    iget-object v0, p0, Lo0/u;->k:Lo0/v$b;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lo0/u;->l:Lo0/v;

    iget-object v0, v0, Lo0/v;->g:Lo0/v$b;

    invoke-virtual {v0}, Lo0/h0;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo0/u;->l:Lo0/v;

    iget-object v0, v0, Lo0/v;->g:Lo0/v$b;

    invoke-virtual {v0}, Lo0/v$b;->d()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
