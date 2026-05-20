.class public final Lh0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh0/i;


# direct methods
.method public constructor <init>(Lh0/i;)V
    .registers 2

    iput-object p1, p0, Lh0/i$a;->b:Lh0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lh0/i$a;->b:Lh0/i;

    iget v1, v0, Lh0/i;->L:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lh0/i;->r(I)V

    :cond_0
    iget-object v0, p0, Lh0/i$a;->b:Lh0/i;

    iget v1, v0, Lh0/i;->L:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lh0/i;->r(I)V

    :cond_1
    iget-object v0, p0, Lh0/i$a;->b:Lh0/i;

    iput-boolean v2, v0, Lh0/i;->K:Z

    iput v2, v0, Lh0/i;->L:I

    return-void
.end method
