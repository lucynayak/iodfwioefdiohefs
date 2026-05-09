.class public final Lc1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "advertiserIdEnabled"

    const-string v1, "advertiserId"

    const-string v2, "Trying to fetch GAID.."

    invoke-static {v2}, Ld1/a;->g(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :try_start_0
    const-string v6, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v6

    xor-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v6, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v4, "emptyOrNull"

    :cond_1
    move-object v3, v2

    const/4 v2, 0x1

    goto/16 :goto_4

    :catchall_1
    move-exception v6

    move-object v10, v6

    move-object v6, v4

    move-object v4, v10

    goto :goto_1

    :cond_2
    const-string v3, "gpsAdInfo-null"

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto/16 :goto_4

    :catchall_2
    move-exception v6

    move-object v7, v4

    move-object v4, v6

    move-object v6, v7

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {v4}, Ld1/a;->h(Ljava/lang/Throwable;)V

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {v8}, Ld1/a;->h(Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "WARNING: Google Play Services is missing."

    invoke-static {v8}, Ld1/a;->g(Ljava/lang/String;)V

    .line 1
    sget-object v8, Lc1/g;->c:Lc1/g;

    const-string v9, "enableGpsFallback"

    .line 2
    invoke-virtual {v8, v9, v3}, Lc1/g;->a(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    :try_start_4
    invoke-static {p0}, Lc1/c;->a(Landroid/content/Context;)Lc1/c$a;

    move-result-object v6

    .line 3
    iget-object v7, v6, Lc1/c$a;->a:Ljava/lang/String;

    .line 4
    iget-boolean v6, v6, Lc1/c$a;->b:Z

    xor-int/2addr v3, v6

    .line 5
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v6, :cond_6

    :cond_3
    const-string v4, "emptyOrNull (bypass)"

    goto :goto_4

    :catchall_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {v3}, Ld1/a;->h(Ljava/lang/Throwable;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    sget-object v6, Lc1/g;->c:Lc1/g;

    .line 7
    invoke-virtual {v6, v1}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    sget-object v7, Lc1/g;->c:Lc1/g;

    .line 9
    invoke-virtual {v7, v0}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v3}, Ld1/a;->g(Ljava/lang/String;)V

    move-object v3, v7

    move-object v7, v6

    goto :goto_4

    :cond_5
    move-object v3, v6

    :cond_6
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v6, "android.app.ReceiverRestrictedContext"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 10
    sget-object p0, Lc1/g;->c:Lc1/g;

    .line 11
    invoke-virtual {p0, v1}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    sget-object p0, Lc1/g;->c:Lc1/g;

    .line 13
    invoke-virtual {p0, v0}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context = android.app.ReceiverRestrictedContext"

    :cond_7
    if-eqz v4, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "gaidError"

    invoke-interface {p1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v7, :cond_9

    if-eqz v3, :cond_9

    invoke-interface {p1, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p0, Lc1/g;->c:Lc1/g;

    .line 15
    invoke-virtual {p0, v1, v7}, Lc1/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p0, Lc1/g;->c:Lc1/g;

    .line 17
    invoke-virtual {p0, v0, v3}, Lc1/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isGaidWithGps"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public static b(Landroid/content/ContentResolver;)Lc1/d;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    sget-object v1, Lc1/g;->c:Lc1/g;

    const-string v2, "amazon_aid"

    .line 2
    invoke-virtual {v1, v2}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    const-string v2, "limit_ad_tracking"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "advertising_id"

    if-nez v2, :cond_1

    invoke-static {p0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lc1/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc1/d;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_1
    if-ne v2, v1, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    invoke-static {p0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ld1/a;->h(Ljava/lang/Throwable;)V

    const-string p0, ""

    :goto_0
    new-instance v0, Lc1/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lc1/d;-><init>(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-object v0
.end method
