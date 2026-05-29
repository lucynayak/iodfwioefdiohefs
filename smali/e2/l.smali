.class public final synthetic Le2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/f$a;


# instance fields
.field public final synthetic a:Le2/m;


# direct methods
.method public synthetic constructor <init>(Le2/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/l;->a:Le2/m;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Le2/l;->a:Le2/m;

    iget-object v1, v0, Le2/m;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    iget-object v4, v0, Le2/m;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Le2/m;->T(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
