.class public Lv2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/a;


# instance fields
.field public a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv2/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lx2/b;

.field public transient c:Ljava/lang/String;

.field public d:Lv2/c;

.field public e:Ld1/a;

.field public transient f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lv2/f;->a:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lv2/f;->d:Lv2/c;

    sget-object v0, Lx2/b;->a:Ld1/a;

    iput-object v0, p0, Lv2/f;->e:Ld1/a;

    const-string v1, ""

    iput-object v1, p0, Lv2/f;->f:Ljava/lang/String;

    iput-object v0, p0, Lv2/f;->b:Lx2/b;

    iput-object v1, p0, Lv2/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Lv2/c;)V
    .registers 3

    iput-object p1, p0, Lv2/f;->d:Lv2/c;

    iget-object p1, p0, Lv2/f;->a:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lv2/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv2/f;->a:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
