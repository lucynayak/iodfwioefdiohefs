.class public Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;",
            ">;"
        }
    .end annotation
.end field

.field public static RESULT_NOCID:I = 0x1

.field public static RESULT_SUCCESS:I = 0x0

.field public static RESULT_UNEXPECTED:I = 0x2


# instance fields
.field private errorCode:I

.field private pendingIntent:Landroid/app/PendingIntent;

.field private ticket:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->errorCode:I

    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->errorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->ticket:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->ticket:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {p2, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    return-void
.end method
