.class public final Ll1/f;
.super Ll1/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/i<",
        "Ll1/f;",
        "Ll1/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ll1/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll1/f$a;

    invoke-direct {v0}, Ll1/f$a;-><init>()V

    sput-object v0, Ll1/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Ll1/i;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ll1/f$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ll1/i;-><init>(Ll1/i$a;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ll1/i;->b:Landroid/os/Bundle;

    const-string v1, "og:type"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
