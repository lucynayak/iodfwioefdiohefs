.class public final Lh1/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh1/z;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh1/z;


# direct methods
.method public constructor <init>(Lh1/z;)V
    .registers 2

    iput-object p1, p0, Lh1/z$a;->b:Lh1/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lh1/z$a;->b:Lh1/z;

    invoke-virtual {p1}, Lh1/z;->cancel()V

    return-void
.end method
