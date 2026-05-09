.class public final enum Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum LARGE:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum LARGE_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum MEDIUM:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum MEDIUM_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum MEDIUM_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum SMALL:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum SMALL_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum SMALL_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum TINY:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum TINY_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum TINY_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "TINY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v1, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v3, "TINY_3X4"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v3, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v5, "TINY_4X3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v5, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v7, "SMALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v7, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v9, "SMALL_3X4"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v9, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v11, "SMALL_4X3"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v11, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v13, "MEDIUM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v13, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v15, "MEDIUM_3X4"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v15, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v14, "MEDIUM_4X3"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v14, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v12, "LARGE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->LARGE:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v12, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v10, "LARGE_3X4"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->LARGE_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->$VALUES:[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->$VALUES:[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    return-object v0
.end method
