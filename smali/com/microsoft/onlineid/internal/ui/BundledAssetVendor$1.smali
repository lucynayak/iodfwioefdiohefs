.class synthetic Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$onlineid$internal$ui$PropertyBag$Key:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->values()[Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor$1;->$SwitchMap$com$microsoft$onlineid$internal$ui$PropertyBag$Key:[I

    :try_start_0
    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor$1;->$SwitchMap$com$microsoft$onlineid$internal$ui$PropertyBag$Key:[I

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleHits:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor$1;->$SwitchMap$com$microsoft$onlineid$internal$ui$PropertyBag$Key:[I

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleMisses:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
