.class public Lcom/microsoft/onlineid/internal/storage/TypedStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AccountKeyToken:Ljava/lang/String; = "Account"

.field public static final AccountsCollectionKey:Ljava/lang/String; = "Accounts"

.field public static final ClockSkewKey:Ljava/lang/String; = "ClockSkew"

.field public static final CollectionLock:Ljava/lang/Object;

.field public static final ConfigLastDownloadedTimeKey:Ljava/lang/String; = "ConfigLastDownloadedTime"

.field public static final DeviceBasedFlightsKey:Ljava/lang/String; = "DeviceBasedFlights"

.field public static final DeviceFlightOverrideKey:Ljava/lang/String; = "DeviceFlightOverride"

.field public static final DeviceIdentityKey:Ljava/lang/String; = "Device"

.field public static final FormatSeparator:Ljava/lang/String; = "|"

.field public static final LastBackupPushedTimeKey:Ljava/lang/String; = "LastBackupPushedTime"

.field public static final LastBackupReceivedTimeKey:Ljava/lang/String; = "LastBackupReceivedTime"

.field public static final SdkVersionKey:Ljava/lang/String; = "SdkVersion"

.field public static final TicketCollectionKeyToken:Ljava/lang/String; = "Tickets"

.field public static final TicketKeyToken:Ljava/lang/String; = "Ticket"


# instance fields
.field public final _storage:Lcom/microsoft/onlineid/internal/storage/Storage;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/storage/Storage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    return-void
.end method

