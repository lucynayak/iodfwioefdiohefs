.class public final Ld3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/m;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ld3/m;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ld3/m;Ld3/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ld3/a;->b()Ljava/lang/String;

    invoke-interface {p2}, Ld3/a;->a()Ljava/lang/String;

    invoke-interface {p2}, Ld3/a;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ld3/k;->c:Ljava/lang/Object;

    invoke-interface {p2}, Ld3/a;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld3/k;->d:Ljava/lang/String;

    invoke-interface {p2}, Ld3/a;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ld3/k;->a:Ljava/lang/String;

    iput-object p1, p0, Ld3/k;->b:Ld3/m;

    return-void
.end method

.method public constructor <init>(Ld3/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/k;->b:Ld3/m;

    iput-object p3, p0, Ld3/k;->d:Ljava/lang/String;

    iput-object p2, p0, Ld3/k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ld3/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/t<",
            "Ld3/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Ld3/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld3/n;-><init>(Ld3/q;I)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ld3/m;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld3/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Landroid/arch/lifecycle/h;
    .locals 1

    iget-object v0, p0, Ld3/k;->b:Ld3/m;

    invoke-interface {v0}, Ld3/m;->getPosition()Landroid/arch/lifecycle/h;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld3/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ld3/m;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ld3/k;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ld3/k;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "attribute %s=\'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
