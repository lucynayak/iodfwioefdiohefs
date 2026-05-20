.class public final Lp1/r;
.super Lp1/p;
.source "SourceFile"


# static fields
.field public static final a:Lp1/r;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lp1/r;

    invoke-direct {v0}, Lp1/r;-><init>()V

    sput-object v0, Lp1/r;->a:Lp1/r;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lp1/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_1

    instance-of p1, p1, Lp1/r;

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

.method public final hashCode()I
    .registers 2

    const-class v0, Lp1/r;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
