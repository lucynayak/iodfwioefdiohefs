.class public final Ld3/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ld3/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ld3/f0;

    invoke-direct {v0}, Ld3/f0;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    new-instance v0, Landroid/support/v4/app/i;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v4/app/i;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    new-instance v0, Landroid/arch/lifecycle/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/arch/lifecycle/h;-><init>(I)V

    .line 2
    :goto_0
    sput-object v0, Ld3/r;->a:Ld3/c0;

    return-void
.end method
