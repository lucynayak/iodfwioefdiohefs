.class public final enum Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

.field public static final enum BAN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

.field public static final enum CATCHALL:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

.field public static final enum CREATION:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

.field public static final enum OFFLINE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v1, "BAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->BAN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    new-instance v1, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v3, "CREATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CREATION:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    new-instance v3, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v5, "OFFLINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->OFFLINE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    new-instance v5, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v7, "CATCHALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CATCHALL:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

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

    iput p3, p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->id:I

    return v0
.end method
