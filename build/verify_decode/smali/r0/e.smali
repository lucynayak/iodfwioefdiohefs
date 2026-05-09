.class public final Lr0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/n;


# static fields
.field public static volatile b:Z

.field public static volatile c:Z

.field public static volatile d:Lr0/c;

.field public static volatile e:Lr0/a;

.field public static volatile f:Lr0/b;

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I

.field public static final k:[I

.field public static final synthetic l:I

.field public static final m:[B

.field public static final n:[B

.field public static final o:Lr0/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lr0/e;->g:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lr0/e;->h:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lr0/e;->i:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lr0/e;->j:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lr0/e;->k:[I

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 2
    fill-array-data v1, :array_5

    sput-object v1, Lr0/e;->m:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lr0/e;->n:[B

    new-instance v0, Lr0/e;

    invoke-direct {v0}, Lr0/e;-><init>()V

    sput-object v0, Lr0/e;->o:Lr0/e;

    return-void

    nop

    :array_0
    .array-data 4
        0x10101a5
        0x101031f
        0x7f030027
    .end array-data

    :array_1
    .array-data 4
        0x7f03010f
        0x7f030110
        0x7f030111
        0x7f030112
        0x7f030113
        0x7f030114
    .end array-data

    :array_2
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x101056f
        0x1010570
        0x7f03010d
        0x7f030115
        0x7f030116
        0x7f030117
        0x7f030282
    .end array-data

    :array_3
    .array-data 4
        0x101019d
        0x101019e
        0x10101a1
        0x10101a2
        0x10101a3
        0x10101a4
        0x1010201
        0x101020b
        0x1010510
        0x1010511
        0x1010512
        0x1010513
    .end array-data

    :array_4
    .array-data 4
        0x10101a5
        0x1010514
    .end array-data

    :array_5
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_6
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x3dcccccd    # 0.1f

    .line 2
    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->t(F)F

    move-result v0

    iput v0, p1, Landroid/support/design/widget/SwipeDismissBehavior;->e:F

    const v0, 0x3f19999a    # 0.6f

    .line 3
    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->t(F)F

    move-result v0

    iput v0, p1, Landroid/support/design/widget/SwipeDismissBehavior;->f:F

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Landroid/support/design/widget/SwipeDismissBehavior;->c:I

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Lr0/e;

    sget-object v1, Lr0/e;->f:Lr0/b;

    if-nez v1, :cond_2

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lr0/e;->f:Lr0/b;

    if-nez v1, :cond_1

    invoke-static {}, Lr0/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ls0/c;

    invoke-direct {v1}, Ls0/c;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lt0/e;

    invoke-direct {v1}, Lt0/e;-><init>()V

    :goto_0
    sput-object v1, Lr0/e;->f:Lr0/b;

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_2
    :goto_1
    sget-object v0, Lr0/e;->f:Lr0/b;

    .line 2
    invoke-interface {v0, p0}, Lr0/b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "r0.e"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error getting instance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Z
    .locals 4

    const-class v0, Lr0/e;

    sget-boolean v1, Lr0/e;->c:Z

    if-eqz v1, :cond_0

    sget-boolean v0, Lr0/e;->b:Z

    return v0

    :cond_0
    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lr0/e;->c:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lr0/e;->b:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v1

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.amazon.android.Kiwi"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v2, 0x0

    sput-boolean v2, Lr0/e;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    sput-boolean v1, Lr0/e;->b:Z

    :goto_0
    sput-boolean v1, Lr0/e;->c:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v0, Lr0/e;->b:Z

    return v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static d()Lr0/a;
    .locals 2

    const-class v0, Lr0/e;

    sget-object v1, Lr0/e;->e:Lr0/a;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr0/e;->e:Lr0/a;

    if-nez v1, :cond_0

    const-class v1, Lr0/a;

    invoke-static {v1}, Lr0/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/a;

    sput-object v1, Lr0/e;->e:Lr0/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lr0/e;->e:Lr0/a;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 1
    invoke-static {}, Lr0/e;->k()V

    sget-object v0, Le1/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No App ID found, please set the App ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Le1/h;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x1

    :try_start_0
    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    const-string p0, "FacebookActivity is not declared in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info."

    if-nez p1, :cond_1

    const-string p1, "r0.e"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public static g(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const-string p0, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml."

    if-nez p1, :cond_0

    const-string p1, "r0.e"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static h(Ljava/util/Collection;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Container \'requests\' cannot contain null values"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Container \'requests\' cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Argument \'"

    const-string v1, "\' cannot be null"

    .line 1
    invoke-static {v0, p1, v1}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \'"

    const-string v1, "\' cannot be null or empty"

    .line 1
    invoke-static {v0, p1, v1}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k()V
    .locals 2

    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 1
    const-class v0, Le1/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le1/r;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Le1/s;

    invoke-direct {v0}, Le1/s;-><init>()V

    throw v0

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public l(Lv2/a;Ljava/io/OutputStream;)V
    .locals 4

    instance-of v0, p1, Lv2/e;

    if-eqz v0, :cond_0

    check-cast p1, Lv2/e;

    invoke-virtual {p0, p1, p2}, Lr0/e;->n(Lv2/c;Ljava/io/OutputStream;)V

    return-void

    :cond_0
    instance-of v0, p1, Lv2/f;

    if-eqz v0, :cond_6

    check-cast p1, Lv2/f;

    .line 1
    iget-object v0, p1, Lv2/f;->d:Lv2/c;

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, v0, Lv2/c;->b:Lv2/d;

    if-eqz v0, :cond_4

    const-string v1, "Content-Type"

    .line 3
    invoke-virtual {v0, v1}, Lv2/d;->B(Ljava/lang/String;)Lw2/a;

    move-result-object v0

    check-cast v0, Lt2/e;

    if-eqz v0, :cond_3

    const-string v1, "boundary"

    .line 4
    invoke-virtual {v0, v1}, Lt2/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {v0}, Ld1/a;->v(Ljava/lang/String;)Lx2/b;

    move-result-object v0

    .line 6
    iget-object v1, p1, Lv2/f;->e:Ld1/a;

    .line 7
    invoke-virtual {p0, v1, p2}, Lr0/e;->m(Lx2/b;Ljava/io/OutputStream;)V

    sget-object v1, Lr0/e;->m:[B

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Lv2/f;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/b;

    sget-object v3, Lr0/e;->n:[B

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v0, p2}, Lr0/e;->m(Lx2/b;Ljava/io/OutputStream;)V

    sget-object v3, Lr0/e;->m:[B

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v2, p2}, Lr0/e;->n(Lv2/c;Ljava/io/OutputStream;)V

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    sget-object v1, Lr0/e;->n:[B

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v0, p2}, Lr0/e;->m(Lx2/b;Ljava/io/OutputStream;)V

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lr0/e;->m:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 8
    iget-object p1, p1, Lv2/f;->b:Lx2/b;

    .line 9
    invoke-virtual {p0, p1, p2}, Lr0/e;->m(Lx2/b;Ljava/io/OutputStream;)V

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multipart boundary not specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content-Type field not specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing header in parent entity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing parent entity in multipart"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_6
    instance-of v0, p1, Lv2/g;

    if-eqz v0, :cond_7

    check-cast p1, Lv2/g;

    invoke-virtual {p1, p2}, Lv2/g;->f(Ljava/io/OutputStream;)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported body class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lx2/b;Ljava/io/OutputStream;)V
    .locals 2

    instance-of v0, p1, Lx2/a;

    if-eqz v0, :cond_0

    check-cast p1, Lx2/a;

    .line 1
    iget-object v0, p1, Lx2/a;->b:[B

    const/4 v1, 0x0

    .line 2
    iget p1, p1, Lx2/a;->c:I

    .line 3
    invoke-virtual {p2, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    invoke-interface {p1}, Lx2/b;->a()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public n(Lv2/c;Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lv2/c;->b:Lv2/d;

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Lv2/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw2/a;

    invoke-interface {v1}, Lw2/a;->a()Lx2/b;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lr0/e;->m(Lx2/b;Ljava/io/OutputStream;)V

    sget-object v1, Lr0/e;->m:[B

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    sget-object v0, Lr0/e;->m:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 3
    iget-object v0, p1, Lv2/c;->a:Lv2/a;

    if-eqz v0, :cond_5

    .line 4
    iget-object p1, p1, Lv2/c;->b:Lv2/d;

    const-string v1, "Content-Transfer-Encoding"

    .line 5
    invoke-virtual {p1, v1}, Lv2/d;->B(Ljava/lang/String;)Lw2/a;

    move-result-object p1

    check-cast p1, Lt2/d;

    sget-object v1, Lt2/d;->e:Lt2/d$a;

    if-eqz p1, :cond_1

    .line 6
    iget-object v1, p1, Lt2/d;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p1, Lt2/d;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "7bit"

    .line 9
    :goto_1
    sget v1, Lx2/d;->a:I

    const-string v1, "base64"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    new-instance p1, Ls2/a;

    invoke-direct {p1, p2}, Ls2/a;-><init>(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    const-string v1, "quoted-printable"

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Ls2/c;

    invoke-direct {p1, p2}, Ls2/c;-><init>(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_3
    move-object p1, p2

    .line 14
    :goto_2
    invoke-virtual {p0, v0, p1}, Lr0/e;->l(Lv2/a;Ljava/io/OutputStream;)V

    if-eq p1, p2, :cond_4

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing body"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing header"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
