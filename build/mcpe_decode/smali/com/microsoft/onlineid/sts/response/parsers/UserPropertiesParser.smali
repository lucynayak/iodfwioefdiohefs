.class public Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private final _userProperties:Lcom/microsoft/onlineid/sts/UserProperties;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string v0, "http://schemas.microsoft.com/Passport/SoapServices/SOAPFault"

    const-string v1, "credProperties"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/onlineid/sts/UserProperties;

    invoke-direct {p1}, Lcom/microsoft/onlineid/sts/UserProperties;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    return-void
.end method


# virtual methods
.method public getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    return-object v0
.end method

.method public onParse()V
    .locals 3

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTagNoThrow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, ""

    const-string v2, "Name"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :catch_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->skipElement()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;->valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/microsoft/onlineid/sts/UserProperties;->put(Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/UserProperties;

    goto :goto_0

    :cond_1
    return-void
.end method
