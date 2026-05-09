.class public Lcom/microsoft/onlineid/OnlineIdConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    }
.end annotation


# instance fields
.field private _cobrandingId:Ljava/lang/String;

.field private final _preferredSignUpMemberNameType:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field private _requestWebTelemetry:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->None:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>(Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_preferredSignUpMemberNameType:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_requestWebTelemetry:Z

    return-void
.end method


# virtual methods
.method public getCobrandingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_cobrandingId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredSignUpMemberNameType()Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_preferredSignUpMemberNameType:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    return-object v0
.end method

.method public getShouldGatherWebTelemetry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_requestWebTelemetry:Z

    return v0
.end method

.method public setCobrandingId(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_cobrandingId:Ljava/lang/String;

    return-object p0
.end method

.method public setShouldGatherWebTelemetry(Z)Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_requestWebTelemetry:Z

    return-object p0
.end method
