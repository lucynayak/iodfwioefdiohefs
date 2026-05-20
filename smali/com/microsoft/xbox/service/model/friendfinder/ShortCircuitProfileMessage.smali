.class public Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ErrorReturn;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$MsgType;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileRequest;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;,
        Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessage(Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 p0, 0x1000

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Failed to read ShortCircuitProfileMessage string - "

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return-object p0
.end method
