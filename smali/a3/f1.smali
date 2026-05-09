.class public final La3/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(La3/s;Ljava/lang/annotation/Annotation;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, La3/s;->d()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, La3/f1;->c:Ljava/lang/Class;

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, La3/f1;->a:Ljava/lang/Class;

    invoke-interface {p1}, La3/s;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, La3/f1;->b:Ljava/lang/String;

    invoke-interface {p1}, Lc3/c;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, La3/f1;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, La3/f1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, La3/f1;

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, La3/f1;->a:Ljava/lang/Class;

    iget-object v2, p0, La3/f1;->a:Ljava/lang/Class;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, La3/f1;->c:Ljava/lang/Class;

    iget-object v2, p0, La3/f1;->c:Ljava/lang/Class;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, La3/f1;->d:Ljava/lang/Class;

    iget-object v2, p0, La3/f1;->d:Ljava/lang/Class;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, La3/f1;->b:Ljava/lang/String;

    iget-object v0, p0, La3/f1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    return p1

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, La3/f1;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, La3/f1;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, La3/f1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, La3/f1;->c:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "key \'%s\' for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
