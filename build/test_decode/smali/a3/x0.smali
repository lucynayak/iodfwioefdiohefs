.class public final La3/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, La3/x0;->a:Z

    iput-object p1, p0, La3/x0;->b:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final a(La3/q;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    iget-object p1, p1, La3/q;->f:Ljava/lang/Object;

    check-cast p1, La3/l2;

    .line 2
    iget-object p1, p1, La3/l2;->b:Ljava/util/HashMap;

    .line 3
    iget-boolean v0, p0, La3/x0;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/x0;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, La3/x0;->b:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
