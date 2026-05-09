.class public Lcom/microsoft/xbox/toolkit/XMLHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final XML_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static instance:Lcom/microsoft/xbox/toolkit/XMLHelper;


# instance fields
.field private serializer:Ly2/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/toolkit/XMLHelper;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/XMLHelper;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XMLHelper;->instance:Lcom/microsoft/xbox/toolkit/XMLHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Ly2/o;

    new-instance v0, La3/b2;

    new-instance v1, Lz2/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lz2/a;-><init>(I)V

    invoke-direct {v0, v1}, La3/b2;-><init>(Lc3/b;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Ly2/o;

    return-void
.end method

.method public static instance()Lcom/microsoft/xbox/toolkit/XMLHelper;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/XMLHelper;->instance:Lcom/microsoft/xbox/toolkit/XMLHelper;

    return-object v0
.end method


# virtual methods
.method public load(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitForReady(I)V

    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Ly2/o;

    check-cast v1, La3/b2;

    invoke-virtual {v1, p2, p1}, La3/b2;->a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v0, 0x9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;)V

    throw p2
.end method

.method public save(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Ly2/o;

    check-cast v1, La3/b2;

    invoke-virtual {v1, p1, v0}, La3/b2;->b(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v1, 0x9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;)V

    throw v0
.end method

.method public save(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Ly2/o;

    check-cast v0, La3/b2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "utf-8"

    invoke-direct {v1, p2, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, La3/b2;->b(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v0, 0x9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;)V

    throw p2
.end method
