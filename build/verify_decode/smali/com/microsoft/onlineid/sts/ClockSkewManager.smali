.class public Lcom/microsoft/onlineid/sts/ClockSkewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/ClockSkewManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/ClockSkewManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method

.method private setSkewMilliseconds(J)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ClockSkewManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeClockSkew(J)V

    return-void
.end method


# virtual methods
.method public getCurrentClientTime()Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public getCurrentServerTime()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentClientTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->toServerTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSkewMilliseconds()J
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ClockSkewManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readClockSkew()J

    move-result-wide v0

    return-wide v0
.end method

.method public onTimestampReceived(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentClientTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->setSkewMilliseconds(J)V

    return-void
.end method

.method public toClientTime(Ljava/util/Date;)Ljava/util/Date;
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getSkewMilliseconds()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toServerTime(Ljava/util/Date;)Ljava/util/Date;
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getSkewMilliseconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
