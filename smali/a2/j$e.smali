.class public final La2/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Li2/d;Landroid/widget/SeekBar;Landroid/widget/EditText;)V
    .registers 4

    iput-object p1, p0, La2/j$e;->a:Li2/d;

    iput-object p2, p0, La2/j$e;->b:Landroid/widget/SeekBar;

    iput-object p3, p0, La2/j$e;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    iget-object v0, p0, La2/j$e;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v4, p0, La2/j$e;->a:Li2/d;

    const-string v5, "max"

    invoke-virtual {v4, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-string v5, "min"

    invoke-virtual {v4, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-string v5, "min"

    invoke-virtual {v4, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-string v5, "delta"

    invoke-virtual {v4, v5}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v4, p0, La2/j$e;->b:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
