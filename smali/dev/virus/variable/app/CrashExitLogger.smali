.class public final Ldev/virus/variable/app/CrashExitLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static run(Landroid/content/Context;)V
    .registers 16

    :try_start_0
    if-eqz p0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_7

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "variable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_exit_ts"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v6, v4

    invoke-static {}, Lz1/p;->getCrashLogPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FileWriter;

    const/4 v8, 0x1

    invoke-direct {v3, v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    new-instance v12, Ljava/io/PrintWriter;

    invoke-direct {v12, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-lez v11, :cond_1

    cmp-long v11, v9, v6

    if-lez v11, :cond_2

    move-wide v6, v9

    :cond_2
    const-string v11, "\n=== PREVIOUS PROCESS EXIT ==="

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v11, "Timestamp: "

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    const-string v11, "Reason: "

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->println(I)V

    const-string v11, "Status: "

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->println(I)V

    const-string v11, "Importance: "

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->println(I)V

    const-string v11, "Process: "

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v11, "Description: "

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v14, "--- system trace/tombstone ---"

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    :cond_4
    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    :cond_5
    cmp-long v0, v6, v4

    if-lez v0, :cond_6

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_exit_ts"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_7
    :goto_2
    return-void
.end method
