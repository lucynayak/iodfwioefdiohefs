.class public final Le2/g;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const-string v0, "AspectRatio"

    const/4 v1, 0x1

    const-string v2, "Misc"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v2, 0x4

    new-array v3, v2, [D

    fill-array-data v3, :array_0

    const-string v4, "Horizontal"

    invoke-direct {v0, v4, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v3, Le2/f;->b:Le2/f;

    .line 1
    iput-object v3, v0, Li2/d;->f:Li2/d$a;

    .line 2
    new-instance v3, Li2/d;

    new-array v2, v2, [D

    fill-array-data v2, :array_1

    const-string v4, "Vertical"

    invoke-direct {v3, v4, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v2, Le2/e;->b:Le2/e;

    .line 3
    iput-object v2, v3, Li2/d;->f:Li2/d$a;

    const/4 v2, 0x2

    new-array v2, v2, [Li2/c;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    aput-object v3, v2, v1

    .line 4
    invoke-virtual {p0, v2}, Lc2/b;->A([Li2/c;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff3333333333333L    # 1.2
        0x3fb999999999999aL    # 0.1
        0x4024000000000000L    # 10.0
        0x3fb999999999999aL    # 0.1
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
        0x4024000000000000L    # 10.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method

.method public final G()V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method
