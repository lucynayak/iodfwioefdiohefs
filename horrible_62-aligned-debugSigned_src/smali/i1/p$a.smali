.class public final Li1/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/p;->f(Le1/f;Le1/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/p;

.field public final synthetic b:Le1/j;


# direct methods
.method public constructor <init>(Li1/p;Le1/j;)V
    .registers 3

    iput-object p1, p0, Li1/p$a;->a:Li1/p;

    iput-object p2, p0, Li1/p$a;->b:Le1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)Z
    .registers 5

    iget-object v0, p0, Li1/p$a;->a:Li1/p;

    iget-object v1, p0, Li1/p$a;->b:Le1/j;

    invoke-virtual {v0, p1, p2, v1}, Li1/p;->e(ILandroid/content/Intent;Le1/j;)V

    const/4 p1, 0x1

    return p1
.end method
