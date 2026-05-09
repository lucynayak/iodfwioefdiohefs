.class public Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _accountManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;->_accountManager:Landroid/accounts/AccountManager;

    return-void
.end method


# virtual methods
.method public getAccounts()[Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;->_accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 3

    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/AccountManagerWrapper;->_accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method
