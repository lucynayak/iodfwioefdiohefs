.class public final Lw0/c;
.super Lv0/c;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lw0/c;

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lt0/c;)V
    .registers 3

    const-string v0, "1.0"

    invoke-direct {p0, p1, v0}, Lv0/c;-><init>(Lt0/c;Ljava/lang/String;)V

    return-void
.end method
