.class Le2/Xray$VisRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/Xray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VisRunnable"
.end annotation


# instance fields
.field final synthetic view:Landroid/view/View;

.field final synthetic vis:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/Xray$VisRunnable;->view:Landroid/view/View;

    iput p2, p0, Le2/Xray$VisRunnable;->vis:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Le2/Xray$VisRunnable;->view:Landroid/view/View;

    iget v1, p0, Le2/Xray$VisRunnable;->vis:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
