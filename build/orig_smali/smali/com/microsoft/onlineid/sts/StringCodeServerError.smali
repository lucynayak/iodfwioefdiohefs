.class public Lcom/microsoft/onlineid/sts/StringCodeServerError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _error:Ljava/lang/String;

.field private final _subError:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "error"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    iput p2, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

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

    instance-of v1, p1, Lcom/microsoft/onlineid/sts/StringCodeServerError;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/microsoft/onlineid/sts/StringCodeServerError;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

    iget p1, p1, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

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

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    return-object v0
.end method

.method public getSubError()I
    .locals 1

    iget v0, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

    invoke-static {v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;->getFriendlyHRDescription(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Server Error: %s SubError: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
