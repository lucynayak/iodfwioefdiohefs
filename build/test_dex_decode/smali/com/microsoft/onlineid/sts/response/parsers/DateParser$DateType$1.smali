.class final enum Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType$1;
.super Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;-><init>(Ljava/lang/String;ILcom/microsoft/onlineid/sts/response/parsers/DateParser$1;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long v3, v3, v1

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Cannot parse date node: %s"

    invoke-direct {v1, p1, v0, v2}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method
