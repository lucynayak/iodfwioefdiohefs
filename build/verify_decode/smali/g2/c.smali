.class public final Lg2/c;
.super Lc2/b;
.source "SourceFile"


# instance fields
.field public final o:Li2/d;

.field public final p:Landroid/content/Context;

.field public final q:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "CustomDPI"

    const/4 v1, 0x0

    const-string v2, "Other"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const-string v0, "variable"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lg2/c;->q:Landroid/content/SharedPreferences;

    new-instance v2, Li2/d;

    const/4 v3, 0x4

    new-array v3, v3, [D

    const-string v4, "custom_dpi_value"

    const/16 v5, 0x96

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v4, v0

    aput-wide v4, v3, v1

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v0

    const/4 v4, 0x2

    const-wide v5, 0x4072c00000000000L    # 300.0

    aput-wide v5, v3, v4

    const/4 v5, 0x3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v3, v5

    const-string v5, "DPI"

    invoke-direct {v2, v5, v3}, Li2/d;-><init>(Ljava/lang/String;[D)V

    iput-object v2, p0, Lg2/c;->o:Li2/d;

    new-instance v3, Li2/a;

    new-instance v5, Lx1/j;

    invoke-direct {v5, p0, v4}, Lx1/j;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v3, v5}, Li2/a;-><init>(Landroid/view/View$OnClickListener;)V

    new-array v4, v4, [Li2/c;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    invoke-virtual {p0, v4}, Lc2/b;->A([Li2/c;)V

    iput-object p1, p0, Lg2/c;->p:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 3

    iget-object v0, p0, Lg2/c;->o:Li2/d;

    const-string v1, "current"

    invoke-virtual {v0, v1}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1
    iget-object v1, p0, Lg2/c;->q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "custom_dpi_value"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lg2/c;->p:Landroid/content/Context;

    const-class v2, Ldev/virus/variable/app/LoadingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lg2/c;->p:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
