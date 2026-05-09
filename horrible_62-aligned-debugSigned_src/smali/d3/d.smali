.class public abstract Ld3/d;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Ld3/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ld3/a;",
        ">;",
        "Ld3/e;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isText()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final w()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
