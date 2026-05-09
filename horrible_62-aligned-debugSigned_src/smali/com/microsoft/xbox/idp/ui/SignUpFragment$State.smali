.class Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignUpFragment;
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
            "Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

.field public gamerTag:Ljava/lang/String;

.field public gamerTagWithSuggestions:Ljava/lang/String;

.field public reserved:Z

.field public suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->reserved:Z

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    new-instance v0, Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->reserved:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    const-class v0, Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    const-class v0, Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/util/ErrorHelper;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasSuggestions()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/model/Suggestions$Response;->Gamertags:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->reserved:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->suggestions:Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
