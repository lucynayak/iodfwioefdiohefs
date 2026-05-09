.class public final Lw1/e$b;
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
    .registers 3

    iput-object p1, p0, Lw1/e$b;->b:Lw1/e;

    iput-object p2, p0, Lw1/e$b;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lw1/e$b;->b:Lw1/e;

    iget-object v0, v0, Lw1/e;->d:Lw1/d$c;

    invoke-interface {v0}, Lw1/d$c;->a()V

    return-void
.end method
