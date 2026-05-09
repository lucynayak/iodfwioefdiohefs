.class public final La2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Li2/c;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Li2/d;Landroid/widget/TextView;Li2/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La2/j$a;->a:Li2/d;

    iput-object p2, p0, La2/j$a;->b:Landroid/widget/TextView;

    iput-object p3, p0, La2/j$a;->c:Li2/c;

    iput-object p4, p0, La2/j$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object p1, p0, La2/j$a;->a:Li2/d;

    int-to-double p2, p2

    const-string v0, "delta"

    invoke-virtual {p1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    mul-double v0, v0, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p2

    iget-object p2, p0, La2/j$a;->a:Li2/d;

    const-string p3, "min"

    invoke-virtual {p2, p3}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide p2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    .line 1
    iget-object v0, p1, Li2/d;->e:[D

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    iget-object p1, p1, Li2/d;->f:Li2/d$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Li2/d$a;->a(D)V

    .line 2
    :cond_0
    iget-object p1, p0, La2/j$a;->b:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, La2/j$a;->c:Li2/c;

    invoke-virtual {p3}, Li2/c;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <font color=\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, La2/j$a;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, La2/j$a;->a:Li2/d;

    const-string v0, "current"

    invoke-virtual {p3, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
