.class public final Le1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/u$b;,
        Le1/u$c;,
        Le1/u$d;,
        Le1/u$e;,
        Le1/u$f;,
        Le1/u$g;
    }
.end annotation


# static fields
.field public static volatile j:Ljava/lang/String;

.field public static k:Ljava/util/regex/Pattern;


# instance fields
.field public a:Le1/a;

.field public b:Le1/u$c;

.field public c:Lorg/json/JSONObject;

.field public d:Ljava/lang/String;

.field public e:Le1/z;

.field public f:Landroid/os/Bundle;

.field public g:Z

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le1/u;->k:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Le1/u;-><init>(Le1/a;Ljava/lang/String;Landroid/os/Bundle;Le1/z;Le1/u$c;)V

    return-void
.end method

.method public constructor <init>(Le1/a;Ljava/lang/String;Landroid/os/Bundle;Le1/z;Le1/u$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le1/u;->g:Z

    iput-object p1, p0, Le1/u;->a:Le1/a;

    iput-object p2, p0, Le1/u;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Le1/u;->i:Ljava/lang/String;

    invoke-virtual {p0, p5}, Le1/u;->t(Le1/u$c;)V

    if-eqz p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p4, Le1/z;->c:Le1/z;

    :goto_0
    iput-object p4, p0, Le1/u;->e:Le1/z;

    .line 3
    new-instance p1, Landroid/os/Bundle;

    if-eqz p3, :cond_1

    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_1
    iput-object p1, p0, Le1/u;->f:Landroid/os/Bundle;

    iget-object p1, p0, Le1/u;->i:Ljava/lang/String;

    if-nez p1, :cond_2

    sget-object p1, Lh1/v;->a:Ljava/util/Collection;

    const-string p1, "v2.6"

    iput-object p1, p0, Le1/u;->i:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static c(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 6

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1
    sget-object v0, Le1/u;->j:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "FBAndroidSDK"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    const-string v4, "4.11.0"

    aput-object v4, v2, v3

    const-string v4, "%s.%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Le1/u;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v5, Le1/u;->j:Ljava/lang/String;

    aput-object v5, v0, v1

    aput-object v2, v0, v3

    const-string v2, "%s/%s"

    invoke-static {v4, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le1/u;->j:Ljava/lang/String;

    :cond_0
    sget-object v0, Le1/u;->j:Ljava/lang/String;

    const-string v2, "User-Agent"

    .line 2
    invoke-virtual {p0, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Accept-Language"

    invoke-virtual {p0, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object p0
.end method

.method public static f(Le1/x;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/x;",
            ")",
            "Ljava/util/List<",
            "Le1/y;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lr0/e;->h(Ljava/util/Collection;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Le1/u;->u(Le1/x;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, p0}, Le1/u;->h(Ljava/net/HttpURLConnection;Le1/x;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lh1/x;->h(Ljava/net/URLConnection;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1
    :try_start_2
    iget-object v2, p0, Le1/x;->e:Ljava/util/List;

    .line 2
    new-instance v3, Le1/m;

    invoke-direct {v3, v1}, Le1/m;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2, v0, v3}, Le1/y;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Le1/m;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Le1/u;->q(Le1/x;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lh1/x;->a:[Ljava/lang/String;

    return-object v1

    :goto_0
    invoke-static {v0}, Lh1/x;->h(Ljava/net/URLConnection;)V

    throw p0
.end method

.method public static g(Le1/x;)Le1/w;
    .locals 2

    invoke-static {p0}, Lr0/e;->h(Ljava/util/Collection;)V

    new-instance v0, Le1/w;

    invoke-direct {v0, p0}, Le1/w;-><init>(Le1/x;)V

    invoke-static {}, Le1/r;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static h(Ljava/net/HttpURLConnection;Le1/x;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Le1/x;",
            ")",
            "Ljava/util/List<",
            "Le1/y;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Le1/m; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-static {v1, p0, p1}, Le1/y;->c(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Le1/x;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Le1/m; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    invoke-static {v1}, Lh1/x;->e(Ljava/io/Closeable;)V

    goto :goto_8

    :goto_2
    move-object v0, v1

    goto/16 :goto_c

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_5

    :catch_3
    move-exception v2

    goto :goto_7

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :catch_4
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_3
    :try_start_2
    sget-object v3, Lh1/p;->c:Ljava/util/HashMap;

    .line 2
    invoke-static {}, Le1/r;->b()V

    .line 3
    new-instance v3, Le1/m;

    invoke-direct {v3, v2}, Le1/m;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_4
    sget-object v3, Lh1/p;->c:Ljava/util/HashMap;

    .line 4
    invoke-static {}, Le1/r;->b()V

    .line 5
    new-instance v3, Le1/m;

    invoke-direct {v3, v2}, Le1/m;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_5
    sget-object v3, Lh1/p;->c:Ljava/util/HashMap;

    .line 6
    invoke-static {}, Le1/r;->b()V

    .line 7
    new-instance v3, Le1/m;

    invoke-direct {v3, v2}, Le1/m;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {p1, p0, v3}, Le1/y;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Le1/m;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :catch_7
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_7
    sget-object v3, Lh1/p;->c:Ljava/util/HashMap;

    .line 8
    invoke-static {}, Le1/r;->b()V

    .line 9
    invoke-static {p1, p0, v2}, Le1/y;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Le1/m;)Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 10
    :goto_8
    invoke-static {p0}, Lh1/x;->h(Ljava/net/URLConnection;)V

    invoke-virtual {p1}, Le1/x;->size()I

    move-result p0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, v1, :cond_5

    invoke-static {p1, v2}, Le1/u;->q(Le1/x;Ljava/util/List;)V

    invoke-static {}, Le1/d;->a()Le1/d;

    move-result-object p0

    .line 11
    iget-object p1, p0, Le1/d;->b:Le1/a;

    if-nez p1, :cond_1

    goto :goto_9

    :cond_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v1, p0, Le1/d;->b:Le1/a;

    .line 12
    iget-object v1, v1, Le1/a;->g:Le1/e;

    .line 13
    iget-boolean v1, v1, Le1/e;->b:Z

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, p0, Le1/d;->c:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x36ee80

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object p1, p0, Le1/d;->b:Le1/a;

    .line 15
    iget-object p1, p1, Le1/a;->e:Ljava/util/Date;

    .line 16
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x5265c00

    cmp-long p1, v5, v7

    if-lez p1, :cond_2

    goto :goto_a

    :cond_2
    :goto_9
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_3

    goto :goto_b

    .line 17
    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Le1/d;->b(Le1/a$b;)V

    goto :goto_b

    :cond_4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Le1/c;

    invoke-direct {v0, p0}, Le1/c;-><init>(Le1/d;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b
    return-object v2

    .line 18
    :cond_5
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    new-instance p0, Le1/m;

    const-string v1, "Received %d responses while expecting %d"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto/16 :goto_2

    .line 19
    :goto_c
    invoke-static {v0}, Lh1/x;->e(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static k(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    instance-of v0, p0, [B

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    instance-of p0, p0, Le1/u$f;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static l(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/util/Date;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static m(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported parameter type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lorg/json/JSONObject;Ljava/lang/String;Le1/u$d;)V
    .locals 6

    .line 1
    sget-object v0, Le1/u;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const-string v1, "me/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string v1, "/me/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    const-string v0, ":"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    if-ge v0, p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz p1, :cond_5

    const-string v5, "image"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    invoke-static {v1, v4, p2, v5}, Le1/u;->o(Ljava/lang/String;Ljava/lang/Object;Le1/u$d;Z)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public static o(Ljava/lang/String;Ljava/lang/Object;Le1/u$d;Z)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object v1, v5, v3

    const-string v6, "%s[%s]"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1, p2, p3}, Le1/u;->o(Ljava/lang/String;Ljava/lang/Object;Le1/u$d;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Le1/u;->o(Ljava/lang/String;Ljava/lang/Object;Le1/u$d;Z)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Le1/u;->o(Ljava/lang/String;Ljava/lang/Object;Le1/u$d;Z)V

    return-void

    :cond_2
    const-string v0, "fbsdk:create_object"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Le1/u;->o(Ljava/lang/String;Ljava/lang/Object;Le1/u$d;Z)V

    return-void

    :cond_3
    const-class v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "%s[%d]"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    :try_start_0
    invoke-static {v5, v6, p2, p3}, Le1/u;->o(Ljava/lang/String;Ljava/lang/Object;Le1/u$d;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    const-class p3, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_7

    const-class p3, Ljava/lang/Number;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_7

    const-class p3, Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    const-class p3, Ljava/util/Date;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_6

    check-cast p1, Ljava/util/Date;

    new-instance p3, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {p3, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Le1/u$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Le1/u$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static p(Le1/x;Lh1/p;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 17

    move-object/from16 v0, p1

    new-instance v1, Le1/u$g;

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v1, v2, v0, v3}, Le1/u$g;-><init>(Ljava/io/OutputStream;Lh1/p;Z)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move/from16 v4, p2

    if-ne v4, v2, :cond_7

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Le1/x;->A(I)Le1/u;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v2, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Le1/u;->k(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Le1/u$b;

    invoke-direct {v7, v2, v6}, Le1/u$b;-><init>(Le1/u;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1
    invoke-static {}, Le1/r;->b()V

    .line 2
    :cond_2
    iget-object v4, v2, Le1/u;->f:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Le1/u;->l(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1, v6, v7, v2}, Le1/u$g;->g(Ljava/lang/String;Ljava/lang/Object;Le1/u;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 4
    invoke-static {}, Le1/r;->b()V

    .line 5
    :cond_5
    invoke-static {v3, v1}, Le1/u;->r(Ljava/util/Map;Le1/u$g;)V

    iget-object v0, v2, Le1/u;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Le1/u;->n(Lorg/json/JSONObject;Ljava/lang/String;Le1/u$d;)V

    :cond_6
    return-void

    :cond_7
    move-object/from16 v4, p0

    const/4 v5, 0x0

    .line 6
    invoke-static {v5}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le1/u;

    iget-object v7, v7, Le1/u;->a:Le1/a;

    if-eqz v7, :cond_9

    .line 7
    iget-object v7, v7, Le1/a;->b:Ljava/lang/String;

    if-eqz v7, :cond_9

    goto :goto_3

    .line 8
    :cond_a
    invoke-static {v5}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    :goto_2
    move-object v7, v5

    goto :goto_3

    :cond_b
    sget-object v6, Le1/r;->a:Ljava/lang/Object;

    .line 9
    invoke-static {}, Lr0/e;->k()V

    sget-object v7, Le1/r;->d:Ljava/lang/String;

    .line 10
    :goto_3
    invoke-static {v7}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "batch_app_id"

    invoke-virtual {v1, v6, v7}, Le1/u$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 11
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le1/u;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 13
    invoke-virtual {v9}, Le1/u;->i()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Le1/u;->a()V

    invoke-virtual {v9, v11}, Le1/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "relative_url"

    .line 14
    invoke-virtual {v10, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v12, v9, Le1/u;->e:Le1/z;

    const-string v13, "method"

    invoke-virtual {v10, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v12, v9, Le1/u;->a:Le1/a;

    if-eqz v12, :cond_c

    .line 15
    iget-object v12, v12, Le1/a;->h:Ljava/lang/String;

    .line 16
    invoke-static {v12}, Lh1/p;->a(Ljava/lang/String;)V

    :cond_c
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v9, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v13}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v15, v9, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v15, v14}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Le1/u;->k(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v16, "file"

    aput-object v16, v5, v3

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v2

    const-string v2, "%s%d"

    invoke-static {v15, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Le1/u$b;

    invoke-direct {v5, v9, v14}, Le1/u$b;-><init>(Le1/u;Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, ","

    invoke-static {v2, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "attached_files"

    invoke-virtual {v10, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    iget-object v2, v9, Le1/u;->c:Lorg/json/JSONObject;

    if-eqz v2, :cond_10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v9, Le1/u;->c:Lorg/json/JSONObject;

    new-instance v9, Le1/v;

    invoke-direct {v9, v2}, Le1/v;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v5, v11, v9}, Le1/u;->n(Lorg/json/JSONObject;Ljava/lang/String;Le1/u$d;)V

    const-string v5, "&"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "body"

    invoke-virtual {v10, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_11
    const-string v2, "batch"

    .line 17
    iget-object v5, v1, Le1/u$g;->c:Ljava/io/OutputStream;

    instance-of v8, v5, Le1/f0;

    if-nez v8, :cond_12

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Le1/u$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    check-cast v5, Le1/f0;

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v8}, Le1/u$g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v8, "["

    invoke-virtual {v1, v8, v2}, Le1/u$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le1/u;

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-interface {v5, v8}, Le1/f0;->a(Le1/u;)V

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    if-lez v4, :cond_13

    aput-object v9, v10, v3

    const-string v9, ",%s"

    goto :goto_7

    :cond_13
    aput-object v9, v10, v3

    const-string v9, "%s"

    :goto_7
    invoke-virtual {v1, v9, v10}, Le1/u$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_14
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "]"

    invoke-virtual {v1, v3, v2}, Le1/u$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Le1/u$g;->b:Lh1/p;

    if-eqz v2, :cond_15

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 18
    invoke-static {}, Le1/r;->b()V

    :cond_15
    :goto_8
    if-eqz v0, :cond_16

    .line 19
    invoke-static {}, Le1/r;->b()V

    .line 20
    :cond_16
    invoke-static {v6, v1}, Le1/u;->r(Ljava/util/Map;Le1/u$g;)V

    return-void

    :cond_17
    new-instance v0, Le1/m;

    const-string v1, "App ID was not specified at the request or Settings."

    invoke-direct {v0, v1}, Le1/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static q(Le1/x;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/x;",
            "Ljava/util/List<",
            "Le1/y;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Le1/x;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Le1/x;->A(I)Le1/u;

    move-result-object v3

    iget-object v4, v3, Le1/u;->b:Le1/u$c;

    if-eqz v4, :cond_0

    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Le1/u;->b:Le1/u$c;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    new-instance p1, Le1/u$a;

    invoke-direct {p1, v1, p0}, Le1/u$a;-><init>(Ljava/util/ArrayList;Le1/x;)V

    .line 1
    iget-object p0, p0, Le1/x;->b:Landroid/os/Handler;

    if-nez p0, :cond_2

    .line 2
    invoke-virtual {p1}, Le1/u$a;->run()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static r(Ljava/util/Map;Le1/u$g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le1/u$b;",
            ">;",
            "Le1/u$g;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le1/u$b;

    .line 1
    iget-object v3, v2, Le1/u$b;->b:Ljava/lang/Object;

    .line 2
    invoke-static {v3}, Le1/u;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, v2, Le1/u$b;->b:Ljava/lang/Object;

    .line 4
    iget-object v2, v2, Le1/u$b;->a:Le1/u;

    .line 5
    invoke-virtual {p1, v1, v3, v2}, Le1/u$g;->g(Ljava/lang/String;Ljava/lang/Object;Le1/u;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final s(Le1/x;Ljava/net/HttpURLConnection;)V
    .locals 14

    sget-object v2, Le1/z;->d:Le1/z;

    new-instance v7, Lh1/p;

    invoke-direct {v7}, Lh1/p;-><init>()V

    invoke-virtual {p0}, Le1/x;->size()I

    move-result v8

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le1/u;

    iget-object v9, v4, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v4, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v11, v10}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Le1/u;->k(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    :goto_0
    if-ne v8, v5, :cond_3

    .line 2
    invoke-virtual {p0, v6}, Le1/x;->A(I)Le1/u;

    move-result-object v3

    iget-object v3, v3, Le1/u;->e:Le1/z;

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Content-Type"

    if-eqz v9, :cond_4

    const-string v10, "application/x-www-form-urlencoded"

    .line 3
    invoke-virtual {p1, v4, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Content-Encoding"

    const-string v11, "gzip"

    invoke-virtual {p1, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-array v10, v5, [Ljava/lang/Object;

    const-string v11, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v11, v10, v6

    const-string v11, "multipart/form-data; boundary=%s"

    .line 4
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 5
    invoke-virtual {p1, v4, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_2
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    .line 7
    invoke-static {}, Le1/r;->b()V

    .line 8
    invoke-static {}, Le1/r;->b()V

    invoke-static {}, Le1/r;->b()V

    .line 9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 10
    invoke-static {}, Le1/r;->b()V

    const-string v11, "User-Agent"

    .line 11
    invoke-virtual {p1, v11}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    invoke-static {}, Le1/r;->b()V

    .line 13
    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    invoke-static {}, Le1/r;->b()V

    .line 15
    invoke-virtual {p1, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    if-ne v3, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_6

    .line 16
    iget-object v0, v7, Lh1/p;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Le1/r;->b()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    iput-object v0, v7, Lh1/p;->b:Ljava/lang/StringBuilder;

    return-void

    .line 19
    :cond_6
    invoke-virtual {p1, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v9, :cond_7

    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v1

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_7
    move-object v11, v3

    .line 20
    :goto_5
    :try_start_2
    iget-object v1, p0, Le1/x;->c:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le1/x$a;

    instance-of v2, v2, Le1/x$b;

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le1/u;

    .line 22
    iget-object v2, v2, Le1/u;->b:Le1/u$c;

    .line 23
    instance-of v2, v2, Le1/u$e;

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_c

    .line 24
    new-instance v12, Le1/d0;

    .line 25
    iget-object v1, p0, Le1/x;->b:Landroid/os/Handler;

    .line 26
    invoke-direct {v12, v1}, Le1/d0;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x0

    move-object v1, p0

    move v3, v8

    move-object v4, v10

    move-object v5, v12

    move v6, v9

    invoke-static/range {v1 .. v6}, Le1/u;->p(Le1/x;Lh1/p;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 27
    iget v1, v12, Le1/d0;->b:I

    .line 28
    new-instance v13, Le1/e0;

    .line 29
    iget-object v4, v12, Le1/d0;->f:Ljava/util/HashMap;

    int-to-long v5, v1

    move-object v1, v13

    move-object v2, v11

    move-object v3, p0

    .line 30
    invoke-direct/range {v1 .. v6}, Le1/e0;-><init>(Ljava/io/OutputStream;Le1/x;Ljava/util/Map;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v13

    :cond_c
    move-object v1, p0

    move-object v2, v7

    move v3, v8

    move-object v4, v10

    move-object v5, v11

    move v6, v9

    :try_start_3
    invoke-static/range {v1 .. v6}, Le1/u;->p(Le1/x;Lh1/p;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 31
    iget-object v0, v7, Lh1/p;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Le1/r;->b()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v11

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v11

    goto :goto_8

    :catchall_3
    move-exception v0

    :goto_7
    move-object v3, v2

    :goto_8
    if-eqz v3, :cond_d

    .line 34
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_d
    throw v0
.end method

.method public static u(Le1/x;)Ljava/net/HttpURLConnection;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le1/u;

    sget-object v4, Le1/z;->c:Le1/z;

    .line 2
    iget-object v5, v1, Le1/u;->e:Le1/z;

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, v1, Le1/u;->i:Ljava/lang/String;

    .line 5
    invoke-static {v4}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v6, :cond_5

    :cond_3
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v5, v6, :cond_4

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    if-eqz v2, :cond_0

    .line 6
    iget-object v1, v1, Le1/u;->f:Landroid/os/Bundle;

    const-string v2, "fields"

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    sget-object v1, Lh1/p;->c:Ljava/util/HashMap;

    .line 8
    invoke-static {}, Le1/r;->b()V

    goto :goto_0

    .line 9
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Le1/x;->size()I

    move-result v0

    if-ne v0, v2, :cond_8

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0, v3}, Le1/x;->A(I)Le1/u;

    move-result-object v1

    invoke-virtual {v1}, Le1/u;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lh1/v;->a:Ljava/util/Collection;

    new-array v1, v2, [Ljava/lang/Object;

    .line 10
    sget-object v2, Le1/r;->h:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "https://graph.%s"

    .line 11
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Le1/u;->c(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-static {p0, v1}, Le1/u;->s(Le1/x;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_3
    invoke-static {v1}, Lh1/x;->h(Ljava/net/URLConnection;)V

    new-instance v0, Le1/m;

    const-string v1, "could not construct request body"

    invoke-direct {v0, v1, p0}, Le1/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Le1/m;

    const-string v1, "could not construct URL for request"

    invoke-direct {v0, v1, p0}, Le1/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Le1/u;->a:Le1/a;

    const-string v1, "access_token"

    if-eqz v0, :cond_0

    iget-object v0, p0, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Le1/u;->a:Le1/a;

    .line 1
    iget-object v0, v0, Le1/a;->h:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lh1/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Le1/u;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lr0/e;->k()V

    sget-object v0, Le1/r;->d:Ljava/lang/String;

    .line 4
    invoke-static {}, Lr0/e;->k()V

    sget-object v2, Le1/r;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "|"

    .line 6
    invoke-static {v0, v3, v2}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    iget-object v2, p0, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "u"

    const-string v1, "Warning: Request without access token missing application ID or client token."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v0, p0, Le1/u;->f:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Le1/u;->f:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Le1/r;->b()V

    invoke-static {}, Le1/r;->b()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v0, p0, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-static {v2}, Le1/u;->l(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Le1/u;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le1/u;->e:Le1/z;

    sget-object v3, Le1/z;->c:Le1/z;

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported parameter type for GET request: %s"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()Le1/y;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Le1/u;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "requests"

    .line 1
    invoke-static {v1, v3}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v3, Le1/x;

    invoke-direct {v3, v1}, Le1/x;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Le1/u;->f(Le1/x;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le1/y;

    return-object v0

    :cond_0
    new-instance v0, Le1/m;

    const-string v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Le1/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Le1/w;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Le1/u;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "requests"

    .line 1
    invoke-static {v0, v1}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Le1/x;

    invoke-direct {v1, v0}, Le1/x;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Le1/u;->g(Le1/x;)Le1/w;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    sget-object v0, Le1/u;->k:Ljava/util/regex/Pattern;

    iget-object v1, p0, Le1/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le1/u;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Le1/u;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Le1/u;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le1/u;->e:Le1/z;

    .line 2
    sget-object v1, Le1/z;->d:Le1/z;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le1/u;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "/videos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lh1/v;->a:Ljava/util/Collection;

    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    sget-object v1, Le1/r;->h:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "https://graph-video.%s"

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lh1/v;->a:Ljava/util/Collection;

    new-array v0, v3, [Ljava/lang/Object;

    .line 6
    sget-object v1, Le1/r;->h:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "https://graph.%s"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 8
    invoke-virtual {p0}, Le1/u;->i()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "%s/%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Le1/u;->a()V

    invoke-virtual {p0, v0}, Le1/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t(Le1/u$c;)V
    .locals 0

    invoke-static {}, Le1/r;->b()V

    invoke-static {}, Le1/r;->b()V

    iput-object p1, p0, Le1/u;->b:Le1/u$c;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "{Request: "

    const-string v1, " accessToken: "

    .line 1
    invoke-static {v0, v1}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le1/u;->a:Le1/a;

    if-nez v1, :cond_0

    const-string v1, "null"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/u;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/u;->e:Le1/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/u;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
