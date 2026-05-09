.class public final Lw1/b;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public b:Lw1/f;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lw1/f;

    invoke-direct {v0, p1, p2}, Lw1/f;-><init>(ILjava/lang/String;)V

    .line 1
    iget-object p1, v0, Lw1/f;->a:Ljava/lang/String;

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lw1/b;->b:Lw1/f;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Lw1/f;

    invoke-direct {v0, p1, p2}, Lw1/f;-><init>(ILjava/lang/String;)V

    .line 3
    iget-object p1, v0, Lw1/f;->a:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lw1/b;->b:Lw1/f;

    return-void
.end method
