.class public final Ln0/c$d;
.super Landroid/support/v4/app/i;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/i;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln0/c;


# direct methods
.method public constructor <init>(Ln0/c;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .registers 3

    iput-object p1, p0, Ln0/c$d;->b:Ln0/c;

    invoke-direct {p0, p2}, Landroid/support/v4/app/i;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Ln0/c$d;->b:Ln0/c;

    invoke-virtual {v1, p1}, Ln0/b;->h(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
