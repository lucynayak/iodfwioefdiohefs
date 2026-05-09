.class public final enum Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

.field public static final enum Always:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

.field public static final enum OnlyRemote:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

.field public static final enum UseDeviceSettings:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    const-string v1, "Always"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->Always:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    new-instance v1, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    const-string v3, "OnlyRemote"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->OnlyRemote:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    new-instance v3, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    const-string v5, "UseDeviceSettings"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->UseDeviceSettings:Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/viewmodel/StayAwakeSettings;

    return-object v0
.end method
