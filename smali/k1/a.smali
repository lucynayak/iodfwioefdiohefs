.class public final Lk1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lk1/c;


# direct methods
.method public constructor <init>(Lk1/c;)V
    .registers 2

    iput-object p1, p0, Lk1/a;->b:Lk1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lk1/a;->b:Lk1/c;

    .line 1
    iget-object p1, p1, Lk1/c;->h0:Landroid/app/Dialog;

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
