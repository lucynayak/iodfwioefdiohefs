.class public Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;


# instance fields
.field private dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NORMAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .registers 1

    return-object p0
.end method

.method public getDialogType()Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    return-object v0
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->onDialogStopped(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    return-void
.end method

.method public quickDismiss()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public safeDismiss()V
    .registers 2

    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    return-void
.end method

.method public setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    return-void
.end method
