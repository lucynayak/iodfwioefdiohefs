.class public final Landroid/support/v4/app/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/g;->I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/support/v4/app/g;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/g;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/g$b;->b:Landroid/support/v4/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/arch/lifecycle/d;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/g$b;->b:Landroid/support/v4/app/g;

    iget-object v1, v0, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    if-nez v1, :cond_0

    new-instance v1, Landroid/arch/lifecycle/f;

    iget-object v2, v0, Landroid/support/v4/app/g;->R:Landroid/support/v4/app/g$b;

    invoke-direct {v1, v2}, Landroid/arch/lifecycle/f;-><init>(Landroid/arch/lifecycle/e;)V

    iput-object v1, v0, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g$b;->b:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->Q:Landroid/arch/lifecycle/f;

    return-object v0
.end method
