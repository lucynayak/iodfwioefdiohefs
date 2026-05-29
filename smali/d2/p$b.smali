.class public final Ld2/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ld2/p;


# direct methods
.method public constructor <init>(Ld2/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/p$b;->a:Ld2/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Ld2/p$b;->a:Ld2/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld2/p;->dismissButtons()V

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ld2/p;->createButtons()V

    :cond_0
    return-void
.end method
