.class public Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;
.super Lcom/microsoft/onlineid/exception/InternalException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _redirectRequestTo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, ": "

    .line 1
    invoke-static {p1, v0, p2}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    const-string p1, "redirectRequestTo"

    invoke-static {p2, p1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;->_redirectRequestTo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRedirectRequestTo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;->_redirectRequestTo:Ljava/lang/String;

    return-object v0
.end method
