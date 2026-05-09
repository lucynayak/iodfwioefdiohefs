.class public final Lo0/w$a;
.super Lv/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo0/w;->l(Landroid/content/Context;Lo0/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Lo0/w;


# direct methods
.method public constructor <init>(Lo0/w;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lo0/w$a;->b:Lo0/w;

    iput-object p2, p0, Lo0/w$a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lv/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/graphics/Typeface;)V
    .locals 3

    iget-object v0, p0, Lo0/w$a;->b:Lo0/w;

    iget-object v1, p0, Lo0/w$a;->a:Ljava/lang/ref/WeakReference;

    iget-boolean v2, v0, Lo0/w;->k:Z

    if-eqz v2, :cond_0

    iput-object p1, v0, Lo0/w;->j:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget v0, v0, Lo0/w;->i:I

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method
