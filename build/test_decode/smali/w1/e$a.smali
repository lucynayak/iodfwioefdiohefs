.class public final Lw1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw1/e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw1/e;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lw1/e;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lw1/e$a;->b:Lw1/e;

    iput-object p2, p0, Lw1/e$a;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lw1/e$a;->b:Lw1/e;

    iget-object v1, v0, Lw1/e;->f:Lw1/d$b;

    iget-object v0, v0, Lw1/e;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/h;

    iget-object v0, p0, Lw1/e$a;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/f;

    invoke-interface {v1}, Lw1/d$b;->a()V

    return-void
.end method
