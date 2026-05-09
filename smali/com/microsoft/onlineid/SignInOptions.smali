.class public Lcom/microsoft/onlineid/SignInOptions;
.super Lcom/microsoft/onlineid/RequestOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/onlineid/RequestOptions<",
        "Lcom/microsoft/onlineid/SignInOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/SignInOptions;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/RequestOptions;-><init>(Landroid/os/Bundle;)V

    return-void
.end method
