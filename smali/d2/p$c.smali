.class public final Ld2/p$c;
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

    iput-object p1, p0, Ld2/p$c;->a:Ld2/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Ld2/p$c;->a:Ld2/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld2/p;->dismissButtons()V

    :cond_0
    return-void
.end method
