.class public final Lk1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/f$a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lk1/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)Z
    .locals 2

    iget p1, p0, Lk1/j;->a:I

    .line 1
    new-instance v0, Lk1/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lk1/i;-><init>(Le1/j;Le1/j;)V

    .line 2
    invoke-static {p1, p2, v0}, Lk1/m;->d(ILandroid/content/Intent;Lc/c;)Z

    move-result p1

    return p1
.end method
