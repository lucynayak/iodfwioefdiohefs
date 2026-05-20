.class public Lcom/microsoft/onlineid/userdata/MeContactReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/userdata/IPhoneNumberReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;
    }
.end annotation


# instance fields
.field private final _applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/userdata/MeContactReader;->_applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createCursorForProfile([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/MeContactReader;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "mimetype = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Failed to retrieve user profile from device"

    invoke-static {p2, p1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFullName()Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;
    .registers 8

    const-string v0, "data2"

    const-string v1, "data3"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v2, v3}, Lcom/microsoft/onlineid/userdata/MeContactReader;->createCursorForProfile([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v0, v1}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;-><init>(Lcom/microsoft/onlineid/userdata/MeContactReader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    const-string v0, ""

    invoke-direct {v3, p0, v0, v0}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;-><init>(Lcom/microsoft/onlineid/userdata/MeContactReader;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    invoke-virtual {v3}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Does not exist in Me Contact"

    const-string v4, "Exists in Me Contact"

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    const-string v5, "User data"

    const-string v6, "First name"

    invoke-interface {v0, v5, v6, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    invoke-virtual {v3}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    const-string v1, "Last name"

    invoke-interface {v0, v5, v1, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    return-object v3
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 9

    const-string v0, "data2"

    const-string v1, "data1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v2, v3}, Lcom/microsoft/onlineid/userdata/MeContactReader;->createCursorForProfile([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    if-eqz v2, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Does not exist in Me Contact"

    const-string v5, "Exists in Me Contact"

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_4
    move-object v1, v5

    :goto_1
    const-string v6, "User data"

    const-string v7, "Mobile phone number"

    invoke-interface {v0, v6, v7, v1}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v5

    :goto_2
    const-string v1, "Home phone number"

    invoke-interface {v0, v6, v1, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v4

    :cond_6
    return-object v3
.end method
