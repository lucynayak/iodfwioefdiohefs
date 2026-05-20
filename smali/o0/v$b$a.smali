.class public final Lo0/v$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo0/v$b;-><init>(Lo0/v;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo0/v$b;


# direct methods
.method public constructor <init>(Lo0/v$b;)V
    .registers 2

    iput-object p1, p0, Lo0/v$b$a;->b:Lo0/v$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lo0/v$b$a;->b:Lo0/v$b;

    iget-object p1, p1, Lo0/v$b;->G:Lo0/v;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object p1, p0, Lo0/v$b$a;->b:Lo0/v$b;

    iget-object p1, p1, Lo0/v$b;->G:Lo0/v;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo0/v$b$a;->b:Lo0/v$b;

    iget-object p4, p1, Lo0/v$b;->G:Lo0/v;

    iget-object p1, p1, Lo0/v$b;->E:Landroid/widget/ListAdapter;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p1, p0, Lo0/v$b$a;->b:Lo0/v$b;

    invoke-virtual {p1}, Lo0/h0;->dismiss()V

    return-void
.end method
