.class public final Lt/j$a$a;
.super Lt/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/j$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc0/a;

.field public final synthetic b:Lt/j$a;


# direct methods
.method public constructor <init>(Lt/j$a;Lc0/a;)V
    .locals 0

    iput-object p1, p0, Lt/j$a$a;->b:Lt/j$a;

    iput-object p2, p0, Lt/j$a$a;->a:Lc0/a;

    invoke-direct {p0}, Lt/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt/f;)V
    .locals 2

    iget-object v0, p0, Lt/j$a$a;->a:Lc0/a;

    iget-object v1, p0, Lt/j$a$a;->b:Lt/j$a;

    iget-object v1, v1, Lt/j$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
