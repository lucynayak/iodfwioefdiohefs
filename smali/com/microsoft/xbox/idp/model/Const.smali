.class public Lcom/microsoft/xbox/idp/model/Const;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final URL_ENFORCEMENT_XBOX_COM:Landroid/net/Uri;

.field public static final URL_XBOX_COM:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "http://www.xbox.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/model/Const;->URL_XBOX_COM:Landroid/net/Uri;

    const-string v0, "http://enforcement.xbox.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/model/Const;->URL_ENFORCEMENT_XBOX_COM:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
