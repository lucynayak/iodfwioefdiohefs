.class public final enum Lcom/microsoft/bond/BondDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/bond/BondDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_BOOL:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_FLOAT:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_INT16:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_INT32:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_INT64:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_INT8:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_LIST:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_MAP:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_SET:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_STOP:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_STRING:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_STRUCT:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_UINT16:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_UINT32:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_UINT64:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_UINT8:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_WSTRING:Lcom/microsoft/bond/BondDataType;

.field public static final enum __INVALID_ENUM_VALUE:Lcom/microsoft/bond/BondDataType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .registers 24

    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    new-instance v1, Lcom/microsoft/bond/BondDataType;

    const-string v3, "BT_STOP_BASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    new-instance v3, Lcom/microsoft/bond/BondDataType;

    const-string v5, "BT_BOOL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    new-instance v5, Lcom/microsoft/bond/BondDataType;

    const-string v7, "BT_UINT8"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    new-instance v7, Lcom/microsoft/bond/BondDataType;

    const-string v9, "BT_UINT16"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    new-instance v9, Lcom/microsoft/bond/BondDataType;

    const-string v11, "BT_UINT32"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    new-instance v11, Lcom/microsoft/bond/BondDataType;

    const-string v13, "BT_UINT64"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    new-instance v13, Lcom/microsoft/bond/BondDataType;

    const-string v15, "BT_FLOAT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/microsoft/bond/BondDataType;->BT_FLOAT:Lcom/microsoft/bond/BondDataType;

    new-instance v15, Lcom/microsoft/bond/BondDataType;

    const-string v14, "BT_DOUBLE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    new-instance v14, Lcom/microsoft/bond/BondDataType;

    const-string v12, "BT_STRING"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    new-instance v12, Lcom/microsoft/bond/BondDataType;

    const-string v10, "BT_STRUCT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    new-instance v10, Lcom/microsoft/bond/BondDataType;

    const-string v8, "BT_LIST"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    new-instance v8, Lcom/microsoft/bond/BondDataType;

    const-string v6, "BT_SET"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/microsoft/bond/BondDataType;->BT_SET:Lcom/microsoft/bond/BondDataType;

    new-instance v6, Lcom/microsoft/bond/BondDataType;

    const-string v4, "BT_MAP"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    new-instance v4, Lcom/microsoft/bond/BondDataType;

    const-string v2, "BT_INT8"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    new-instance v2, Lcom/microsoft/bond/BondDataType;

    const-string v6, "BT_INT16"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    new-instance v6, Lcom/microsoft/bond/BondDataType;

    const-string v4, "BT_INT32"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    new-instance v4, Lcom/microsoft/bond/BondDataType;

    const-string v2, "BT_INT64"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    new-instance v2, Lcom/microsoft/bond/BondDataType;

    const-string v6, "BT_WSTRING"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    new-instance v6, Lcom/microsoft/bond/BondDataType;

    const-string v4, "BT_UNAVAILABLE"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    move-object/from16 v22, v8

    const/16 v8, 0x7f

    invoke-direct {v6, v4, v2, v8}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    new-instance v4, Lcom/microsoft/bond/BondDataType;

    const-string v8, "__INVALID_ENUM_VALUE"

    const/16 v2, 0x14

    move-object/from16 v23, v6

    const/16 v6, 0x80

    invoke-direct {v4, v8, v2, v6}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/bond/BondDataType;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/BondDataType;

    const/16 v6, 0x15

    new-array v6, v6, [Lcom/microsoft/bond/BondDataType;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v22, v6, v0

    const/16 v0, 0xd

    aput-object v16, v6, v0

    const/16 v0, 0xe

    aput-object v17, v6, v0

    const/16 v0, 0xf

    aput-object v18, v6, v0

    const/16 v0, 0x10

    aput-object v19, v6, v0

    const/16 v0, 0x11

    aput-object v20, v6, v0

    const/16 v0, 0x12

    aput-object v21, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    aput-object v4, v6, v2

    sput-object v6, Lcom/microsoft/bond/BondDataType;->$VALUES:[Lcom/microsoft/bond/BondDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/bond/BondDataType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/microsoft/bond/BondDataType;
    .registers 2

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/microsoft/bond/BondDataType;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_SET:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_FLOAT:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/bond/BondDataType;
    .registers 2

    const-class v0, Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/bond/BondDataType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/bond/BondDataType;
    .registers 1

    sget-object v0, Lcom/microsoft/bond/BondDataType;->$VALUES:[Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0}, [Lcom/microsoft/bond/BondDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/bond/BondDataType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/microsoft/bond/BondDataType;->value:I

    return v0
.end method
