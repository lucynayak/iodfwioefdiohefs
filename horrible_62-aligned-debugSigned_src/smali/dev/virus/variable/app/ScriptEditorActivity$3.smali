.class public Ldev/virus/variable/app/ScriptEditorActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field final synthetic this$0:Ldev/virus/variable/app/ScriptEditorActivity;


# direct methods
.method constructor <init>(Ldev/virus/variable/app/ScriptEditorActivity;)V
    .registers 2

    iput-object p1, p0, Ldev/virus/variable/app/ScriptEditorActivity$3;->this$0:Ldev/virus/variable/app/ScriptEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 7

    iget-object v0, p0, Ldev/virus/variable/app/ScriptEditorActivity$3;->this$0:Ldev/virus/variable/app/ScriptEditorActivity;

    iget-object v0, v0, Ldev/virus/variable/app/ScriptEditorActivity;->lineNumbers:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p3}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method
