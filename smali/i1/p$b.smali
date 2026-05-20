.class public final Li1/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/p;->g(Li1/t;Li1/n$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/p;


# direct methods
.method public constructor <init>(Li1/p;)V
    .registers 2

    iput-object p1, p0, Li1/p$b;->a:Li1/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)Z
    .registers 5

    iget-object v0, p0, Li1/p$b;->a:Li1/p;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Li1/p;->e(ILandroid/content/Intent;Le1/j;)V

    const/4 p1, 0x1

    return p1
.end method
