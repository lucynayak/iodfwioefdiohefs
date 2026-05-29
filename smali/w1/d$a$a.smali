.class public final Lw1/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw1/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw1/d$a;

.field public final synthetic c:Lw1/g;

.field public final synthetic d:Lw1/f;


# direct methods
.method public constructor <init>(Lw1/d$a;Lw1/f;Lw1/g;)V
    .registers 4

    iput-object p1, p0, Lw1/d$a$a;->b:Lw1/d$a;

    iput-object p2, p0, Lw1/d$a$a;->d:Lw1/f;

    iput-object p3, p0, Lw1/d$a$a;->c:Lw1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lw1/d$a$a;->b:Lw1/d$a;

    iget-object v0, v0, Lw1/d$a;->d:Lw1/d$f;

    iget-object v1, p0, Lw1/d$a$a;->d:Lw1/f;

    iget-object v2, p0, Lw1/d$a$a;->c:Lw1/g;

    invoke-interface {v0, v1, v2}, Lw1/d$f;->onQueryInventoryFinished(Lw1/f;Lw1/g;)V

    return-void
.end method
