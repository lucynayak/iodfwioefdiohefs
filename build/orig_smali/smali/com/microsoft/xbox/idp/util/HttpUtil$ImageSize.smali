.class public final enum Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/util/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

.field public static final enum LARGE:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

.field public static final enum MEDIUM:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

.field public static final enum SMALL:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;


# instance fields
.field private final h:I

.field private final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->SMALL:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    new-instance v1, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    const/16 v5, 0xd0

    invoke-direct {v1, v3, v4, v5, v5}, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->MEDIUM:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    new-instance v3, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    const-string v5, "LARGE"

    const/4 v6, 0x2

    const/16 v7, 0x1a8

    invoke-direct {v3, v5, v6, v7, v7}, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->LARGE:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->$VALUES:[Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->w:I

    iput p4, p0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->h:I

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;)I
    .locals 0

    iget p0, p0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->h:I

    return p0
.end method

.method public static synthetic access$100(Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;)I
    .locals 0

    iget p0, p0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->w:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->$VALUES:[Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    return-object v0
.end method
