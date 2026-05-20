.class public final enum Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;
.super Ljava/lang/Enum;
.source "Interop.java"


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
        "Ljava/lang/Enum",
        "<",
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
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 493
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v1, "BAN"

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->BAN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    .line 494
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v1, "CREATION"

    invoke-direct {v0, v1, v3, v3}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CREATION:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    .line 495
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v4, v4}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->OFFLINE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    .line 496
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v1, "CATCHALL"

    invoke-direct {v0, v1, v5, v5}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CATCHALL:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    .line 491
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->BAN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CREATION:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->OFFLINE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CATCHALL:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 501
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 502
    iput p3, p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->id:I

    .line 503
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 491
    const-class v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;
    .registers 1

    .prologue
    .line 491
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 507
    iget v0, p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->id:I

    return v0
.end method
