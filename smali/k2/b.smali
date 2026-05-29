.class public final synthetic Lk2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lk2/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lk2/b;

    invoke-direct {v0}, Lk2/b;-><init>()V

    sput-object v0, Lk2/b;->b:Lk2/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    sget-object v0, Lk2/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lk2/c;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MZecM3nHnoyWWGOq5ztw"

    invoke-static {v2}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
