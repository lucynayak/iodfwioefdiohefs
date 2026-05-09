.class public final Lc/b;
.super Lc/c;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/c;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/b;->b:Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lc/b;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
