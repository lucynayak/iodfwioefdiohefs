.class public final Lh2/e;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public final o:Li2/d;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v0, "ChestStealer"

    const/4 v1, 0x1

    const-string v2, "Player"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Li2/d;

    const/4 v2, 0x4

    new-array v3, v2, [D

    fill-array-data v3, :array_0

    const-string v4, "Loot delay"

    invoke-direct {v0, v4, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v3, Le2/e;->g:Le2/e;

    .line 1
    iput-object v3, v0, Li2/d;->f:Li2/d$a;

    .line 2
    new-instance v3, Li2/e;

    const-string v4, "Auto close"

    invoke-direct {v3, v4, v1}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v4, Ld2/a;

    const/16 v5, 0xa

    invoke-direct {v4, p0, v5}, Ld2/a;-><init>(Lc2/b;I)V

    .line 3
    iput-object v4, v3, Li2/e;->f:Li2/e$a;

    .line 4
    new-instance v4, Li2/d;

    new-array v2, v2, [D

    fill-array-data v2, :array_1

    const-string v5, "Close delay"

    invoke-direct {v4, v5, v2}, Li2/d;-><init>(Ljava/lang/String;[D)V

    sget-object v2, Le2/f;->g:Le2/f;

    .line 5
    iput-object v2, v4, Li2/d;->f:Li2/d$a;

    .line 6
    iput-object v4, p0, Lh2/e;->o:Li2/d;

    const/4 v2, 0x3

    new-array v2, v2, [Li2/c;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    aput-object v3, v2, v1

    const/4 v0, 0x2

    aput-object v4, v2, v0

    invoke-virtual {p0, v2}, Lc2/b;->A([Li2/c;)V

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x4034000000000000L    # 20.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x0
        0x4049000000000000L    # 50.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final E()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    return-void
.end method

.method public final G()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    iget-object v0, p0, Lh2/e;->o:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void
.end method

.method public final I()V
    .locals 0

    return-void
.end method

.method public final J()V
    .locals 0

    return-void
.end method
