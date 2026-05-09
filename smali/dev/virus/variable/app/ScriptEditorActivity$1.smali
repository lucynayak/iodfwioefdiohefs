.class public Ldev/virus/variable/app/ScriptEditorActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Ldev/virus/variable/app/ScriptEditorActivity;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/ScriptEditorActivity;)V
    .registers 2

    iput-object p1, p0, Ldev/virus/variable/app/ScriptEditorActivity$1;->this$0:Ldev/virus/variable/app/ScriptEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Ldev/virus/variable/app/ScriptEditorActivity$1;->this$0:Ldev/virus/variable/app/ScriptEditorActivity;

    invoke-virtual {p1}, Ldev/virus/variable/app/ScriptEditorActivity;->saveFile()V

    return-void
.end method
