.class public Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final UserTileExtension:Ljava/lang/String; = ".png"

.field public static final UserTileUrlFormat:Ljava/lang/String; = "https://storage.%2$s/users/0x%1$s/myprofile/expressionprofile/profilephoto:UserTileStatic"


# instance fields
.field private final _account:Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

.field private final _applicationContext:Landroid/content/Context;

.field private final _imageView:Landroid/widget/ImageView;

.field private _newImageDownloaded:Z

.field private final _serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _transport:Lcom/microsoft/onlineid/internal/transport/Transport;

.field private final _userTileFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_account:Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    new-instance v0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_imageView:Landroid/widget/ImageView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_userTileFileName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_newImageDownloaded:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/internal/transport/Transport;Lcom/microsoft/onlineid/sts/ServerConfig;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_account:Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_imageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_userTileFileName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_newImageDownloaded:Z

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6

    const-string p1, "Error downloading image from url."

    const-string v0, "Error closing response stream."

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_account:Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v3

    sget-object v4, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/configuration/Environment;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const-string v3, "live.com"

    goto :goto_0

    :cond_0
    const-string v3, "live-int.com"

    :goto_0
    const/4 v4, 0x1

    :try_start_1
    aput-object v3, v1, v4

    const-string v3, "https://storage.%2$s/users/0x%1$s/myprofile/expressionprofile/profilephoto:UserTileStatic"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/microsoft/onlineid/internal/transport/Transport;->openGetRequest(Ljava/net/URL;)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {v1, v4}, Lcom/microsoft/onlineid/internal/transport/Transport;->setUseCaches(Z)V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->saveUserTileImage(Landroid/graphics/Bitmap;)V

    iput-boolean v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_newImageDownloaded:Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v3

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception v3

    move-object v1, v2

    :goto_2
    :try_start_4
    invoke-static {p1, v3}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v1, v2

    :goto_3
    :try_start_6
    invoke-static {p1, v3}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_5
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getSavedUserTileImage()Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "Error closing file input stream."

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_userTileFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-static {v0, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_1
    nop

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_0
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-static {v0, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v1

    :catch_3
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v1

    :catch_4
    move-exception v2

    invoke-static {v0, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    return-object v1
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, "Load profile image"

    const-string v1, "Performance"

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/http/HttpResponseCache;->getHitCount()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "from network"

    goto :goto_0

    :cond_0
    const-string v2, "from cache"

    :goto_0
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v3

    invoke-interface {v3, v1, v0, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    :cond_1
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_userTileFileName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_newImageDownloaded:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v2

    const-string v3, "deleted"

    invoke-interface {v2, v1, v0, v3}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "msa_default_user_tile"

    const-string v4, "drawable"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->getSavedUserTileImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public saveUserTileImage(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, "Error closing file output stream."

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_userTileFileName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "Error saving user tile image."

    invoke-static {v2, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-static {v0, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_0
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw p1

    :cond_1
    :goto_2
    return-void
.end method
