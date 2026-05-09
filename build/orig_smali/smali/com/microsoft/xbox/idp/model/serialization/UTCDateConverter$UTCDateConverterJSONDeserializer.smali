.class public Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterJSONDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/o;
.implements Lp1/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTCDateConverterJSONDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp1/o<",
        "Ljava/util/Date;",
        ">;",
        "Lp1/w<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lp1/p;Ljava/lang/reflect/Type;Lp1/n;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterJSONDeserializer;->deserialize(Lp1/p;Ljava/lang/reflect/Type;Lp1/n;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lp1/p;Ljava/lang/reflect/Type;Lp1/n;)Ljava/util/Date;
    .locals 0

    invoke-virtual {p1}, Lp1/p;->A()Lp1/u;

    move-result-object p1

    invoke-virtual {p1}, Lp1/u;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->convert(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lp1/v;)Lp1/p;
    .locals 0

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterJSONDeserializer;->serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lp1/v;)Lp1/p;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lp1/v;)Lp1/p;
    .locals 0

    new-instance p2, Lp1/u;

    invoke-static {}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lp1/u;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
