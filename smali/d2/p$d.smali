.class public final Ld2/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ld2/p;

.field public final b:I


# direct methods
.method public constructor <init>(Ld2/p;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/p$d;->a:Ld2/p;

    iput p2, p0, Ld2/p$d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Ld2/p$d;->a:Ld2/p;

    if-eqz v0, :cond_0

    iget v1, p0, Ld2/p$d;->b:I

    invoke-virtual {v0, v1}, Ld2/p;->applyButton(I)V

    :cond_0
    return-void
.end method
