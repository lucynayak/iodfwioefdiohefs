.class Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignOutActivity;
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
            "Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currentTask:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->values()[Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
