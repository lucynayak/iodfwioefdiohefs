.class public Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterShortDateAlternateFormatJSONDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTCDateConverterShortDateAlternateFormatJSONDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp1/o<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lp1/p;Ljava/lang/reflect/Type;Lp1/n;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterShortDateAlternateFormatJSONDeserializer;->deserialize(Lp1/p;Ljava/lang/reflect/Type;Lp1/n;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lp1/p;Ljava/lang/reflect/Type;Lp1/n;)Ljava/util/Date;
    .registers 6

    invoke-virtual {p1}, Lp1/p;->A()Lp1/u;

    move-result-object p1

    invoke-virtual {p1}, Lp1/u;->B()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GMT"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->access$200()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to parse short date "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->access$300()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_1
    invoke-static {}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->access$300()Ljava/text/SimpleDateFormat;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to parse alternate short date "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-object p3
.end method
