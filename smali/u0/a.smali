.class public abstract Lu0/a;
.super Lt0/g;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lu0/a;

    return-void
.end method

.method public constructor <init>(Lt0/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lt0/g;-><init>(Lt0/c;)V

    const-string p1, "sku"

    invoke-virtual {p0, p1, p3}, Lt0/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
