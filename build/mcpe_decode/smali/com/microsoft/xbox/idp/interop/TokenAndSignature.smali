.class public Lcom/microsoft/xbox/idp/interop/TokenAndSignature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    return-void
.end method

.method private static native delete(J)V
.end method

.method private static native getAgeGroup(J)Ljava/lang/String;
.end method

.method private static native getGamertag(J)Ljava/lang/String;
.end method

.method private static native getPriviliges(J)Ljava/lang/String;
.end method

.method private static native getReserved(J)Ljava/lang/String;
.end method

.method private static native getSignature(J)Ljava/lang/String;
.end method

.method private static native getToken(J)Ljava/lang/String;
.end method

.method private static native getUserHash(J)Ljava/lang/String;
.end method

.method private static native getWebAccountId(J)Ljava/lang/String;
.end method

.method private static native getXuid(J)Ljava/lang/String;
.end method


# virtual methods
.method public finalize()V
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->delete(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAgeGroup()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->getAgeGroup(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamertag()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->getGamertag(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriviliges()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->getPriviliges(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->getReserved(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->getSignature(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->getToken(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserHash()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->getUserHash(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebAccountId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->getWebAccountId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXuid()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;->getXuid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
