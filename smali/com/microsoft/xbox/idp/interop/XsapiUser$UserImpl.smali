.class public Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserImpl"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->id:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->id:J

    return-void
.end method

.method private getId()J
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->id:J

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getUserImplPtr()J
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->id:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
