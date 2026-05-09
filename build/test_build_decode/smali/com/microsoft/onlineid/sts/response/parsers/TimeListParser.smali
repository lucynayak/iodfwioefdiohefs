.class public Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# instance fields
.field private _expires:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExpires()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->_expires:Ljava/util/Date;

    return-object v0
.end method

.method public onParse()V
    .locals 3

    const-string v0, "wsu:Expires"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTag(Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->Iso8601DateTimeIgnoreTimeZone:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->parse()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->_expires:Ljava/util/Date;

    return-void
.end method
