.class public final Li1/p$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static volatile a:Le1/c0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Le1/c0;
    .locals 3

    .line 1
    const-class v0, Li1/p$d;

    monitor-enter v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p0, Le1/r;->a:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lr0/e;->k()V

    sget-object p0, Le1/r;->c:Landroid/content/Context;

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    sget-object v1, Li1/p$d;->a:Le1/c0;

    if-nez v1, :cond_2

    new-instance v1, Le1/c0;

    sget-object v2, Le1/r;->a:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lr0/e;->k()V

    sget-object v2, Le1/r;->d:Ljava/lang/String;

    .line 5
    invoke-direct {v1, p0, v2}, Le1/c0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Li1/p$d;->a:Le1/c0;

    :cond_2
    sget-object p0, Li1/p$d;->a:Le1/c0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
