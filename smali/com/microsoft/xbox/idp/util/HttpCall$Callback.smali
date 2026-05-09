.class public interface abstract Lcom/microsoft/xbox/idp/util/HttpCall$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/util/HttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract processHttpError(IILjava/lang/String;)V
.end method

.method public abstract processResponse(Ljava/io/InputStream;)V
.end method
