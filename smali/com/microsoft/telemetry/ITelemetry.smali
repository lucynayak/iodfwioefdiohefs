.class public abstract Lcom/microsoft/telemetry/ITelemetry;
.super Lcom/microsoft/telemetry/Domain;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/telemetry/Domain;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBaseType()Ljava/lang/String;
.end method

.method public abstract getEnvelopeName()Ljava/lang/String;
.end method

.method public abstract getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setProperties(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVer(I)V
.end method
