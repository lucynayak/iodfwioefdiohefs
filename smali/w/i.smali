.class public final Lw/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/h$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw/h$b<",
        "Lv/c$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lv/c$c;

    iget p1, p1, Lv/c$c;->b:I

    return p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lv/c$c;

    iget-boolean p1, p1, Lv/c$c;->c:Z

    return p1
.end method
