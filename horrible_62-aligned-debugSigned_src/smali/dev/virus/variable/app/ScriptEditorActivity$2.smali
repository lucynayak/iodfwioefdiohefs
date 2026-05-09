.class public Ldev/virus/variable/app/ScriptEditorActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Ldev/virus/variable/app/ScriptEditorActivity;


# direct methods
.method constructor <init>(Ldev/virus/variable/app/ScriptEditorActivity;)V
    .registers 2

    iput-object p1, p0, Ldev/virus/variable/app/ScriptEditorActivity$2;->this$0:Ldev/virus/variable/app/ScriptEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Ldev/virus/variable/app/ScriptEditorActivity$2;->this$0:Ldev/virus/variable/app/ScriptEditorActivity;

    invoke-virtual {v0}, Ldev/virus/variable/app/ScriptEditorActivity;->updateLineNumbers()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
