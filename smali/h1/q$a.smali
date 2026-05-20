.class public final Lh1/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Landroid/graphics/Bitmap;

.field public final d:Ljava/util/UUID;

.field public e:Z

.field public f:Landroid/net/Uri;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/q$a;->d:Ljava/util/UUID;

    iput-object p2, p0, Lh1/q$a;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lh1/q$a;->f:Landroid/net/Uri;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v2, "content"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lh1/q$a;->e:Z

    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const-string p3, "media"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lh1/q$a;->g:Z

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lh1/x;->t(Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Le1/m;

    const-string p3, "Unsupported scheme for media Uri : "

    .line 2
    invoke-static {p3, p2}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p2, :cond_7

    :goto_1
    iput-boolean v1, p0, Lh1/q$a;->g:Z

    :goto_2
    iget-boolean p2, p0, Lh1/q$a;->g:Z

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3
    iput-object p2, p0, Lh1/q$a;->a:Ljava/lang/String;

    iget-boolean p3, p0, Lh1/q$a;->g:Z

    if-nez p3, :cond_6

    iget-object p1, p0, Lh1/q$a;->f:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    sget-object p3, Le1/r;->a:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lr0/e;->k()V

    sget-object p3, Le1/r;->d:Ljava/lang/String;

    .line 5
    sget-object v2, Le1/k;->b:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "content://com.facebook.app.FacebookContentProvider"

    aput-object v3, v2, v0

    aput-object p3, v2, v1

    .line 6
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v2, p3

    const/4 p1, 0x3

    aput-object p2, v2, p1

    const-string p1, "%s%s/%s/%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_4
    iput-object p1, p0, Lh1/q$a;->b:Ljava/lang/String;

    return-void

    :cond_7
    new-instance p1, Le1/m;

    const-string p2, "Cannot share media without a bitmap or Uri set"

    invoke-direct {p1, p2}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method
