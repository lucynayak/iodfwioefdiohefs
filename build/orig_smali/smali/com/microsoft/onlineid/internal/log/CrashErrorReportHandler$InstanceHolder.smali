.class Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field private static instance:Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;-><init>(Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$1;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$InstanceHolder;->instance:Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler$InstanceHolder;->instance:Lcom/microsoft/onlineid/internal/log/CrashErrorReportHandler;

    return-object v0
.end method
