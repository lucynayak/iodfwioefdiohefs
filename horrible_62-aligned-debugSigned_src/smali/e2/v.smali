.class public final Le2/v;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# direct methods
.method public constructor <init>()V
    .registers 12

    const-string v0, "NameTags"

    const/4 v1, 0x1

    const-string v2, "Misc"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/e;

    const-string v2, "Display distance"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Le2/u;->a:Le2/u;

    .line 1
    iput-object v2, v0, Li2/e;->f:Li2/e$a;

    .line 2
    new-instance v2, Li2/d;

    const/4 v4, 0x4

    new-array v5, v4, [D

    fill-array-data v5, :array_0

    const-string v6, "Name tag size"

    invoke-direct {v2, v6, v5}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v5, Le2/r;->e:Le2/r;

    .line 3
    iput-object v5, v2, Li2/d;->f:Li2/d$a;

    .line 4
    new-instance v5, Li2/e;

    const-string v6, "Render items"

    invoke-direct {v5, v6, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v6, Ld2/c;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, Ld2/c;-><init>(Lc2/b;I)V

    .line 5
    iput-object v6, v5, Li2/e;->f:Li2/e$a;

    .line 6
    new-instance v6, Li2/d;

    new-array v8, v4, [D

    fill-array-data v8, :array_1

    const-string v9, "Item size"

    invoke-direct {v6, v9, v8}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v8, Le2/e;->f:Le2/e;

    .line 7
    iput-object v8, v6, Li2/d;->f:Li2/d$a;

    .line 8
    new-instance v8, Li2/d;

    new-array v9, v4, [D

    fill-array-data v9, :array_2

    const-string v10, "Items gap"

    invoke-direct {v8, v10, v9}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v9, Le2/r;->f:Le2/r;

    .line 9
    iput-object v9, v8, Li2/d;->f:Li2/d$a;

    const/4 v9, 0x5

    new-array v9, v9, [Li2/c;

    aput-object v0, v9, v3

    aput-object v2, v9, v1

    aput-object v5, v9, v7

    const/4 v0, 0x3

    aput-object v6, v9, v0

    aput-object v8, v9, v4

    .line 10
    invoke-virtual {p0, v9}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x3fe3333333333333L    # 0.6
        0x0
        0x3ff0000000000000L    # 1.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_1
    .array-data 8
        0x3fe8000000000000L    # 0.75
        0x0
        0x3ff0000000000000L    # 1.0
        0x3f847ae147ae147bL    # 0.01
    .end array-data

    :array_2
    .array-data 8
        0x4029000000000000L    # 12.5
        0x0
        0x4039000000000000L    # 25.0
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method


# virtual methods
.method public final E()V
    .registers 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method

.method public final G()V
    .registers 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method
