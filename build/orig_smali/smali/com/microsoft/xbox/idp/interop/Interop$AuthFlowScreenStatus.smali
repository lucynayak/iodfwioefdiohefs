.class public final enum Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthFlowScreenStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

.field public static final enum ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

.field public static final enum NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

.field public static final enum PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    new-instance v1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    const-string v3, "ERROR_USER_CANCEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    new-instance v3, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    const-string v5, "PROVIDER_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

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

    iput p3, p0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->id:I

    return v0
.end method
