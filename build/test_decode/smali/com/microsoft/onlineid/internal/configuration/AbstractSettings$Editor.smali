.class public Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field public final _editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public clear()Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public setBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;Z)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1
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
            "Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
