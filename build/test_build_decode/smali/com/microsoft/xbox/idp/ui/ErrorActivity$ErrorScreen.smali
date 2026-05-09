.class public final enum Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/ErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorScreen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;


# instance fields
.field public final errorFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/idp/compat/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final leftButtonTextId:I

.field public final type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v6, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v3, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->BAN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v4, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;

    sget v5, Lcom/microsoft/xbox/idp/R$string;->xbid_more_info:I

    const-string v1, "BAN"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v6, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v10, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CREATION:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v11, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;

    sget v1, Lcom/microsoft/xbox/idp/R$string;->xbid_try_again:I

    const-string v8, "CREATION"

    const/4 v9, 0x1

    move-object v7, v0

    move v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v15, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->OFFLINE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v16, Lcom/microsoft/xbox/idp/ui/OfflineErrorFragment;

    const-string v13, "OFFLINE"

    const/4 v14, 0x2

    move-object v12, v2

    move/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    new-instance v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v15, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CATCHALL:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v16, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;

    const-string v13, "CATCHALL"

    const/4 v14, 0x3

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    const/4 v4, 0x0

    aput-object v6, v1, v4

    const/4 v4, 0x1

    aput-object v0, v1, v4

    const/4 v0, 0x2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v3, v1, v0

    sput-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->$VALUES:[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/idp/compat/BaseFragment;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    iput-object p4, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->errorFragmentClass:Ljava/lang/Class;

    iput p5, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->leftButtonTextId:I

    return-void
.end method

.method public static fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .locals 5

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->values()[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-virtual {v4}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->$VALUES:[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    return-object v0
.end method
