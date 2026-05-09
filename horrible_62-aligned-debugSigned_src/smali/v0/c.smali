.class public abstract Lv0/c;
.super Lt0/g;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Lt0/c;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lt0/g;-><init>(Lt0/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lt0/c;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4

    invoke-direct {p0, p1}, Lt0/g;-><init>(Lt0/c;)V

    const-string p1, "skus"

    invoke-virtual {p0, p1, p3}, Lt0/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
