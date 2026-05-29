.class public Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson$UTCDateConverterJSONDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson$UTCDateConverterJSONDeserializer;->deserialize(Lp1/p;Ljava/lang/reflect/Type;Lp1/n;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lp1/p;Ljava/lang/reflect/Type;Lp1/n;)Ljava/util/Date;
    .registers 4

    invoke-virtual {p1}, Lp1/p;->A()Lp1/u;

    move-result-object p1

    invoke-virtual {p1}, Lp1/u;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->convert(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
