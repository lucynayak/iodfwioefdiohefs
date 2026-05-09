.class public final enum Lcom/microsoft/cll/android/EventEnums$Latency;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/EventEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Latency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/cll/android/EventEnums$Latency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/cll/android/EventEnums$Latency;

.field public static final enum LatencyNormal:Lcom/microsoft/cll/android/EventEnums$Latency;

.field public static final enum LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

.field public static final enum LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Latency;

    const-string v1, "LatencyUnspecified"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/cll/android/EventEnums$Latency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;

    new-instance v1, Lcom/microsoft/cll/android/EventEnums$Latency;

    const-string v3, "LatencyNormal"

    const/4 v4, 0x1

    const/16 v5, 0x100

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/cll/android/EventEnums$Latency;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyNormal:Lcom/microsoft/cll/android/EventEnums$Latency;

    new-instance v3, Lcom/microsoft/cll/android/EventEnums$Latency;

    const-string v5, "LatencyRealtime"

    const/4 v6, 0x2

    const/16 v7, 0x200

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/cll/android/EventEnums$Latency;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/cll/android/EventEnums$Latency;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/cll/android/EventEnums$Latency;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Latency;

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

    iput p3, p0, Lcom/microsoft/cll/android/EventEnums$Latency;->id:I

    return-void
.end method

.method public static FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Latency;
    .locals 1

    const-string v0, "REALTIME"

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

    return-object p0

    :cond_0
    sget-object p0, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyNormal:Lcom/microsoft/cll/android/EventEnums$Latency;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Latency;
    .locals 1

    const-class v0, Lcom/microsoft/cll/android/EventEnums$Latency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/cll/android/EventEnums$Latency;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/cll/android/EventEnums$Latency;
    .locals 1

    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Latency;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Latency;

    invoke-virtual {v0}, [Lcom/microsoft/cll/android/EventEnums$Latency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/cll/android/EventEnums$Latency;

    return-object v0
.end method
