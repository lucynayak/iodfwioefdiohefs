.class Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountProvisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

.field public cid:Ljava/lang/String;

.field public createAccount:Z

.field public currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

.field public nativeActivity:Z

.field public ticket:Ljava/lang/String;

.field public userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->values()[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    move-result-object v2

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->createAccount:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->values()[Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    :cond_3
    const-class v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->accountProvisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->createAccount:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->accountProvisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
