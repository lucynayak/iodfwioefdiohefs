.class public final Lk1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/f$a;


# instance fields
.field public final synthetic a:Le1/j;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(ILe1/j;)V
    .locals 0

    iput p1, p0, Lk1/k;->b:I

    iput-object p2, p0, Lk1/k;->a:Le1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)Z
    .locals 2

    iget p1, p0, Lk1/k;->b:I

    iget-object v0, p0, Lk1/k;->a:Le1/j;

    .line 1
    new-instance v1, Lk1/i;

    invoke-direct {v1, v0, v0}, Lk1/i;-><init>(Le1/j;Le1/j;)V

    .line 2
    invoke-static {p1, p2, v1}, Lk1/m;->d(ILandroid/content/Intent;Lc/c;)Z

    move-result p1

    return p1
.end method
