.class final enum Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignOutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

.field public static final enum SIGN_OUT:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    const-string v1, "SIGN_OUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->SIGN_OUT:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    aput-object v0, v1, v2

    sput-object v1, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->$VALUES:[Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->$VALUES:[Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    return-object v0
.end method
