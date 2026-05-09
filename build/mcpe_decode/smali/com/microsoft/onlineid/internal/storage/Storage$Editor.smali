.class public Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field private final _editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clear()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public writeBoolean(Ljava/lang/String;Z)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer<",
            "TT;>;)",
            "Lcom/microsoft/onlineid/internal/storage/Storage$Editor;"
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p2}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/onlineid/internal/storage/StorageException;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-object p0
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/onlineid/internal/storage/Storage$Editor;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
