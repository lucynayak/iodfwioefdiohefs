.class public final enum Lcom/microsoft/cll/android/EventEnums$Sensitivity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/EventEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sensitivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/cll/android/EventEnums$Sensitivity;

.field public static final enum SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

.field public static final enum SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

.field public static final enum SensitivityMark:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

.field public static final enum SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

.field public static final enum SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const-string v1, "SensitivityUnspecified"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    new-instance v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const-string v4, "SensitivityNone"

    invoke-direct {v1, v4, v3, v2}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    new-instance v4, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const-string v5, "SensitivityMark"

    const/4 v6, 0x2

    const/high16 v7, 0x80000

    invoke-direct {v4, v5, v6, v7}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityMark:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    new-instance v5, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const-string v7, "SensitivityHash"

    const/4 v8, 0x3

    const/high16 v9, 0x100000

    invoke-direct {v5, v7, v8, v9}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    new-instance v7, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const-string v9, "SensitivityDrop"

    const/4 v10, 0x4

    const/high16 v11, 0x200000

    invoke-direct {v7, v9, v10, v11}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Sensitivity;

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

    iput p3, p0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->id:I

    return-void
.end method

.method public static FromString(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    if-eqz p0, :cond_3

    const-string v1, "MARK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USERSENSITIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityMark:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "DROP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "HASH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Sensitivity;
    .locals 1

    const-class v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/cll/android/EventEnums$Sensitivity;
    .locals 1

    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {v0}, [Lcom/microsoft/cll/android/EventEnums$Sensitivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    return-object v0
.end method
