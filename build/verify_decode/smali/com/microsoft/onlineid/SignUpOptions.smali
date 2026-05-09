.class public Lcom/microsoft/onlineid/SignUpOptions;
.super Lcom/microsoft/onlineid/RequestOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/RequestOptions<",
        "Lcom/microsoft/onlineid/SignUpOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/SignUpOptions;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/RequestOptions;-><init>(Landroid/os/Bundle;)V

    return-void
.end method
