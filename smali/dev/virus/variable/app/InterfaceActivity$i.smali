.class public Ldev/virus/variable/app/InterfaceActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/InterfaceActivity;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/InterfaceActivity;)V
    .registers 2

    iput-object p1, p0, Ldev/virus/variable/app/InterfaceActivity$i;->a:Ldev/virus/variable/app/InterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    # Reset Window size sliders to defaults:
    #   Width slider V: progress = 10  (= 30% width)
    #   Height slider X: progress = 30 (= 80% height)
    # setProgress() fires onProgressChanged on the registered listener,
    # which updates W / Y TextViews automatically.
    iget-object v0, p0, Ldev/virus/variable/app/InterfaceActivity$i;->a:Ldev/virus/variable/app/InterfaceActivity;

    iget-object v1, v0, Ldev/virus/variable/app/InterfaceActivity;->V:Landroid/widget/SeekBar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, v0, Ldev/virus/variable/app/InterfaceActivity;->X:Landroid/widget/SeekBar;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
