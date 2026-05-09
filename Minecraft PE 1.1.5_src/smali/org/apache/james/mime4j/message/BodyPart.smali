.class public Lorg/apache/james/mime4j/message/BodyPart;
.super Lorg/apache/james/mime4j/message/Entity;
.source "BodyPart.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/BodyPart;)V
    .registers 2
    .param p1, "other"    # Lorg/apache/james/mime4j/message/BodyPart;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/Entity;-><init>(Lorg/apache/james/mime4j/message/Entity;)V

    .line 52
    return-void
.end method
