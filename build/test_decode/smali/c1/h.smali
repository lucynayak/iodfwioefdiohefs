.class public final Lc1/h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljavax/net/ssl/HttpsURLConnection;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lc1/h;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc1/h;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc1/h;->f:Z

    iput-boolean v0, p0, Lc1/h;->g:Z

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "UTF-8"

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc1/h;->h:Ljava/net/URL;

    iget-boolean p1, p0, Lc1/h;->f:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lc1/n;->g()Lc1/n;

    move-result-object p1

    iget-object v2, p0, Lc1/h;->h:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc1/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lc1/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lc1/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc1/h;->h:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " byte"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p1, v1, :cond_1

    const-string p1, "s"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; body = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lc1/h;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld1/a;->I(Ljava/lang/String;)V

    iget-object p1, p0, Lc1/h;->h:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iput-object p1, p0, Lc1/h;->c:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v2, 0x7530

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Lc1/h;->c:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lc1/h;->c:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "POST"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lc1/h;->c:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    iget-object p1, p0, Lc1/h;->c:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object p1, p0, Lc1/h;->c:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {p1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc1/h;->c:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lc1/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Lc1/h;->c:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    iget-object p1, p0, Lc1/h;->c:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iget-boolean v0, p0, Lc1/h;->g:Z

    if-eqz v0, :cond_2

    .line 1
    sget-object v0, Lcom/appsflyer/a;->i:Lcom/appsflyer/a;

    .line 2
    iget-object v2, p0, Lc1/h;->c:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v2}, Lcom/appsflyer/a;->O(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc1/h;->d:Ljava/lang/String;

    :cond_2
    iget-boolean v0, p0, Lc1/h;->f:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lc1/n;->g()Lc1/n;

    move-result-object v0

    iget-object v2, p0, Lc1/h;->h:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc1/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v3}, Lc1/n;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_4

    const-string p1, "Status 200 ok"

    invoke-static {p1}, Ld1/a;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lc1/h;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc1/h;->h:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    invoke-static {p1}, Ld1/a;->h(Ljava/lang/Throwable;)V

    iput-boolean v1, p0, Lc1/h;->e:Z

    :goto_1
    iget-object p1, p0, Lc1/h;->d:Ljava/lang/String;

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lc1/h;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection error: "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld1/a;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection call succeeded: "

    goto :goto_0
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc1/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onCancelled()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc1/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lc1/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lc1/h;->b:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc1/h;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method
