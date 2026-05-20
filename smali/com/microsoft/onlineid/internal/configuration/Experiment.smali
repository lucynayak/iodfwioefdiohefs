.class public final enum Lcom/microsoft/onlineid/internal/configuration/Experiment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/configuration/Experiment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/configuration/Experiment;

.field public static final enum QRCodeExperiment:Lcom/microsoft/onlineid/internal/configuration/Experiment;


# instance fields
.field private final _experimentName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Experiment;

    const-string v1, "QRCodeExperiment"

    const/4 v2, 0x0

    const-string v3, "MSAClient_Experiment1"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/configuration/Experiment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->QRCodeExperiment:Lcom/microsoft/onlineid/internal/configuration/Experiment;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/microsoft/onlineid/internal/configuration/Experiment;

    aput-object v0, v1, v2

    sput-object v1, Lcom/microsoft/onlineid/internal/configuration/Experiment;->$VALUES:[Lcom/microsoft/onlineid/internal/configuration/Experiment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->_experimentName:Ljava/lang/String;

    return-void
.end method

.method public static getExperimentList()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Experiment;->values()[Lcom/microsoft/onlineid/internal/configuration/Experiment;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/configuration/Experiment;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/internal/configuration/Experiment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/configuration/Experiment;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/configuration/Experiment;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->$VALUES:[Lcom/microsoft/onlineid/internal/configuration/Experiment;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/configuration/Experiment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/configuration/Experiment;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->_experimentName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->_experimentName:Ljava/lang/String;

    return-object v0
.end method
