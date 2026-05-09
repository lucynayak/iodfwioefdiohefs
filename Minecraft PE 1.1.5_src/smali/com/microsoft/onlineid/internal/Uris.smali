.class public Lcom/microsoft/onlineid/internal/Uris;
.super Ljava/lang/Object;
.source "Uris.java"


# static fields
.field static final EmailDelimiter:Ljava/lang/String; = ","

.field static final EmailParam:Ljava/lang/String; = "email"

.field static final MktParam:Ljava/lang/String; = "mkt"

.field static final PhoneParam:Ljava/lang/String; = "phone"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendEmails(Lcom/microsoft/onlineid/userdata/AccountManagerReader;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .param p0, "accountManagerReader"    # Lcom/microsoft/onlineid/userdata/AccountManagerReader;
    .param p1, "original"    # Landroid/net/Uri;

    .prologue
    .line 98
    const-string v1, "email"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const-string v1, "Given URL already has email parameter set."

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 111
    .end local p1    # "original":Landroid/net/Uri;
    :goto_0
    return-object p1

    .line 104
    .restart local p1    # "original":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/userdata/AccountManagerReader;->getEmails()Ljava/util/Set;

    move-result-object v0

    .line 107
    .local v0, "emails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "email"

    .line 110
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 108
    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_1
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static appendMarketQueryString(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "original"    # Landroid/net/Uri;

    .prologue
    .line 40
    const-string v1, "mkt"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const-string v1, "Given URL already has mkt parameter set."

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 55
    .end local p1    # "original":Landroid/net/Uri;
    :goto_0
    return-object p1

    .line 54
    .restart local p1    # "original":Landroid/net/Uri;
    :cond_0
    const-string v1, "app_market"

    invoke-static {p0, v1}, Lcom/microsoft/onlineid/internal/Resources;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "mkt":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "mkt"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "en"

    .end local v0    # "mkt":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method public static appendPhoneDigits(Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .param p0, "telephonyManagerReader"    # Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;
    .param p1, "original"    # Landroid/net/Uri;

    .prologue
    .line 70
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string v1, "Given URL already has phone parameter set."

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 83
    .end local p1    # "original":Landroid/net/Uri;
    :goto_0
    return-object p1

    .line 76
    .restart local p1    # "original":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "phone"

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 80
    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 82
    :cond_1
    const-string v1, "[^\\d]+"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
