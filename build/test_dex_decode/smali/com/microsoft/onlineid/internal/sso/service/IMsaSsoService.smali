.class public interface abstract Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub;,
        Lcom/microsoft/onlineid/internal/sso/service/IMsaSsoService$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getAccount(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getAccountById(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getAccountPickerIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getAllAccounts(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getSignInIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getSignOutIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getSignUpIntent(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getTicket(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract retrieveBackup(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract storeBackup(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
