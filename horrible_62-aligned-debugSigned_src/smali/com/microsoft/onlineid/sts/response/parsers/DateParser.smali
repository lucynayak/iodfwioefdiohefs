.class public Lcom/microsoft/onlineid/sts/response/parsers/DateParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
    }
.end annotation


# instance fields
.field private _date:Ljava/util/Date;

.field private final _type:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->_type:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->verifyParseCalled()V

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public onParse()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->_type:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->_date:Ljava/util/Date;

    return-void
.end method
