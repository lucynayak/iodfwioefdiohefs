.class public abstract Landroid/support/v4/app/j;
.super Landroid/support/v4/app/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/b0;"
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/support/v4/app/k;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/h;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/h;->c:Landroid/support/v4/app/h$a;

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/b0;-><init>()V

    new-instance v1, Landroid/support/v4/app/k;

    invoke-direct {v1}, Landroid/support/v4/app/k;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/j;->d:Landroid/support/v4/app/k;

    iput-object p1, p0, Landroid/support/v4/app/j;->a:Landroid/app/Activity;

    iput-object p1, p0, Landroid/support/v4/app/j;->b:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Landroid/support/v4/app/j;->c:Landroid/os/Handler;

    return-void
.end method
