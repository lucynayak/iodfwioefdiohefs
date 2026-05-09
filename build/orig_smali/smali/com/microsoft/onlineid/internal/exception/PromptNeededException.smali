.class public Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
.super Lcom/microsoft/onlineid/exception/AuthenticationException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _request:Lcom/microsoft/onlineid/internal/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/ApiRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;->_request:Lcom/microsoft/onlineid/internal/ApiRequest;

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;->_request:Lcom/microsoft/onlineid/internal/ApiRequest;

    return-object v0
.end method
