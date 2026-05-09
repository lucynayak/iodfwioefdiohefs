.class public final Landroid/support/v4/app/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/support/v4/app/g;

.field public final synthetic c:Landroid/support/v4/app/g;

.field public final synthetic d:Z

.field public final synthetic e:Lc0/a;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/support/v4/app/a0;

.field public final synthetic h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/g;Landroid/support/v4/app/g;ZLc0/a;Landroid/view/View;Landroid/support/v4/app/a0;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/g;

    iput-object p2, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/g;

    iput-boolean p3, p0, Landroid/support/v4/app/t;->d:Z

    iput-object p4, p0, Landroid/support/v4/app/t;->e:Lc0/a;

    iput-object p5, p0, Landroid/support/v4/app/t;->f:Landroid/view/View;

    iput-object p6, p0, Landroid/support/v4/app/t;->g:Landroid/support/v4/app/a0;

    iput-object p7, p0, Landroid/support/v4/app/t;->h:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/g;

    iget-object v1, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/g;

    iget-boolean v2, p0, Landroid/support/v4/app/t;->d:Z

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/v;->c(Landroid/support/v4/app/g;Landroid/support/v4/app/g;Z)V

    iget-object v0, p0, Landroid/support/v4/app/t;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/t;->g:Landroid/support/v4/app/a0;

    iget-object v2, p0, Landroid/support/v4/app/t;->h:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/a0;->i(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
