.class final Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;
    .registers 3

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    invoke-direct {v0, p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State$1;->createFromParcel(Landroid/os/Parcel;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;
    .registers 2

    new-array p1, p1, [Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State$1;->newArray(I)[Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object p1

    return-object p1
.end method
