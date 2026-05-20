.class public final Le3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le3/k;


# instance fields
.field public final a:Le3/k;

.field public final b:Ljava/lang/Class;

.field public final c:Le3/j;


# direct methods
.method public constructor <init>(Le3/k;Ljava/lang/Class;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le3/j;

    invoke-direct {v0}, Le3/j;-><init>()V

    iput-object v0, p0, Le3/a;->c:Le3/j;

    iput-object p1, p0, Le3/a;->a:Le3/k;

    iput-object p2, p0, Le3/a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Le3/a;->a:Le3/k;

    invoke-interface {v4, v3}, Le3/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Le3/a;->c:Le3/j;

    invoke-virtual {p1, v1}, Le3/j;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Le3/a;->c:Le3/j;

    invoke-virtual {v0, p1}, Le3/j;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    iget-object v1, p0, Le3/a;->b:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Le3/a;->a:Le3/k;

    aget-object v4, p1, v2

    invoke-interface {v3, v4}, Le3/k;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
