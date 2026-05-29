.class public Lcom/microsoft/onlineid/internal/storage/Storage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    }
.end annotation


# static fields
.field public static final DefaultStorageName:Ljava/lang/String; = "com.microsoft.onlineid"


# instance fields
.field private final _preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.microsoft.onlineid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .registers 3

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public readLong(Ljava/lang/String;J)J
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public readObject(Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v2}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v2, "Object in storage was corrupt."

    goto :goto_0

    :catch_1
    move-exception p2

    const-string v2, "Object in storage was not of expected type."

    :goto_0
    invoke-static {v2, p2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    :cond_1
    return-object v1
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readStringSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage;->_preferences:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
