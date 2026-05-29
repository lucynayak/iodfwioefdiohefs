.class public final Landroid/support/design/widget/BottomSheetBehavior$b;
.super Ld0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/design/widget/BottomSheetBehavior$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$b$a;

    invoke-direct {v0}, Landroid/support/design/widget/BottomSheetBehavior$b$a;-><init>()V

    sput-object v0, Landroid/support/design/widget/BottomSheetBehavior$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ld0/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .registers 3

    invoke-direct {p0, p1}, Ld0/a;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->d:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Ld0/a;->b:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
