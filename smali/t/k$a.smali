.class public final Lt/k$a;
.super Lt/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/k;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt/f;


# direct methods
.method public constructor <init>(Lt/f;)V
    .registers 2

    iput-object p1, p0, Lt/k$a;->a:Lt/f;

    invoke-direct {p0}, Lt/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt/f;)V
    .registers 3

    iget-object v0, p0, Lt/k$a;->a:Lt/f;

    invoke-virtual {v0}, Lt/f;->y()V

    invoke-virtual {p1, p0}, Lt/f;->v(Lt/f$d;)Lt/f;

    return-void
.end method
