.class public final enum Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AgeGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

.field public static final enum Adult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

.field public static final enum Child:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

.field public static final enum Teen:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;


# instance fields
.field public final resIdAgeGroup:I

.field public final resIdAgeGroupDetails:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    sget v1, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_adult:I

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_adult_details_android:I

    const-string v3, "Adult"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Adult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_teen:I

    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_teen_details_android:I

    const-string v5, "Teen"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Teen:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_child:I

    sget v5, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_child_details_android:I

    const-string v7, "Child"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Child:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    aput-object v0, v3, v4

    aput-object v1, v3, v6

    aput-object v2, v3, v8

    sput-object v3, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->$VALUES:[Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->resIdAgeGroup:I

    iput p4, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->resIdAgeGroupDetails:I

    return-void
.end method

.method public static fromServiceString(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    .registers 4

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating AgeGroup from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "adult"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Adult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    return-object p0

    :cond_0
    const-string v0, "teen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Teen:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    return-object p0

    :cond_1
    const-string v0, "child"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Child:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    .registers 2

    const-class v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->$VALUES:[Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    return-object v0
.end method
