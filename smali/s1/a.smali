.class public final Ls1/a;
.super Lp1/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lp1/a0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ls1/a$a;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Ls1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/a0<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls1/a$a;

    invoke-direct {v0}, Ls1/a$a;-><init>()V

    sput-object v0, Ls1/a;->c:Ls1/a$a;

    return-void
.end method

.method public constructor <init>(Lp1/e;Lp1/a0;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/e;",
            "Lp1/a0<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lp1/a0;-><init>()V

    new-instance v0, Ls1/m;

    invoke-direct {v0, p1, p2, p3}, Ls1/m;-><init>(Lp1/e;Lp1/a0;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Ls1/a;->b:Ls1/m;

    iput-object p3, p0, Ls1/a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final read(Lv1/a;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Lv1/a;->v()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lv1/a;->r()V

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lv1/a;->a()V

    :goto_0
    invoke-virtual {p1}, Lv1/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ls1/a;->b:Ls1/m;

    invoke-virtual {v1, p1}, Ls1/m;->read(Lv1/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lv1/a;->e()V

    iget-object p1, p0, Ls1/a;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object p1
.end method

.method public final write(Lv1/b;Ljava/lang/Object;)V
    .registers 7

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lv1/b;->i()Lv1/b;

    return-void

    :cond_0
    invoke-virtual {p1}, Lv1/b;->b()Lv1/b;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ls1/a;->b:Ls1/m;

    invoke-virtual {v3, p1, v2}, Ls1/m;->write(Lv1/b;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lv1/b;->e()Lv1/b;

    return-void
.end method
