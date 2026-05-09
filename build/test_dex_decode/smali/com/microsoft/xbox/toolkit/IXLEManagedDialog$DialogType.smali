.class public final enum Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

.field public static final enum FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

.field public static final enum NON_FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

.field public static final enum NORMAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    const-string v1, "FATAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    new-instance v1, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    const-string v3, "NON_FATAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NON_FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    new-instance v3, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NORMAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->$VALUES:[Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->$VALUES:[Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    return-object v0
.end method
