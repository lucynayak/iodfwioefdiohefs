.class public final enum Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/XBLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

.field public static final enum ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

.field public static final enum PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

.field public static final enum SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    new-instance v3, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    const-string v5, "PROVIDER_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->$VALUES:[Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->$VALUES:[Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    return-object v0
.end method
