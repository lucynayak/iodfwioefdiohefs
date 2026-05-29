.class public Lcom/microsoft/onlineid/analytics/NopClientAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/analytics/IClientAnalytics;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTimedEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .registers 3

    new-instance p1, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;

    invoke-direct {p1}, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;-><init>()V

    return-object p1
.end method

.method public createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .registers 4

    new-instance p1, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;

    invoke-direct {p1}, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;-><init>()V

    return-object p1
.end method

.method public logCertificates(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/microsoft/onlineid/analytics/IClientAnalytics;"
        }
    .end annotation

    return-object p0
.end method

.method public logClockSkew(J)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .registers 3

    return-object p0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .registers 3

    return-object p0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .registers 4

    return-object p0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .registers 5

    return-object p0
.end method

.method public logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .registers 2

    return-object p0
.end method

.method public logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .registers 2

    return-object p0
.end method

.method public logTotalAccountsEvent(Ljava/lang/String;II)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .registers 4

    return-object p0
.end method

.method public send(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/onlineid/analytics/IClientAnalytics;"
        }
    .end annotation

    return-object p0
.end method

.method public setTestMode()V
    .registers 1

    return-void
.end method
