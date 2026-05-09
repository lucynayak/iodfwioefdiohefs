.class public abstract Lcom/microsoft/xbox/idp/jobs/MSAJob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;,
        Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
    }
.end annotation


# instance fields
.field public final accountManager:Lcom/microsoft/onlineid/AccountManager;

.field public final callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    new-instance p2, Lcom/microsoft/onlineid/OnlineIdConfiguration;

    sget-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Email:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    invoke-direct {p2, v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>(Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;)V

    const-string v0, "90023"

    invoke-virtual {p2, v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->setCobrandingId(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    new-instance v0, Lcom/microsoft/onlineid/AccountManager;

    invoke-direct {v0, p1, p2}, Lcom/microsoft/onlineid/AccountManager;-><init>(Landroid/content/Context;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    return-void
.end method


# virtual methods
.method public abstract getType()Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/onlineid/AccountManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public abstract start()Lcom/microsoft/xbox/idp/jobs/MSAJob;
.end method
