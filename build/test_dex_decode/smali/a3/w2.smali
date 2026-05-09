.class public final La3/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/b;


# instance fields
.field public a:La3/q;

.field public b:Lb3/b;


# direct methods
.method public constructor <init>(La3/q;Lb3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/w2;->a:La3/q;

    iput-object p2, p0, La3/w2;->b:Lb3/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La3/w2;->a:La3/q;

    .line 1
    iget-object v0, v0, La3/q;->f:Ljava/lang/Object;

    check-cast v0, La3/l2;

    invoke-virtual {v0, p1}, La3/l2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, La3/w2;->b:Lb3/b;

    invoke-interface {v0, p1}, Lb3/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
