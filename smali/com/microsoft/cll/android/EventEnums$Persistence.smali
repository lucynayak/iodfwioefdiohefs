.class public final enum Lcom/microsoft/cll/android/EventEnums$Persistence;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/EventEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Persistence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/cll/android/EventEnums$Persistence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/cll/android/EventEnums$Persistence;

.field public static final enum PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

.field public static final enum PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

.field public static final enum PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Persistence;

    const-string v1, "PersistenceUnspecified"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/cll/android/EventEnums$Persistence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;

    new-instance v1, Lcom/microsoft/cll/android/EventEnums$Persistence;

    const-string v3, "PersistenceNormal"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/cll/android/EventEnums$Persistence;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

    new-instance v3, Lcom/microsoft/cll/android/EventEnums$Persistence;

    const-string v5, "PersistenceCritical"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/microsoft/cll/android/EventEnums$Persistence;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/cll/android/EventEnums$Persistence;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/cll/android/EventEnums$Persistence;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/cll/android/EventEnums$Persistence;->id:I

    return-void
.end method

.method public static FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Persistence;
    .registers 2

    const-string v0, "CRITICAL"

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-object p0

    :cond_0
    sget-object p0, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Persistence;
    .registers 2

    const-class v0, Lcom/microsoft/cll/android/EventEnums$Persistence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/cll/android/EventEnums$Persistence;
    .registers 1

    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Persistence;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Persistence;

    invoke-virtual {v0}, [Lcom/microsoft/cll/android/EventEnums$Persistence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-object v0
.end method
