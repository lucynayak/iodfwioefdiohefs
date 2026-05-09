.class public final Lw/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw/h;

.field public static final b:Lc0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/f<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Lw/g;

    invoke-direct {v0}, Lw/g;-><init>()V

    :goto_0
    sput-object v0, Lw/c;->a:Lw/h;

    goto :goto_2

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    new-instance v0, Lw/f;

    invoke-direct {v0}, Lw/f;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    .line 1
    sget-object v0, Lw/e;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    const-string v1, "TypefaceCompatApi24Impl"

    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Lw/e;

    invoke-direct {v0}, Lw/e;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lw/d;

    invoke-direct {v0}, Lw/d;-><init>()V

    goto :goto_0

    :goto_2
    new-instance v0, Lc0/f;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lc0/f;-><init>(I)V

    sput-object v0, Lw/c;->b:Lc0/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Lv/c$a;Landroid/content/res/Resources;IILv/e;)Landroid/graphics/Typeface;
    .registers 12

    instance-of v0, p1, Lv/c$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p1, Lv/c$d;

    const/4 v0, 0x1

    .line 1
    iget v2, p1, Lv/c$d;->c:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    .line 2
    iget v3, p1, Lv/c$d;->b:I

    .line 3
    iget-object p1, p1, Lv/c$d;->a:La0/a;

    .line 4
    sget-object v4, La0/e;->a:Lc0/f;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v5, p1, La0/a;->f:Ljava/io/Serializable;

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, La0/e;->a:Lc0/f;

    invoke-virtual {v5, v4}, Lc0/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    if-eqz v5, :cond_1

    invoke-virtual {p5, v5}, Lv/e;->c(Landroid/graphics/Typeface;)V

    move-object v1, v5

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_3

    if-ne v3, v2, :cond_3

    invoke-static {p0, p1, p4}, La0/e;->b(Landroid/content/Context;La0/a;I)La0/e$d;

    move-result-object p0

    iget p1, p0, La0/e$d;->b:I

    if-nez p1, :cond_2

    iget-object p1, p0, La0/e$d;->a:Landroid/graphics/Typeface;

    invoke-virtual {p5, p1, v1}, Lv/e;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p5, p1, v1}, Lv/e;->a(ILandroid/os/Handler;)V

    :goto_1
    iget-object v1, p0, La0/e$d;->a:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_3
    new-instance v2, La0/b;

    invoke-direct {v2, p0, p1, p4, v4}, La0/b;-><init>(Landroid/content/Context;La0/a;ILjava/lang/String;)V

    if-eqz v0, :cond_4

    :try_start_0
    sget-object p0, La0/e;->b:La0/f;

    invoke-virtual {p0, v2, v3}, La0/f;->b(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/e$d;

    iget-object v1, p0, La0/e$d;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    :cond_4
    new-instance p0, La0/c;

    invoke-direct {p0, p5}, La0/c;-><init>(Lv/e;)V

    sget-object v0, La0/e;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object p1, La0/e;->d:Lc0/j;

    invoke-virtual {p1, v4}, Lc0/j;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-virtual {p1, v4}, Lc0/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_3

    :cond_5
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4, p5}, Lc0/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, La0/e;->b:La0/f;

    new-instance p1, La0/d;

    invoke-direct {p1, v4}, La0/d;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    new-instance v0, La0/g;

    invoke-direct {v0, v2, p5, p1}, La0/g;-><init>(Ljava/util/concurrent/Callable;Landroid/os/Handler;La0/f$c;)V

    invoke-virtual {p0, v0}, La0/f;->a(Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 10
    :cond_6
    sget-object v0, Lw/c;->a:Lw/h;

    check-cast p1, Lv/c$b;

    invoke-virtual {v0, p0, p1, p2, p4}, Lw/h;->a(Landroid/content/Context;Lv/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p5, p0, v1}, Lv/e;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_7
    const/4 p1, -0x3

    invoke-virtual {p5, p1, v1}, Lv/e;->a(ILandroid/os/Handler;)V

    :goto_2
    move-object v1, p0

    :goto_3
    if-eqz v1, :cond_8

    sget-object p0, Lw/c;->b:Lc0/f;

    invoke-static {p2, p3, p4}, Lw/c;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lc0/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v1
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 11

    sget-object v0, Lw/c;->a:Lw/h;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lw/h;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p4}, Lw/c;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lw/c;->b:Lc0/f;

    invoke-virtual {p2, p1, p0}, Lc0/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/res/Resources;II)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
