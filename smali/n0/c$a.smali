.class public Ln0/c$a;
.super Ld0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Ln0/c;


# direct methods
.method public constructor <init>(Ln0/c;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .registers 4

    iput-object p1, p0, Ln0/c$a;->c:Ln0/c;

    invoke-direct {p0}, Ld0/c;-><init>()V

    iput-object p3, p0, Ln0/c$a;->b:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Ln0/c$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public final c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Ln0/c$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Ln0/c$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public final f(Landroid/view/SubMenu;)V
    .registers 4

    iget-object v0, p0, Ln0/c$a;->b:Landroid/view/ActionProvider;

    iget-object v1, p0, Ln0/c$a;->c:Ln0/c;

    invoke-virtual {v1, p1}, Ln0/b;->i(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method
