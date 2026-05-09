.class public final Landroid/support/v7/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Landroid/support/v7/app/AlertController;

.field public final synthetic c:Landroid/support/v7/app/AlertController$b;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AlertController$b;Landroid/support/v7/app/AlertController;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/AlertController$b;

    iput-object p2, p0, Landroid/support/v7/app/a;->b:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/AlertController$b;

    iget-object p1, p1, Landroid/support/v7/app/AlertController$b;->g:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Landroid/support/v7/app/a;->b:Landroid/support/v7/app/AlertController;

    iget-object p2, p2, Landroid/support/v7/app/AlertController;->b:Lh0/o;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/app/AlertController$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroid/support/v7/app/a;->b:Landroid/support/v7/app/AlertController;

    iget-object p1, p1, Landroid/support/v7/app/AlertController;->b:Lh0/o;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
