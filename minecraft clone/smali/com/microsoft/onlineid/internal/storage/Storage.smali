.class public Lcom/microsoft/onlineid/internal/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    }
.end annotation


# static fields
.field static final DefaultStorageName:Ljava/lang/String; = "com.microsoft.onlineid"


# instance fields
.field private final _preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-string v0, "com.microsoft.onlineid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    .line 52
    return-void
.end method


# virtual methods
.method public edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .registers 3

    .prologue
    .line 189
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 146
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readObject(Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "serializer":Lcom/microsoft/onlineid/internal/storage/ISerializer;, "Lcom/microsoft/onlineid/internal/storage/ISerializer<TT;>;"
    const/4 v2, 0x0

    .line 107
    .local v2, "result":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 110
    .local v3, "success":Z
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "encoded":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 113
    invoke-interface {p2, v1}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 115
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v3, 0x1

    .line 128
    .end local v1    # "encoded":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 132
    :cond_1
    return-object v2

    .line 117
    .restart local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "Object in storage was not of expected type."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Object in storage was corrupt."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
