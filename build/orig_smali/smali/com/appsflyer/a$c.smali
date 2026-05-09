.class public final Lcom/appsflyer/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Lcom/appsflyer/a;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appsflyer/a;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLc1/f;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/a$c;->e:Lcom/appsflyer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/appsflyer/a$c;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/appsflyer/a$c;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/a$c;->d:Ljava/util/Map;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/appsflyer/a$c;->b:Ljava/lang/ref/WeakReference;

    iput-boolean p5, p0, Lcom/appsflyer/a$c;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v0, "AFRequestCache"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/a$c;->d:Ljava/util/Map;

    const-string v3, "appsflyerKey"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/appsflyer/a$c;->d:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/appsflyer/a$c;->e:Lcom/appsflyer/a;

    iget-object v4, p0, Lcom/appsflyer/a$c;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/appsflyer/a$c;->b:Ljava/lang/ref/WeakReference;

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/appsflyer/a$c;->c:Z

    move-object v5, v2

    invoke-static/range {v3 .. v9}, Lcom/appsflyer/a;->a(Lcom/appsflyer/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {v0}, Ld1/a;->h(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_0
    invoke-static {v3}, Ld1/a;->h(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/appsflyer/a$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/appsflyer/a$c;->f:Ljava/lang/String;

    const-string v5, "&isCachedRequest=true&timeincache="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/appsflyer/a$c;->f:Ljava/lang/String;

    const-string v5, "4.7.1"

    iget-object v6, p0, Lcom/appsflyer/a$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-string v7, "AppsFlyer_4.7.1"

    .line 1
    :try_start_2
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_1

    array-length v8, v8

    const/16 v9, 0x28

    if-le v8, v9, :cond_1

    const-string v0, "reached cache limit, not caching request"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v8, "caching request..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/io/File;

    .line 3
    new-instance v9, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v9, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v1, "version="

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    const-string v5, "url="

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    const-string v4, "data="

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-object v1, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_3
    :goto_1
    :try_start_5
    const-string v0, "Could not cache request"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 5
    :catch_4
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {v3}, Ld1/a;->h(Ljava/lang/Throwable;)V

    return-void

    :goto_3
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_4
    if-eqz v0, :cond_3

    .line 6
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_3
    throw v1

    :cond_4
    :goto_5
    return-void
.end method
