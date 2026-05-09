.class public final Lq0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lr0/e;->b()Z

    move-result v0

    sput-boolean v0, Lq0/b;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lr0/d;->d:Lr0/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lr0/d;->a()V

    new-instance v1, La1/e;

    invoke-direct {v1}, La1/e;-><init>()V

    iget-object v0, v0, Lr0/d;->a:Lr0/c;

    invoke-interface {v0, v1, p0}, Lr0/c;->c(La1/e;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty receiptId is not allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
