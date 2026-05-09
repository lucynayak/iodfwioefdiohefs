.class public final Lk1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/x$e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh1/x$e<",
        "Ll1/d;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/UUID;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lk1/l;->a:Ljava/util/UUID;

    iput-object p2, p0, Lk1/l;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ll1/d;

    .line 1
    iget-object v0, p0, Lk1/l;->a:Ljava/util/UUID;

    invoke-static {v0, p1}, Lk1/m;->a(Ljava/util/UUID;Ll1/d;)Lh1/q$a;

    move-result-object v0

    iget-object v1, p0, Lk1/l;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ll1/d;->a()I

    move-result p1

    invoke-static {p1}, La/c;->g(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, v0, Lh1/q$a;->b:Ljava/lang/String;

    const-string v0, "uri"

    .line 3
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
