.class public final Ld3/o;
.super Ld3/e0;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ld3/e0;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ld3/m;)Z
    .registers 2

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
