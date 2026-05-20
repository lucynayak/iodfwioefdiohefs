.class public final Lh1/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/z$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh1/j;->v(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/j;


# direct methods
.method public constructor <init>(Lh1/j;)V
    .registers 2

    iput-object p1, p0, Lh1/j$a;->a:Lh1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Le1/m;)V
    .registers 4

    iget-object v0, p0, Lh1/j$a;->a:Lh1/j;

    invoke-virtual {v0, p1, p2}, Lh1/j;->b0(Landroid/os/Bundle;Le1/m;)V

    return-void
.end method
