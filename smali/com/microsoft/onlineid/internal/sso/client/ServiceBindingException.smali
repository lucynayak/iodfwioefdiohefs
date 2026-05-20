.class public Lcom/microsoft/onlineid/internal/sso/client/ServiceBindingException;
.super Lcom/microsoft/onlineid/exception/InternalException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
