.class public final Le1/t;
.super Le1/m;
.source "SourceFile"


# instance fields
.field public final b:Le1/o;


# direct methods
.method public constructor <init>(Le1/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Le1/m;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le1/t;->b:Le1/o;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{FacebookServiceException: "

    const-string v1, "httpResponseCode: "

    .line 1
    invoke-static {v0, v1}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le1/t;->b:Le1/o;

    .line 3
    iget v1, v1, Le1/o;->i:I

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", facebookErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/t;->b:Le1/o;

    .line 5
    iget v1, v1, Le1/o;->c:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", facebookErrorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/t;->b:Le1/o;

    .line 7
    iget-object v1, v1, Le1/o;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/t;->b:Le1/o;

    .line 9
    iget-object v2, v1, Le1/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Le1/o;->h:Le1/m;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v1, "}"

    .line 10
    invoke-static {v0, v2, v1}, La/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
