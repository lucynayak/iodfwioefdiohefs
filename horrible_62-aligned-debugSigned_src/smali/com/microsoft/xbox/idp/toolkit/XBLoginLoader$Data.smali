.class public Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private final authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;

.field private final createAccount:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    iput-boolean p2, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->createAccount:Z

    return-void
.end method


# virtual methods
.method public getAuthFlowResult()Lcom/microsoft/xbox/idp/util/AuthFlowResult;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    return-object v0
.end method

.method public isCreateAccount()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->createAccount:Z

    return v0
.end method
