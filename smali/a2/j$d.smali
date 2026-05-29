.class public final La2/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/j;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;Lc2/b;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li2/d;

.field public final synthetic b:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Li2/d;Landroid/widget/SeekBar;)V
    .registers 3

    iput-object p1, p0, La2/j$d;->a:Li2/d;

    iput-object p2, p0, La2/j$d;->b:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    sget-object v0, Lk2/c;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v2, 0x3002

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, La2/j$d;->a:Li2/d;

    const-string v3, "current"

    invoke-virtual {v2, v3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Li2/c;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, La2/j$e;

    iget-object v7, p0, La2/j$d;->b:Landroid/widget/SeekBar;

    invoke-direct {v6, v2, v7, v1}, La2/j$e;-><init>(Li2/d;Landroid/widget/SeekBar;Landroid/widget/EditText;)V

    const-string v7, "OK"

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v7, "Cancel"

    const/4 p0, 0x0

    invoke-virtual {v5, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :try_start_0
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
