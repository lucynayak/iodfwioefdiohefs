.class public Lcom/microsoft/onlineid/OnlineIdConfiguration;
.super Ljava/lang/Object;
.source "OnlineIdConfiguration.java"


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
    .registers 2

    .prologue
    .line 96
    sget-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->None:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>(Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;)V
    .registers 3
    .param p1, "preferredSignUpMemberNameType"    # Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_preferredSignUpMemberNameType:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_requestWebTelemetry:Z

    .line 110
    return-void
.end method


# virtual methods
.method public getCobrandingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_cobrandingId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredSignUpMemberNameType()Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_preferredSignUpMemberNameType:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    return-object v0
.end method

.method public getShouldGatherWebTelemetry()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_requestWebTelemetry:Z

    return v0
.end method

.method public setCobrandingId(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .registers 2
    .param p1, "cobrandingId"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_cobrandingId:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setShouldGatherWebTelemetry(Z)Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .registers 2
    .param p1, "requestWebTelemetry"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_requestWebTelemetry:Z

    .line 157
    return-object p0
.end method
