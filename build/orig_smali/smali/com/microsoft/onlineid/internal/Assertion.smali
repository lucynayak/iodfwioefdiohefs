.class public Lcom/microsoft/onlineid/internal/Assertion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    return-void
.end method

.method public static check(ZLjava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
