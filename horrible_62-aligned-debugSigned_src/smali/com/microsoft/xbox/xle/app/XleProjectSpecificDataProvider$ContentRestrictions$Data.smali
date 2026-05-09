.class public Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field public geographicRegion:Ljava/lang/String;

.field public maxAgeRating:I

.field public preferredAgeRating:I

.field public restrictPromotionalContent:Z

.field public final synthetic this$1:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;->this$1:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
