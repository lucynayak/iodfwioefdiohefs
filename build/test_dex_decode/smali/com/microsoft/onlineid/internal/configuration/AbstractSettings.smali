.class public abstract Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    }
.end annotation


# instance fields
.field public final _preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public abstract edit()Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
.end method

.method public getBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting<",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
