.class public Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_UPLOAD_NUM_PER_REQUEST:I = 0x64


# instance fields
.field private callback:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;)V
    .registers 2

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->callback:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getProfileNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getProfileNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getUserEnteredNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getUserEnteredNumber()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    return-void

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getPhoneNumberFromSim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getPhoneNumberFromSim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private batchUploadContacts(Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v4, v1, 0x64

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v5}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->uploadContacts(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    return v2
.end method

.method private uploadContacts(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x64

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;

    iget-object v3, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    invoke-direct {v0, p1, v3}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->updatePhoneContacts(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->isErrorResponse:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->getXboxPhoneContacts()Ljava/util/Set;

    move-result-object p1

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->updateXboxContacts(Ljava/util/Set;)V

    return v1

    :cond_1
    return v2
.end method

.method private uploadContactsSucceeded()Z
    .registers 4

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getContacts()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->batchUploadContacts(Ljava/util/ArrayList;)Z

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->uploadContacts(Ljava/util/ArrayList;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getMyShortCircuitProfile()Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->getXboxNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->setProfileNumber(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->uploadContactsSucceeded()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_3
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .registers 2

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public bridge synthetic onError()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method public onNoAction()V
    .registers 1

    return-void
.end method

.method public onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->callback:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;->onResult(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 1

    return-void
.end method
