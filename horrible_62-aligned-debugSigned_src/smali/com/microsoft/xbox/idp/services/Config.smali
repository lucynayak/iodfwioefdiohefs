.class public Lcom/microsoft/xbox/idp/services/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->PROD:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    sput-object v0, Lcom/microsoft/xbox/idp/services/Config;->endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