.method public static constructAccountKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Account"

    aput-object v2, v0, v1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructKey([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs constructKey([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const-string v0, "|"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Tickets"

    aput-object v2, v0, v1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructKey([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructTicketCollectionKeyFromAccountKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "Account"

    const-string v1, "Tickets"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructTicketKey(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;
    .registers 6

    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ticket target"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ticket policy"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Ticket"

    aput-object v2, v0, v1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructKey([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasTickets(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->hasCollection(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/Storage$Editor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/onlineid/internal/storage/Storage$Editor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v2, v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    return-void

    :cond_2
    invoke-virtual {p3, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    return-void
.end method


# virtual methods
.method public clearSynchronous()Z
    .registers 3

    sget-object v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->clear()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->commit()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteDeviceIdentity()V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "Device"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void
.end method

.method public getAccountSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;-><init>()V

    return-object v0
.end method

.method public getDeviceIdentitySerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer<",
            "Lcom/microsoft/onlineid/sts/DeviceIdentity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;-><init>()V

    return-object v0
.end method

.method public getTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;
    .registers 5

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketKey(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getTicketSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readFromCollection(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/Ticket;

    return-object p1
.end method

.method public getTicketSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer<",
            "Lcom/microsoft/onlineid/Ticket;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;-><init>()V

    return-object v0
.end method

.method public hasAccounts()Z
    .registers 2

    const-string v0, "Accounts"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->hasCollection(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCollection(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .registers 4

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getAccountSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v0

    const-string v1, "Accounts"

    invoke-virtual {p0, v1, p1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readFromCollection(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    return-object p1
.end method

.method public readAllAccounts()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getAccountSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v0

    const-string v1, "Accounts"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readCollection(Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public readClockSkew()J
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "ClockSkew"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readCollection(Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v7, v5}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v7, "Stored collection value was null."

    invoke-static {v6, v7}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v4, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key set was out of sync for collection: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    if-lez v2, :cond_2

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    const-string v5, "Storage"

    const-string v6, "Collection consistency error"

    invoke-interface {v4, v5, v6, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :try_start_1
    invoke-interface {p2, v0}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->deserializeAll(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    const-string v0, "Unable to deserialize indexed collection."

    invoke-static {v0, p2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public readConfigLastDownloadedTime()J
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "ConfigLastDownloadedTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readDeviceBasedFlights()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "DeviceBasedFlights"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readDeviceFlightOverrideEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "DeviceFlightOverride"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readDeviceIdentity()Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getDeviceIdentitySerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v1

    const-string v2, "Device"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readObject(Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/DeviceIdentity;

    return-object v0
.end method

.method public readFromCollection(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p3, v0}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-array p3, v3, [Ljava/lang/String;

    aput-object p2, p3, v2

    invoke-virtual {p0, p1, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "Value in storage at \'%s\' was corrupt."

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {p3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p3, v3, [Ljava/lang/String;

    aput-object p2, p3, v2

    invoke-virtual {p0, p1, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    :goto_0
    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V

    throw p3

    :cond_0
    :goto_1
    return-object v1
.end method

.method public readLastBackupPushedTime()J
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "LastBackupPushedTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLastBackupReceivedTime()J
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "LastBackupReceivedTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readSdkVersion()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "SdkVersion"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAccount(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Accounts"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeTickets(Ljava/lang/String;)V

    return-void
.end method

.method public removeCollection(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/Storage$Editor;)V

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeFromCollection(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v3, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    :goto_1
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public varargs removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public removeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)V
    .registers 6

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketKey(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public removeTickets(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeCollection(Ljava/lang/String;)V

    return-void
.end method

.method public replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/ISerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer<",
            "TT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p3, p2}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->serializeAll(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p3, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/Storage$Editor;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/onlineid/internal/storage/StorageException;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public retrieveBackup()Landroid/os/Bundle;
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readDeviceIdentity()Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->deviceAccountToBundle(Lcom/microsoft/onlineid/sts/DeviceIdentity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.microsoft.onlineid.backup_device"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAllAccounts()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->userAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_1

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->hasTickets(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.microsoft.onlineid.backup_users"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    return-object v0
.end method

.method public storeBackup(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "com.microsoft.onlineid.backup_device"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->deviceAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getDeviceIdentitySerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/StorageException;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "com.microsoft.onlineid.backup_users"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getAccountSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    :try_start_1
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->userAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v4
    :try_end_1
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-interface {v3, v4}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v4

    new-instance v5, Lcom/microsoft/onlineid/internal/storage/StorageException;

    invoke-direct {v5, v4}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v4

    const-string v5, "Encountered an error while trying to unbundle accounts."

    invoke-static {v5, v4}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v4, "Device"

    invoke-virtual {v3, v4, v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    :cond_2
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v4, "Accounts"

    invoke-virtual {v0, v4}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKeyFromAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1, v3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/Storage$Editor;)V

    goto :goto_2

    :cond_3
    const-string v0, "Accounts"

    invoke-direct {p0, v0, v2, v3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/Storage$Editor;)V

    const-string v0, "LastBackupReceivedTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public storeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V
    .registers 6

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/microsoft/onlineid/Ticket;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketKey(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getTicketSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeToCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/storage/ISerializer;)V

    return-void
.end method

.method public writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .registers 5

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account.PUID"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getAccountSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v1

    const-string v2, "Accounts"

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeToCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/storage/ISerializer;)V

    return-void
.end method

.method public writeClockSkew(J)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "ClockSkew"

    invoke-virtual {v0, v1, p1, p2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void
.end method

.method public writeConfigLastDownloadedTime()V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "ConfigLastDownloadedTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void
.end method

.method public writeDeviceBasedFlights(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    const-string v1, "DeviceBasedFlights"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void
.end method

.method public writeDeviceFlightOverrideEnabled(Z)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "DeviceFlightOverride"

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeBoolean(Ljava/lang/String;Z)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void
.end method

.method public writeDeviceIdentity(Lcom/microsoft/onlineid/sts/DeviceIdentity;)V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getDeviceIdentitySerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v1

    const-string v2, "Device"

    invoke-virtual {v0, v2, p1, v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void
.end method

.method public writeLastBackupPushedTime()V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "LastBackupPushedTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void
.end method

.method public writeLastBackupReceivedTime()V
    .registers 5

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "LastBackupReceivedTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void
.end method

.method public writeSdkVersion(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "SdkVersion"

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    return-void
.end method

.method public writeToCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/storage/ISerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Attempted to write null value to collection."

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    :try_start_0
    invoke-interface {p4, p3}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p4, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_1
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v1

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/onlineid/internal/storage/StorageException;

    invoke-direct {p2, p1}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
