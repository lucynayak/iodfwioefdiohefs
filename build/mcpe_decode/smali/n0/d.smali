.class public final Ln0/d;
.super Ln0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ln0/c;-><init>(Landroid/content/Context;Ly/b;)V

    return-void
.end method


# virtual methods
.method public final j(Landroid/view/ActionProvider;)Ln0/c$a;
    .locals 2

    new-instance v0, Ln0/d$a;

    iget-object v1, p0, Ln0/b;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Ln0/d$a;-><init>(Ln0/d;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
