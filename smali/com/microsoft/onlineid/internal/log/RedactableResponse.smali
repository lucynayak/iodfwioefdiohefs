.class public Lcom/microsoft/onlineid/internal/log/RedactableResponse;
.super Lcom/microsoft/onlineid/internal/log/RedactableXml;
.source "SourceFile"


# static fields
.field private static final TagsToKeep:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 20

    const-string v0, "ErrorSubcode"

    const-string v1, "ServerInfo"

    const-string v2, "S:Text"

    const-string v3, "S:Value"

    const-string v4, "ps:DisplaySessionID"

    const-string v5, "ps:ExpirationTime"

    const-string v6, "ps:RequestTime"

    const-string v7, "ps:SessionID"

    const-string v8, "ps:State"

    const-string v9, "psf:authstate"

    const-string v10, "psf:code"

    const-string v11, "psf:configVersion"

    const-string v12, "psf:reqstatus"

    const-string v13, "psf:serverInfo"

    const-string v14, "psf:text"

    const-string v15, "psf:value"

    const-string v16, "wsa:Address"

    const-string v17, "wst:TokenType"

    const-string v18, "wsu:Created"

    const-string v19, "wsu:Expires"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/RedactableResponse;->TagsToKeep:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/microsoft/onlineid/internal/log/RedactableResponse;->TagsToKeep:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/internal/log/RedactableXml;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
