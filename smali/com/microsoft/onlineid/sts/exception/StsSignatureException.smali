.class public Lcom/microsoft/onlineid/sts/exception/StsSignatureException;
.super Lcom/microsoft/onlineid/sts/exception/StsParseException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>()V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
