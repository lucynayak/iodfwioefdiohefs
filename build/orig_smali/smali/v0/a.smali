.class public final Lv0/a;
.super Lv0/c;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lv0/a;

    return-void
.end method

.method public constructor <init>(Lt0/c;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/c;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "2.0"

    invoke-direct {p0, p1, v0, p2}, Lv0/c;-><init>(Lt0/c;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
