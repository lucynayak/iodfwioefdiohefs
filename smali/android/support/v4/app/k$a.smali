.class public final Landroid/support/v4/app/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/support/v4/app/k;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/k;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/k$a;->b:Landroid/support/v4/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/k$a;->b:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->W()Z

    return-void
.end method
