.class public abstract Ld3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isText()Z
    .registers 1

    instance-of p0, p0, Ld3/b$d;

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ld3/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final m()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public w()Z
    .registers 1

    instance-of p0, p0, Ld3/b$a;

    return p0
.end method
