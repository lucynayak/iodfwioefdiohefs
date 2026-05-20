.class public final synthetic Lh2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/d$a;


# instance fields
.field public final synthetic a:Lh2/j;


# direct methods
.method public synthetic constructor <init>(Lh2/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/i;->a:Lh2/j;

    return-void
.end method


# virtual methods
.method public final a(D)V
    .registers 3

    iget-object p1, p0, Lh2/i;->a:Lh2/j;

    .line 1
    invoke-virtual {p1}, Lc2/b;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 2
    invoke-static {p1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->removeEffect(I)V

    :cond_0
    return-void
.end method
