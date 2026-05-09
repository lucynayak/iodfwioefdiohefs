.class public final Ln2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public a:Ln2/d;

.field public b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Ln2/d;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/e;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-boolean p3, p0, Ln2/e;->c:Z

    iput-object p2, p0, Ln2/e;->a:Ln2/d;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ln2/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    return-void

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw p0

    :catch_1
    nop

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 11

    sget-object v0, Ln2/a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln2/e;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Ln2/e;->a:Ln2/d;

    .line 1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/util/Date;

    .line 2
    sget-wide v3, Ln2/b;->b:J

    .line 3
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo2/a;

    invoke-direct {v4, v3, p2}, Lo2/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v5, Ln2/a;->c:Ljava/lang/String;

    .line 4
    iput-object v5, v4, Lo2/a;->b:Ljava/lang/String;

    .line 5
    sget-object v5, Ln2/a;->d:Ljava/lang/String;

    .line 6
    iput-object v5, v4, Lo2/a;->d:Ljava/lang/String;

    .line 7
    sget-object v5, Ln2/a;->e:Ljava/lang/String;

    .line 8
    iput-object v5, v4, Lo2/a;->e:Ljava/lang/String;

    .line 9
    iput-object v2, v4, Lo2/a;->c:Ljava/util/Date;

    .line 10
    iput-object v1, v4, Lo2/a;->a:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ln2/d;->includeDeviceData()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Ln2/a;->b:Ljava/lang/String;

    .line 12
    iput-object v1, v4, Lo2/a;->i:Ljava/lang/String;

    .line 13
    sget-object v1, Ln2/a;->a:Ljava/lang/String;

    .line 14
    iput-object v1, v4, Lo2/a;->h:Ljava/lang/String;

    .line 15
    sget-object v1, Ln2/a;->h:Ljava/lang/String;

    .line 16
    iput-object v1, v4, Lo2/a;->f:Ljava/lang/String;

    .line 17
    sget-object v1, Ln2/a;->i:Ljava/lang/String;

    .line 18
    iput-object v1, v4, Lo2/a;->g:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v0}, Ln2/d;->includeThreadDetails()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    iput-object v1, v4, Lo2/a;->k:Ljava/lang/String;

    .line 21
    :cond_4
    sget-object v1, Ln2/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ln2/d;->includeDeviceIdentifier()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    sget-object v1, Ln2/a;->f:Ljava/lang/String;

    .line 22
    iput-object v1, v4, Lo2/a;->j:Ljava/lang/String;

    :cond_6
    const-string v1, "Error saving crash report!"

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ln2/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".stacktrace"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "Package"

    iget-object v5, v4, Lo2/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v5}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Version Code"

    iget-object v5, v4, Lo2/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v5}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Version Name"

    iget-object v5, v4, Lo2/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v5}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Android"

    iget-object v5, v4, Lo2/a;->i:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v5}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Android Build"

    iget-object v5, v4, Lo2/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v5}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Manufacturer"

    iget-object v5, v4, Lo2/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v5}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Model"

    iget-object v5, v4, Lo2/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v5}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Thread"

    iget-object v5, v4, Lo2/a;->k:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v5}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CrashReporter Key"

    iget-object v5, v4, Lo2/a;->j:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v5}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Start Date"

    sget-object v5, Lo2/a;->m:Ljava/text/SimpleDateFormat;

    iget-object v7, v4, Lo2/a;->c:Ljava/util/Date;

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v2, v7}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Date"

    iget-object v7, v4, Lo2/a;->a:Ljava/util/Date;

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v2, v5}, Lo2/a;->a(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v6, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, v4, Lo2/a;->l:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception v2

    move-object v5, v6

    goto :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    :goto_0
    :try_start_3
    invoke-static {v1, v2}, La3/r0;->r(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_7

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-static {v1, v2}, La3/r0;->r(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    if-eqz v0, :cond_a

    .line 24
    :try_start_5
    invoke-virtual {v0}, Ln2/d;->getUserID()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0xff

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_8

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 26
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".user"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ln2/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ln2/d;->getContact()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_9

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 28
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".contact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ln2/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ln2/d;->getDescription()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln2/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "Error saving crash meta data!"

    invoke-static {v1, v0}, La3/r0;->r(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :cond_a
    :goto_2
    iget-boolean v0, p0, Ln2/e;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Ln2/e;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void

    :goto_3
    move-object v6, v5

    :goto_4
    if-eqz v6, :cond_c

    .line 30
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    invoke-static {v1, p2}, La3/r0;->r(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    throw p1
.end method
