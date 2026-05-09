.class public final enum Lcom/microsoft/xbox/idp/interop/Interop$MSAError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MSAError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/interop/Interop$MSAError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

.field public static final enum NONE:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

.field public static final enum OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

.field public static final enum UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

.field public static final enum USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->NONE:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    new-instance v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    const-string v3, "UI_INTERACTION_REQUIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    new-instance v3, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    const-string v5, "USER_CANCEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    new-instance v5, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    const-string v7, "OTHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/Interop$MSAError;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/interop/Interop$MSAError;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    return-object v0
.end method
