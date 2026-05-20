.class final enum Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum ACCOUNT_PROVISIONING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum EVENT_INITIALIZATION:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum FINISH_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum INTRODUCING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum SIGN_UP:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum START_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum WELCOME:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum XB_LOGIN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum XB_LOGOUT:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "START_SIGN_IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->START_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v3, "MSA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v3, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v5, "XB_LOGIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->XB_LOGIN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v5, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v7, "ACCOUNT_PROVISIONING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->ACCOUNT_PROVISIONING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v7, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v9, "SIGN_UP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->SIGN_UP:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v9, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v11, "EVENT_INITIALIZATION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->EVENT_INITIALIZATION:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v11, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v13, "INTRODUCING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->INTRODUCING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v13, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v15, "WELCOME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->WELCOME:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v15, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v14, "FINISH_SIGN_IN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->FINISH_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v14, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v12, "XB_LOGOUT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->XB_LOGOUT:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->$VALUES:[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->$VALUES:[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    return-object v0
.end method
