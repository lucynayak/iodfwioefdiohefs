.class final enum Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GamerTagState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum AVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum CHECKING:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum EMPTY:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum UNAVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum UNINITIALIZED:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;


# instance fields
.field private final stringId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget v1, Lcom/microsoft/xbox/idp/R$string;->xbid_tools_empty:I

    const-string v2, "UNINITIALIZED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNINITIALIZED:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget v4, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_available:I

    const-string v5, "INITIAL"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v4}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    new-instance v5, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v7, "EMPTY"

    const/4 v8, 0x2

    invoke-direct {v5, v7, v8, v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->EMPTY:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v7, "AVAILABLE"

    const/4 v9, 0x3

    invoke-direct {v1, v7, v9, v4}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->AVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    new-instance v4, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget v7, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_not_available_no_suggestions_android:I

    const-string v10, "UNAVAILABLE"

    const/4 v11, 0x4

    invoke-direct {v4, v10, v11, v7}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    new-instance v7, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget v10, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_not_available_android:I

    const-string v12, "UNAVAILABLE_WITH_SUGGESTIONS"

    const/4 v13, 0x5

    invoke-direct {v7, v12, v13, v10}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    new-instance v10, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget v12, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_check_availability:I

    const-string v14, "UNKNOWN"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    new-instance v12, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget v14, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_checking_android:I

    const-string v15, "CHECKING"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->CHECKING:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    new-instance v14, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget v15, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_checking_error:I

    const-string v13, "ERROR"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const/16 v13, 0x9

    new-array v13, v13, [Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    aput-object v0, v13, v3

    aput-object v2, v13, v6

    aput-object v5, v13, v8

    aput-object v1, v13, v9

    const/4 v0, 0x4

    aput-object v4, v13, v0

    const/4 v0, 0x5

    aput-object v7, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    sput-object v13, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->$VALUES:[Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

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

    iput p3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->stringId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->$VALUES:[Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    return-object v0
.end method


# virtual methods
.method public getStringId()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->stringId:I

    return v0
.end method
