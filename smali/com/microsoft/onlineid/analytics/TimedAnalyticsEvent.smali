.class public Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;


# static fields
.field private static final StartTimeNotSet:J = -0x1L


# instance fields
.field private final _builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

.field private _startTime:J

.field private final _tracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_startTime:J

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    iput-object p1, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance p1, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    if-eqz p4, :cond_1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public end()V
    .registers 6

    iget-wide v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_startTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_startTime:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->send(Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "TimedAnalyticsEvent.end() called before start()."

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;

    move-result-object p1

    return-object p1
.end method

.method public setLabel(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_builder:Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    return-object p0
.end method

.method public bridge synthetic start()Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .registers 2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->start()Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public start()Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;
    .registers 3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;->_startTime:J

    return-object p0
.end method
