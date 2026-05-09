.class public final Lm2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm2/a;

.field public final b:Landroid/support/v4/app/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm2/a;

    invoke-direct {v0, p1}, Lm2/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lm2/b;->a:Lm2/a;

    new-instance p1, Landroid/support/v4/app/i;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/support/v4/app/i;-><init>(Ljava/lang/Object;La/c;)V

    iput-object p1, p0, Lm2/b;->b:Landroid/support/v4/app/i;

    return-void
.end method
