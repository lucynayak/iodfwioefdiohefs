.class public Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SourceFile"


# static fields
.field public static final CfgNamespace:Ljava/lang/String; = "http://schemas.microsoft.com/Passport/PPCRL"

.field public static final DefaultNamespace:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#"


# instance fields
.field private final _editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

.field private final _endpointSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final _intSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _stringSetSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final _stringSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/ServerConfig$Editor;)V
    .registers 7

    const-string v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "Signature"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_stringSettings:Ljava/util/Map;

    sget-object p2, Lcom/microsoft/onlineid/sts/ServerConfig;->Version:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->addSetting(Ljava/util/Map;Lcom/microsoft/onlineid/internal/configuration/ISetting;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_intSettings:Ljava/util/Map;

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->values()[Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_intSettings:Ljava/util/Map;

    invoke-virtual {p0, v3, v2}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->addSetting(Ljava/util/Map;Lcom/microsoft/onlineid/internal/configuration/ISetting;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_endpointSettings:Ljava/util/Map;

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->values()[Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    move-result-object p1

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_endpointSettings:Ljava/util/Map;

    invoke-virtual {p0, v2, v1}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->addSetting(Ljava/util/Map;Lcom/microsoft/onlineid/internal/configuration/ISetting;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_stringSetSettings:Ljava/util/Map;

    sget-object p2, Lcom/microsoft/onlineid/sts/ServerConfig;->AndroidSsoCertificates:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->addSetting(Ljava/util/Map;Lcom/microsoft/onlineid/internal/configuration/ISetting;)V

    return-void
.end method


# virtual methods
.method public addSetting(Ljava/util/Map;Lcom/microsoft/onlineid/internal/configuration/ISetting;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T::",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onParse()V
    .registers 4

    const-string v0, "cfg:Configuration"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextStartTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cfg:Settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cfg:ServiceURIs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cfg:ServiceURIs1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->skipElement()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->parseSettings()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public parseSettings()V
    .registers 4

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->tryParseStringSetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->tryParseIntSetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->tryParseEndpointSetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->tryParseStringSetSetting(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->skipElement()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public tryParseEndpointSetting(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_endpointSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;Ljava/net/URL;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tryParseIntSetting(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_intSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/configuration/ISetting;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tryParseStringSetSetting(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_stringSetSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/internal/configuration/ISetting;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public tryParseStringSetting(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_stringSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/internal/configuration/ISetting;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
