.class public Lt0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:La1/e;

.field public final b:Lt0/f;

.field public c:Lt0/g;


# direct methods
.method public constructor <init>(La1/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/c;->a:La1/e;

    new-instance p1, Lt0/f;

    invoke-direct {p1}, Lt0/f;-><init>()V

    iput-object p1, p0, Lt0/c;->b:Lt0/f;

    const/4 p1, 0x0

    iput-object p1, p0, Lt0/c;->c:Lt0/g;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 5

    const-string v0, "response"

    invoke-static {p1, v0}, Ld1/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lr0/d;->d:Lr0/d;

    .line 2
    iget-object v1, v0, Lr0/d;->b:Landroid/content/Context;

    .line 3
    iget-object v0, v0, Lr0/d;->c:Lq0/a;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lt0/b;

    invoke-direct {v2, p0, p1, v0}, Lt0/b;-><init>(Lt0/c;Ljava/lang/Object;Lq0/a;)V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    const-string v0, "c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PurchasingListener is not set. Dropping response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, La3/r0;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lt0/c;->c:Lt0/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt0/g;->b()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lt0/c;->a()V

    return-void
.end method
