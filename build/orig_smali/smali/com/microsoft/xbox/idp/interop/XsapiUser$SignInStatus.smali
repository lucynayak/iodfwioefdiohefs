.class public final enum Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignInStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

.field public static final enum SUCCESS:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

.field public static final enum USER_CANCEL:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

.field public static final enum USER_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->SUCCESS:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    new-instance v1, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    const-string v3, "USER_INTERACTION_REQUIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->USER_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    new-instance v3, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    const-string v5, "USER_CANCEL"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    new-array v5, v7, [Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->$VALUES:[Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    return-object p0

    :cond_0
    sget-object p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->USER_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->SUCCESS:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->$VALUES:[Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    return-object v0
.end method
