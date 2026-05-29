.class public final enum Lcom/microsoft/onlineid/internal/ui/Mimetype;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/ui/Mimetype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field public static final enum CSS:Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field public static final enum FONT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field public static final enum JAVASCRIPT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field public static final enum PNG:Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field public static final enum SVG:Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field private static final _map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/ui/Mimetype;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _mimetype:Ljava/lang/String;

.field private final _suffix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const-string v1, "JAVASCRIPT"

    const/4 v2, 0x0

    const-string v3, ".js"

    const-string v4, "application/javascript"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/internal/ui/Mimetype;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->JAVASCRIPT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    new-instance v1, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const-string v3, "PNG"

    const/4 v4, 0x1

    const-string v5, ".png"

    const-string v6, "image/png"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/microsoft/onlineid/internal/ui/Mimetype;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/microsoft/onlineid/internal/ui/Mimetype;->PNG:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    new-instance v3, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const-string v5, "SVG"

    const/4 v6, 0x2

    const-string v7, ".svg"

    const-string v8, "image/svg+xml"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/microsoft/onlineid/internal/ui/Mimetype;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/microsoft/onlineid/internal/ui/Mimetype;->SVG:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    new-instance v5, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const-string v7, "CSS"

    const/4 v8, 0x3

    const-string v9, ".css"

    const-string v10, "text/css"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/microsoft/onlineid/internal/ui/Mimetype;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/microsoft/onlineid/internal/ui/Mimetype;->CSS:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    new-instance v7, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const-string v9, "FONT"

    const/4 v10, 0x4

    const-string v11, ".woff"

    const-string v12, "application/x-font-woff"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/microsoft/onlineid/internal/ui/Mimetype;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/microsoft/onlineid/internal/ui/Mimetype;->FONT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/microsoft/onlineid/internal/ui/Mimetype;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/microsoft/onlineid/internal/ui/Mimetype;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/Mimetype;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_map:Ljava/util/HashMap;

    invoke-static {}, Lcom/microsoft/onlineid/internal/ui/Mimetype;->values()[Lcom/microsoft/onlineid/internal/ui/Mimetype;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_map:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_suffix:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_suffix:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_mimetype:Ljava/lang/String;

    return-void
.end method

.method public static findFromFilename(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/Mimetype;
    .registers 3

    if-eqz p0, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/Mimetype;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ui/Mimetype;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/Mimetype;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ui/Mimetype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ui/Mimetype;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_mimetype:Ljava/lang/String;

    return-object v0
.end method
