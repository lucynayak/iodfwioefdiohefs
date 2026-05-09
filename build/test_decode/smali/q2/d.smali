.class public final Lq2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/a;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lx2/a;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lq2/d;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lq2/d;->b:Lx2/a;

    return-void
.end method


# virtual methods
.method public final a()Lx2/b;
    .locals 1

    iget-object v0, p0, Lq2/d;->b:Lx2/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq2/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld1/a;->v(Ljava/lang/String;)Lx2/b;

    move-result-object v0

    check-cast v0, Lx2/a;

    iput-object v0, p0, Lq2/d;->b:Lx2/a;

    :cond_0
    iget-object v0, p0, Lq2/d;->b:Lx2/a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq2/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq2/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq2/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq2/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
