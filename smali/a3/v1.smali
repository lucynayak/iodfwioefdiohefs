.class public final La3/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/c;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lc3/c;


# direct methods
.method public constructor <init>(Lc3/c;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La3/v1;->a:Ljava/lang/Class;

    iput-object p1, p0, La3/v1;->b:Lc3/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, La3/v1;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, La3/v1;->b:Lc3/c;

    invoke-interface {v0, p1}, Lc3/c;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La3/v1;->b:Lc3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
