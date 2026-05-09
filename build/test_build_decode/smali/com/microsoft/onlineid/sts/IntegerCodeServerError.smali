.class public Lcom/microsoft/onlineid/sts/IntegerCodeServerError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _error:I

.field private final _message:Ljava/lang/String;

.field private final _subError:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    iput p2, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    iput-object p3, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    iget v1, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    iget v2, p1, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    iget p1, p1, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    if-eq v1, p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method public getError()I
    .locals 1

    iget v0, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    return v0
.end method

.method public getSubError()I
    .locals 1

    iget v0, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    iget v1, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    invoke-static {v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;->getFriendlyHRDescription(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    invoke-static {v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;->getFriendlyHRDescription(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_message:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Server Error: %s SubError: %s Message: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
