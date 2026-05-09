.class public Lcom/microsoft/onlineid/internal/Intents$DataBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private final _builder:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method


# virtual methods
.method public add(Lcom/microsoft/onlineid/RequestOptions;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v1, "options"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v0, "null"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/onlineid/RequestOptions;->asBundle()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v0, "empty"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v1, "str"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public add(Ljava/util/List;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/onlineid/internal/Intents$DataBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v0, "null"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    return-object p0
.end method

.method public build()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
