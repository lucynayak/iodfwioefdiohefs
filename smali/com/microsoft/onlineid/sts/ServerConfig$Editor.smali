.class public Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
.super Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/SharedPreferences$Editor;Lcom/microsoft/onlineid/sts/ServerConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->clear()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .registers 1

    invoke-super {p0}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->clear()Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;

    return-object p0
.end method

.method public bridge synthetic setBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;Z)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;Z)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;Z)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Lcom/microsoft/onlineid/sts/ServerConfig$Editor;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->setBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;Z)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;

    return-object p0
.end method

.method public bridge synthetic setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object p1

    return-object p1
.end method

.method public setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/microsoft/onlineid/sts/ServerConfig$Editor;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;

    return-object p0
.end method

.method public bridge synthetic setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object p1

    return-object p1
.end method

.method public setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/onlineid/sts/ServerConfig$Editor;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;

    return-object p0
.end method

.method public bridge synthetic setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object p1

    return-object p1
.end method

.method public setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/onlineid/sts/ServerConfig$Editor;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;

    return-object p0
.end method

.method public setUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;Ljava/net/URL;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getSettingName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
