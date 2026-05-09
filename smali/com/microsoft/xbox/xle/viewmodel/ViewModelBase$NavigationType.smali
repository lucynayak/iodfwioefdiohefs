.class final enum Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

.field public static final enum PopAll:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

.field public static final enum PopReplace:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

.field public static final enum Push:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    const-string v1, "Push"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->Push:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    new-instance v1, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    const-string v3, "PopReplace"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->PopReplace:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    new-instance v3, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    const-string v5, "PopAll"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->PopAll:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    return-object v0
.end method
