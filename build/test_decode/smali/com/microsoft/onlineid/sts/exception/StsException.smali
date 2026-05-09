.class public Lcom/microsoft/onlineid/sts/exception/StsException;
.super Lcom/microsoft/onlineid/exception/InternalException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _stsError:Lcom/microsoft/onlineid/sts/StsError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V
    .locals 1

    const-string v0, ": "

    .line 1
    invoke-static {p1, v0}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/StsError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/sts/exception/StsException;->_stsError:Lcom/microsoft/onlineid/sts/StsError;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/exception/StsException;->_stsError:Lcom/microsoft/onlineid/sts/StsError;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/StsError;->getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/exception/StsException;->_stsError:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method
