.class public Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public static getUpdateThirdPartyTokenRequestBody(Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
