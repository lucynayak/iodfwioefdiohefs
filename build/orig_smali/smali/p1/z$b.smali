.class public final Lp1/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp1/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lp1/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/o<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lu1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu1/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Lp1/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/w<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lu1/a;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lp1/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp1/w;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lp1/z$b;->f:Lp1/w;

    instance-of v2, p1, Lp1/o;

    if-eqz v2, :cond_1

    check-cast p1, Lp1/o;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lp1/z$b;->b:Lp1/o;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    invoke-static {p1}, Ld1/a;->k(Z)V

    iput-object p2, p0, Lp1/z$b;->c:Lu1/a;

    iput-boolean p3, p0, Lp1/z$b;->e:Z

    iput-object v1, p0, Lp1/z$b;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lp1/e;Lu1/a;)Lp1/a0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp1/e;",
            "Lu1/a<",
            "TT;>;)",
            "Lp1/a0<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lp1/z$b;->c:Lu1/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lu1/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lp1/z$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp1/z$b;->c:Lu1/a;

    invoke-virtual {v0}, Lu1/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lp1/z$b;->d:Ljava/lang/Class;

    invoke-virtual {p2}, Lu1/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    new-instance v0, Lp1/z;

    iget-object v2, p0, Lp1/z$b;->f:Lp1/w;

    iget-object v3, p0, Lp1/z$b;->b:Lp1/o;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lp1/z;-><init>(Lp1/w;Lp1/o;Lp1/e;Lu1/a;Lp1/b0;Lp1/z$a;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
