.class public Lcom/microsoft/onlineid/sts/FlightManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PuidComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static ResultTooManyFlights:I = -0x1


# instance fields
.field private _accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

.field private final _applicationContext:Landroid/content/Context;

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/onlineid/sts/FlightManager$1;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/FlightManager$1;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/sts/FlightManager;->PuidComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_applicationContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_applicationContext:Landroid/content/Context;

    new-instance v0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    return-void
.end method

.method private getPrimeAccount()Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->hasAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/sts/FlightManager;->PuidComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private unenrollAllFlights()V
    .registers 1

    return-void
.end method


# virtual methods
.method public canShowNgc()Z
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->isInNgcFlight()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->hasNgcSessionApprovalAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public enrollInFlights()V
    .registers 7

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->getFlights()Ljava/util/Set;

    move-result-object v0

    const-string v1, "Enrolling in Flights"

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    .line 2
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->unenrollAllFlights()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/microsoft/onlineid/internal/configuration/Flight;->QRCode:Lcom/microsoft/onlineid/internal/configuration/Flight;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/configuration/Flight;->getFlightID()I

    move-result v4

    if-eq v3, v4, :cond_0

    sget v4, Lcom/microsoft/onlineid/sts/FlightManager;->ResultTooManyFlights:I

    if-ne v3, v4, :cond_1

    const-string v3, "This client is in too many flights!  They are currently enrolled in "

    .line 3
    invoke-static {v3}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized flight number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " returned"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getFlights()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->isDeviceFlightOverrideEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readDeviceBasedFlights()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->getPrimeAccount()Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getFlights()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isDeviceFlightOverrideEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readDeviceFlightOverrideEnabled()Z

    move-result v0

    return v0
.end method

.method public isInNgcFlight()Z
    .registers 3

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->getFlights()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/internal/configuration/Flight;->QRCode:Lcom/microsoft/onlineid/internal/configuration/Flight;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/configuration/Flight;->getFlightID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDeviceFlightOverrideEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeDeviceFlightOverrideEnabled(Z)V

    return-void
.end method

.method public setFlights(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->getPrimeAccount()Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->isDeviceFlightOverrideEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeDeviceBasedFlights(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setFlights(Ljava/util/Set;)V

    iget-object p1, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {p1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    :cond_1
    :goto_0
    return-void
.end method
