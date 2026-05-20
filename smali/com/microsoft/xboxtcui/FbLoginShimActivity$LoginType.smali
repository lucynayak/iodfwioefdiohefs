.class public final enum Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xboxtcui/FbLoginShimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

.field public static final enum PUBLISH:Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

.field public static final enum READ:Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->READ:Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    new-instance v1, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    const-string v3, "PUBLISH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->PUBLISH:Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->$VALUES:[Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;
    .registers 2

    const-class v0, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;
    .registers 1

    sget-object v0, Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->$VALUES:[Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    invoke-virtual {v0}, [Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xboxtcui/FbLoginShimActivity$LoginType;

    return-object v0
.end method
