.class public final enum Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/sso/SsoServiceError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum AccountNotFound:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum ClientConfigUpdateNeededException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum IllegalArgumentException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum InvalidResponseException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum MasterRedirectException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum NetworkException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum StorageException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum StsException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum Unknown:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum UnsupportedClientVersion:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field private static final _lookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/microsoft/onlineid/internal/sso/SsoServiceError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _code:I


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->Unknown:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v1, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v4, "ClientNotAuthorized"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v4, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v6, "UnsupportedClientVersion"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->UnsupportedClientVersion:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v6, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v8, "StorageException"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->StorageException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v8, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v10, "IllegalArgumentException"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->IllegalArgumentException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v10, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v12, "AccountNotFound"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->AccountNotFound:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v12, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v14, "NetworkException"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->NetworkException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v14, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v13, "StsException"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->StsException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v13, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v15, "InvalidResponseException"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->InvalidResponseException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v15, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v11, "MasterRedirectException"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->MasterRedirectException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v11, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v9, "ClientConfigUpdateNeededException"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientConfigUpdateNeededException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-array v5, v5, [Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v14, v5, v0

    const/16 v0, 0x8

    aput-object v13, v5, v0

    const/16 v0, 0x9

    aput-object v15, v5, v0

    aput-object v11, v5, v7

    sput-object v5, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->$VALUES:[Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->_lookup:Landroid/util/SparseArray;

    invoke-static {}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->values()[Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->_lookup:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->getCode()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->_code:I

    return-void
.end method

.method public static get(I)Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    .registers 2

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->_lookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->$VALUES:[Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    iget v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->_code:I

    return v0
.end method
