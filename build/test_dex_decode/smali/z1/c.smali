.class public final Lz1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lz1/a;


# direct methods
.method public constructor <init>(Lz1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/c;->a:Lz1/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lz1/c;->a:Lz1/a;

    invoke-virtual {v0}, Lz1/a;->e()V

    iget-object v1, v0, Lz1/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lz1/p;->setLastConfig(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lz1/d;

    invoke-direct {v1, v0}, Lz1/d;-><init>(Lz1/a;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
