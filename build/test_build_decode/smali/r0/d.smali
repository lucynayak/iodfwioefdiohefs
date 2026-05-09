.class public final Lr0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lr0/d;


# instance fields
.field public final a:Lr0/c;

.field public b:Landroid/content/Context;

.field public c:Lq0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr0/d;

    invoke-direct {v0}, Lr0/d;-><init>()V

    sput-object v0, Lr0/d;->d:Lr0/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-class v0, Lr0/e;

    sget-object v1, Lr0/e;->d:Lr0/c;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr0/e;->d:Lr0/c;

    if-nez v1, :cond_0

    const-class v1, Lr0/c;

    invoke-static {v1}, Lr0/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/c;

    sput-object v1, Lr0/e;->d:Lr0/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lr0/e;->d:Lr0/c;

    .line 2
    iput-object v0, p0, Lr0/d;->a:Lr0/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lr0/d;->c:Lq0/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must register a PurchasingListener before invoking this operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
