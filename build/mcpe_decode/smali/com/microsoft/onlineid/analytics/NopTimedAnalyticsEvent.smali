.class public Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;->setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;

    move-result-object p1

    return-object p1
.end method

.method public setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic start()Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;->start()Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public start()Lcom/microsoft/onlineid/analytics/NopTimedAnalyticsEvent;
    .locals 0

    return-object p0
.end method
