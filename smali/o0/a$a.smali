.class public final Lo0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Z

.field public c:I

.field public final synthetic d:Lo0/a;


# direct methods
.method public constructor <init>(Lo0/a;)V
    .registers 2

    iput-object p1, p0, Lo0/a$a;->d:Lo0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo0/a$a;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Lo0/a$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo0/a$a;->d:Lo0/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lo0/a;->g:Ld0/n;

    iget v1, p0, Lo0/a$a;->c:I

    invoke-static {v0, v1}, Lo0/a;->b(Lo0/a;I)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo0/a$a;->b:Z

    return-void
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lo0/a$a;->d:Lo0/a;

    invoke-static {v0}, Lo0/a;->a(Lo0/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo0/a$a;->b:Z

    return-void
.end method
