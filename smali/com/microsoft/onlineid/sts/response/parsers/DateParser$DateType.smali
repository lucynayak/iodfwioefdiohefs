.class abstract enum Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/response/parsers/DateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "DateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

.field public static final enum Iso8601DateTimeIgnoreTimeZone:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

.field public static final enum SecondsSinceEpoch:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType$1;

    const-string v1, "SecondsSinceEpoch"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->SecondsSinceEpoch:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    new-instance v1, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType$2;

    const-string v3, "Iso8601DateTimeIgnoreTimeZone"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->Iso8601DateTimeIgnoreTimeZone:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->$VALUES:[Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/microsoft/onlineid/sts/response/parsers/DateParser$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->$VALUES:[Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    return-object v0
.end method


# virtual methods
.method public abstract parse(Ljava/lang/String;)Ljava/util/Date;
.end method
