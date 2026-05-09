.class abstract Lcom/amazon/device/iap/internal/b/f/a;
.super Lcom/amazon/device/iap/internal/b/i;
.source "ResponseReceivedCommandBase.java"


# direct methods
.method constructor <init>(Lcom/amazon/device/iap/internal/b/e;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 14
    const-string v0, "response_received"

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/device/iap/internal/b/i;-><init>(Lcom/amazon/device/iap/internal/b/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/iap/internal/b/f/a;->b(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a(Lcom/amazon/venezia/command/SuccessResult;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
