.class public final Lcom/microsoft/xbox/idp/interop/XsapiUser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/interop/XsapiUser$FinishSignInCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$LongCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallbackInternal;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$SignOutCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$StartSignInCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$VoidCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XsapiUser"

.field private static instance:Lcom/microsoft/xbox/idp/interop/XsapiUser;

.field private static final instanceLock:Ljava/lang/Object;


# instance fields
.field private final id:J

.field private final userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    new-instance v2, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getUserImpl(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;-><init>(J)V

    iput-object v2, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    return-void
.end method

.method public static convertPrivileges(Ljava/lang/String;)[I
    .registers 8

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v4, Lcom/microsoft/xbox/idp/interop/XsapiUser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot convert "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to integer"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    goto :goto_2

    :cond_1
    return-object p0
.end method

.method private static native create()J
.end method

.method private static native delete(J)V
.end method

.method private static native finishSignIn(JLcom/microsoft/xbox/idp/interop/XsapiUser$FinishSignInCallback;ILjava/lang/String;)V
.end method

.method public static getInstance()Lcom/microsoft/xbox/idp/interop/XsapiUser;
    .registers 2

    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instance:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    if-nez v0, :cond_1

    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instance:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    if-nez v1, :cond_0

    new-instance v1, Lcom/microsoft/xbox/idp/interop/XsapiUser;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;-><init>()V

    sput-object v1, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instance:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instance:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    return-object v0
.end method

.method private static native getPrivileges(J)Ljava/lang/String;
.end method

.method private static native getTokenAndSignature(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$LongCallback;)V
.end method

.method private static native getUserImpl(J)J
.end method

.method private static native getXuid(J)Ljava/lang/String;
.end method

.method private static native isProd(J)Z
.end method

.method private static native isSignedIn(J)Z
.end method

.method private static native signInSilently(JLcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallbackInternal;)V
.end method

.method private static native signOut(JLcom/microsoft/xbox/idp/interop/XsapiUser$SignOutCallback;)V
.end method

.method private static native startSignIn(JLcom/microsoft/xbox/idp/interop/XsapiUser$StartSignInCallback;)V
.end method


# virtual methods
.method public finalize()V
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->delete(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public finishSignIn(Lcom/microsoft/xbox/idp/interop/XsapiUser$FinishSignInCallback;Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;)V
    .registers 6

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->getId()I

    move-result p2

    invoke-static {v0, v1, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->finishSignIn(JLcom/microsoft/xbox/idp/interop/XsapiUser$FinishSignInCallback;ILjava/lang/String;)V

    return-void
.end method

.method public getPrivileges()[I
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getPrivileges(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->convertPrivileges(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTokenAndSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V

    return-void
.end method

.method public getTokenAndSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V
    .registers 13

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    new-instance v6, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;

    invoke-direct {v6, p0, p5}, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;-><init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignature(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$LongCallback;)V

    return-void
.end method

.method public getTokenAndSignatureSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/TokenAndSignature;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignatureSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    move-result-object p1

    return-object p1
.end method

.method public getTokenAndSignatureSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/TokenAndSignature;
    .registers 13

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;-><init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Ljava/util/concurrent/CountDownLatch;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/microsoft/xbox/idp/interop/XsapiUser;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->getTokenAndSignature()Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    move-result-object p1

    return-object p1
.end method

.method public getUserImpl()Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    return-object v0
.end method

.method public getXuid()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getXuid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isProd()Z
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->isProd(J)Z

    move-result v0

    return v0
.end method

.method public isSignedIn()Z
    .registers 3

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->isSignedIn(J)Z

    move-result v0

    return v0
.end method

.method public signInSilently(Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;)V
    .registers 5

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    new-instance v2, Lcom/microsoft/xbox/idp/interop/XsapiUser$1;

    invoke-direct {v2, p0, p1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$1;-><init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;)V

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->signInSilently(JLcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallbackInternal;)V

    return-void
.end method

.method public signOut(Lcom/microsoft/xbox/idp/interop/XsapiUser$SignOutCallback;)V
    .registers 4

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1, p1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->signOut(JLcom/microsoft/xbox/idp/interop/XsapiUser$SignOutCallback;)V

    return-void
.end method

.method public startSignIn(Lcom/microsoft/xbox/idp/interop/XsapiUser$StartSignInCallback;)V
    .registers 4

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1, p1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->startSignIn(JLcom/microsoft/xbox/idp/interop/XsapiUser$StartSignInCallback;)V

    return-void
.end method
