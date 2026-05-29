.class Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemSettingsModelContainer"
.end annotation


# static fields
.field private static instance:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;-><init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel$1;)V

    sput-object v0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;->instance:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;->instance:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    return-object v0
.end method
