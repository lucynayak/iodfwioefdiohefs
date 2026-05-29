.class public final Lr1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr1/n<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lc/c;

.field public final synthetic c:Ljava/lang/Class;

.field public final synthetic d:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 11

    iput-object p1, p0, Lr1/c;->c:Ljava/lang/Class;

    iput-object p2, p0, Lr1/c;->d:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "newInstance"

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "sun.misc.Unsafe"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "theUnsafe"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lr1/p;

    const-string v5, "allocateInstance"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lr1/p;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    const-class v3, Ljava/io/ObjectStreamClass;

    const-string v4, "getConstructorId"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v4, Ljava/io/ObjectStreamClass;

    invoke-virtual {v4, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v4, Lr1/q;

    invoke-direct {v4, v3, p2}, Lr1/q;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :try_start_2
    const-class p2, Ljava/io/ObjectInputStream;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Class;

    aput-object v3, v2, v0

    const-class v0, Ljava/lang/Class;

    aput-object v0, v2, v1

    invoke-virtual {p2, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v4, Lr1/r;

    invoke-direct {v4, p1}, Lr1/r;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    new-instance v4, Lr1/s;

    invoke-direct {v4}, Lr1/s;-><init>()V

    .line 2
    :goto_0
    iput-object v4, p0, Lr1/c;->b:Lc/c;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lr1/c;->b:Lc/c;

    iget-object v1, p0, Lr1/c;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lc/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to invoke no-args constructor for "

    .line 1
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lr1/c;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
