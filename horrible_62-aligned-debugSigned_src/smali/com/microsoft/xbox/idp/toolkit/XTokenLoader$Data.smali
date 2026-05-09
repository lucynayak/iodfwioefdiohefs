.class public Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private final authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/util/AuthFlowResult;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;->authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    return-void
.end method


# virtual methods
.method public getAuthFlowResult()Lcom/microsoft/xbox/idp/util/AuthFlowResult;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;->authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    return-object v0
.end method
