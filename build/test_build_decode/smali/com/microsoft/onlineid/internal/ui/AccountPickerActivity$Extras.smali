.class final enum Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Extras"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

.field public static final enum CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    const-string v1, "CidsToExclude"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    aput-object v0, v1, v2

    sput-object v1, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;
    .locals 1

    const-class v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    const-string v0, "com.microsoft.msa.authenticator."

    .line 1
    invoke-static {v0}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
