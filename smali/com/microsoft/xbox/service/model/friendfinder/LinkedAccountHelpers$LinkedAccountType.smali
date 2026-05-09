.class public final enum Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkedAccountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

.field public static final enum Facebook:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

.field public static final enum Phone:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

.field public static final enum Unknown:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->Unknown:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    const-string v3, "Facebook"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->Facebook:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    new-instance v3, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    const-string v5, "Phone"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->Phone:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->$VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->$VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    return-object v0
.end method
