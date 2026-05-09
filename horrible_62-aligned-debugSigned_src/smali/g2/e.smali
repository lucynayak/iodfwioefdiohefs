.class public final Lg2/e;
.super Lc2/b;
.source "SourceFile"


# static fields
.field public static final synthetic x:I


# instance fields
.field public final A0:Li2/a;

.field public final o:Li2/e;

.field public final p:Li2/e;

.field public final s:Li2/e;

.field public final t:Li2/f;

.field public final u:Li2/e;

.field public final v:Li2/f;

.field public final w:Ljava/io/File;

.field public final y0:Li2/e;

.field public final z0:Li2/f;


# direct methods
.method public constructor <init>()V
    .registers 15

    const-string v0, "FastUnban"

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v2, "Other"

    invoke-direct {p0, v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lz1/p;->getSpoofPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lg2/e;->w:Ljava/io/File;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v0}, Ly1/b;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "manufacturer"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "model"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_1
    const-class v4, Landroid/os/Build;

    const-string v5, "MANUFACTURER"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_2
    const-class v4, Landroid/os/Build;

    const-string v5, "MODEL"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    new-instance v0, Li2/e;

    const-string v4, "Change username"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lg2/e;->o:Li2/e;

    new-instance v4, Li2/e;

    const-string v6, "Change clientID"

    invoke-direct {v4, v6, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    iput-object v4, p0, Lg2/e;->p:Li2/e;

    new-instance v8, Li2/e;

    const-string v10, "Change manufacturer"

    invoke-direct {v8, v10, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v9, Ld2/k;

    const/4 v7, 0x5

    invoke-direct {v9, p0, v7}, Ld2/k;-><init>(Lc2/b;I)V

    iput-object v9, v8, Li2/e;->f:Li2/e$a;

    iput-object v8, p0, Lg2/e;->s:Li2/e;

    new-instance v10, Li2/f;

    const-string v6, "Manufacturer"

    invoke-direct {v10, v6, v6, v2}, Li2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lg2/e;->t:Li2/f;

    new-instance v2, Li2/e;

    const-string v13, "Change model"

    invoke-direct {v2, v13, v5}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v9, Ld2/k;

    const/4 v7, 0x6

    invoke-direct {v9, p0, v7}, Ld2/k;-><init>(Lc2/b;I)V

    iput-object v9, v2, Li2/e;->f:Li2/e$a;

    iput-object v2, p0, Lg2/e;->u:Li2/e;

    new-instance v6, Li2/f;

    const-string v7, "Model"

    invoke-direct {v6, v7, v7, v3}, Li2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lg2/e;->v:Li2/f;

    const/4 v2, 0x0

    const-string v4, "1.21.51"

    :try_start_3
    iget-object v5, p0, Lg2/e;->w:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v5}, Ly1/b;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "spoof_version_enabled"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "version"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v4, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    goto :goto_1

    :catch_3
    move-exception v1

    :goto_1
    new-instance v11, Li2/e;

    const-string v1, "Spoof version"

    invoke-direct {v11, v1, v2}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v9, Ld2/k;

    const/4 v7, 0x7

    invoke-direct {v9, p0, v7}, Ld2/k;-><init>(Lc2/b;I)V

    iput-object v9, v11, Li2/e;->f:Li2/e$a;

    iput-object v11, p0, Lg2/e;->y0:Li2/e;

    new-instance v12, Li2/f;

    const-string v2, "Version"

    invoke-direct {v12, v2, v2, v4}, Li2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, p0, Lg2/e;->z0:Li2/f;

    new-instance v13, Li2/a;

    new-instance v0, Lg2/e$1;

    invoke-direct {v0, p0}, Lg2/e$1;-><init>(Lg2/e;)V

    invoke-direct {v13, v0}, Li2/a;-><init>(Landroid/view/View$OnClickListener;)V

    const-string v0, "Reset All"

    iput-object v0, v13, Li2/c;->b:Ljava/lang/String;

    iput-object v13, p0, Lg2/e;->A0:Li2/a;

    const/16 v3, 0x9

    new-array v3, v3, [Li2/c;

    const/4 v1, 0x0

    iget-object v0, p0, Lg2/e;->o:Li2/e;

    aput-object v0, v3, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lg2/e;->p:Li2/e;

    aput-object v0, v3, v1

    const/4 v1, 0x2

    aput-object v8, v3, v1

    const/4 v1, 0x3

    aput-object v10, v3, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lg2/e;->u:Li2/e;

    aput-object v0, v3, v1

    const/4 v1, 0x5

    aput-object v6, v3, v1

    const/4 v1, 0x6

    aput-object v11, v3, v1

    const/4 v1, 0x7

    aput-object v12, v3, v1

    const/16 v1, 0x8

    aput-object v13, v3, v1

    invoke-virtual {p0, v3}, Lc2/b;->A([Li2/c;)V

    return-void
.end method


# virtual methods
.method public final D()V
    .registers 9

    iget-object v0, p0, Lg2/e;->o:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lg2/e;->T(F)Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-static {v0}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setUsername(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lg2/e;->p:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "games/com.mojang/minecraftpe/clientId.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double v1, v1, v3

    const-wide v3, 0x43abc16d674ec800L    # 1.0E18

    sub-double/2addr v1, v3

    double-to-long v1, v1

    const-wide v3, 0xde0b6b3a7640000L

    add-long/2addr v1, v3

    .line 3
    invoke-static {v1, v2}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->setClientID(J)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lg2/e;->w:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "model"

    const-string v3, "manufacturer"

    iget-object v1, p0, Lg2/e;->t:Li2/f;

    invoke-virtual {v1}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lg2/e;->v:Li2/f;

    invoke-virtual {v1}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lg2/e;->y0:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    const-string v2, "spoof_version_enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lg2/e;->z0:Li2/f;

    invoke-virtual {v1}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lg2/e;->w:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object v0, p0, Lg2/e;->s:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_3
    const-class v0, Landroid/os/Build;

    const-string v1, "MANUFACTURER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lg2/e;->t:Li2/f;

    invoke-virtual {v1}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_2
    iget-object v0, p0, Lg2/e;->u:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_4
    const-class v0, Landroid/os/Build;

    const-string v1, "MODEL"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lg2/e;->v:Li2/f;

    invoke-virtual {v1}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    iget-object v0, p0, Lg2/e;->y0:Li2/e;

    invoke-virtual {v0}, Li2/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x16

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const/4 v0, 0x0

    iget-object v1, p0, Lg2/e;->z0:Li2/f;

    invoke-virtual {v1}, Li2/f;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendStringValue(ILjava/lang/String;)V

    :try_start_5
    invoke-static {}, Lz1/b;->c()V

    sget-object v0, Lz1/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/a;

    sget-object v2, Lz1/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lz1/a;->c:Lorg/json/JSONObject;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v1, Lz1/a;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iget-object v3, v1, Lz1/a;->c:Lorg/json/JSONObject;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    goto :goto_3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_4
    return-void

    :cond_5
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    :try_start_6
    invoke-static {}, Lz1/b;->c()V

    sget-object v0, Lz1/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/a;

    sget-object v2, Lz1/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lz1/a;->c:Lorg/json/JSONObject;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v1, Lz1/a;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iget-object v3, v1, Lz1/a;->c:Lorg/json/JSONObject;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    goto :goto_4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :cond_6
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public final I()V
    .registers 1

    return-void
.end method

.method public final T(F)Ljava/lang/String;
    .registers 61

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    move/from16 v2, p1

    float-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    const/16 v6, 0x3e7

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v9, 0x3fc999999999999aL    # 0.2

    const-string v11, "_"

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    const-string v14, ""

    cmpg-double v15, v2, v9

    if-gez v15, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v9

    float-to-double v9, v9

    cmpg-double v15, v9, v12

    if-gez v15, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v0, v3, v9}, Lg2/e;->U(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    float-to-double v9, v3

    cmpg-double v3, v9, v7

    if-gez v3, :cond_4

    goto :goto_3

    :cond_1
    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    const/4 v9, 0x2

    const/4 v10, 0x3

    cmpg-double v19, v2, v4

    if-gez v19, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v7

    float-to-double v7, v7

    cmpg-double v9, v7, v12

    if-gez v9, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v0, v3, v7}, Lg2/e;->U(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v7

    float-to-double v7, v7

    cmpg-double v9, v7, v12

    if-gez v9, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v0, v3, v7}, Lg2/e;->U(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    float-to-double v7, v3

    cmpg-double v3, v7, v15

    if-gez v3, :cond_4

    :goto_3
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v14

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_5
    const-wide v19, 0x3fe3333333333333L    # 0.6

    const/4 v6, 0x6

    cmpg-double v21, v2, v19

    if-gez v21, :cond_a

    const-string v2, "Xx_"

    .line 1
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    float-to-double v7, v3

    cmpg-double v3, v7, v15

    if-gez v3, :cond_7

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v6

    float-to-double v6, v6

    cmpg-double v8, v6, v12

    if-gez v8, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v0, v3, v6}, Lg2/e;->U(IZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v7

    float-to-double v7, v7

    cmpg-double v15, v7, v12

    if-gez v15, :cond_8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v0, v6, v7}, Lg2/e;->U(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v7

    float-to-double v7, v7

    cmpg-double v9, v7, v12

    if-gez v9, :cond_9

    const/4 v7, 0x1

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v0, v6, v7}, Lg2/e;->U(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_xX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_a
    const-wide v9, 0x3fe6666666666666L    # 0.7

    cmpg-double v12, v2, v9

    if-gez v12, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_9
    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    if-ge v3, v6, :cond_b

    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    :goto_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_17

    :cond_c
    cmpg-double v12, v2, v7

    if-gez v12, :cond_d

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2}, Ly1/b;->c(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_17

    :cond_d
    const/16 v2, 0x28

    const-string v19, "ivan"

    const-string v20, "vanya"

    const-string v21, "smali"

    const-string v22, "ghoul"

    const-string v23, "knite"

    const-string v24, "kick"

    const-string v25, "inside"

    const-string v26, "dedus"

    const-string v27, "kisa"

    const-string v28, "vasya"

    const-string v29, "dead"

    const-string v30, "vasiliy"

    const-string v31, "angel"

    const-string v32, "youtube"

    const-string v33, "heaven"

    const-string v34, "sasha"

    const-string v35, "demon"

    const-string v36, "maks"

    const-string v37, "vadim"

    const-string v38, "tiktok"

    const-string v39, "bebra"

    const-string v40, "sasun"

    const-string v41, "lizun"

    const-string v42, "abobus"

    const-string v43, "sus"

    const-string v44, "dodik"

    const-string v45, "gang"

    const-string v46, "brat"

    const-string v47, "moa"

    const-string v48, "moon"

    const-string v49, "semen"

    const-string v50, "anton"

    const-string v51, "liza"

    const-string v52, "chukcha"

    const-string v53, "nastya"

    const-string v54, "maxx"

    const-string v55, "soska"

    const-string v56, "chel"

    const-string v57, "moki"

    const-string v58, "popa"

    filled-new-array/range {v19 .. v58}, [Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x26

    const-string v19, "lol"

    const-string v20, "kek"

    const-string v21, "mcpe"

    const-string v22, "bed"

    const-string v23, "war"

    const-string v24, "fps"

    const-string v25, "inside"

    const-string v26, "YT"

    const-string v27, "dark"

    const-string v28, "FBI"

    const-string v29, "PC"

    const-string v30, "TT"

    const-string v31, "top"

    const-string v32, "dead"

    const-string v33, "def"

    const-string v34, "UwU"

    const-string v35, "OwO"

    const-string v36, "0w0"

    const-string v37, "elite"

    const-string v38, "666"

    const-string v39, "1337"

    const-string v40, "007"

    const-string v41, "228"

    const-string v42, "pro"

    const-string v43, "iOS"

    const-string v44, "GP"

    const-string v45, "ru"

    const-string v46, "ua"

    const-string v47, "kz"

    const-string v48, "sf2"

    const-string v49, "ten"

    const-string v50, "4i"

    const-string v51, "dev"

    const-string v52, "win10"

    const-string v53, "cod"

    const-string v54, "777"

    const-string v55, "4ok"

    const-string v56, "4ik"

    filled-new-array/range {v19 .. v56}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v8

    float-to-double v12, v8

    cmpg-double v8, v12, v4

    if-gez v8, :cond_e

    const/4 v8, 0x1

    goto :goto_b

    :cond_e
    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v12

    float-to-double v12, v12

    const-wide v17, 0x3fc999999999999aL    # 0.2

    cmpg-double v19, v12, v17

    if-gez v19, :cond_f

    const/4 v12, 0x1

    goto :goto_c

    :cond_f
    const/4 v12, 0x0

    :goto_c
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v13

    float-to-double v4, v13

    const-wide v19, 0x3fe4cccccccccccdL    # 0.65

    cmpg-double v13, v4, v19

    if-gez v13, :cond_11

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fe7ae147ae147aeL    # 0.74

    cmpl-double v6, v2, v4

    if-lez v6, :cond_10

    const v1, 0x3f3d70a4    # 0.74f

    :cond_10
    invoke-virtual {v0, v1}, Lg2/e;->T(F)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_11
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    float-to-double v3, v3

    const-wide v19, 0x3fe8a3d70a3d70a4L    # 0.77

    const-wide v21, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double v5, v3, v21

    if-gez v5, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_12
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    float-to-double v3, v3

    cmpg-double v5, v3, v19

    if-gez v5, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_13
    :goto_d
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    float-to-double v3, v3

    const/16 v5, 0x270f

    cmpg-double v13, v3, v9

    if-gez v13, :cond_1c

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    float-to-double v3, v3

    cmpg-double v9, v3, v15

    if-gez v9, :cond_1a

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v3, v7, v3

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    float-to-double v4, v4

    cmpg-double v6, v4, v21

    if-gez v6, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_14
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    float-to-double v4, v4

    cmpg-double v6, v4, v19

    if-gez v6, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_15
    :goto_e
    const/4 v5, 0x1

    :goto_f
    const/4 v4, 0x0

    .line 3
    :goto_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_17

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_16

    const/4 v5, 0x0

    goto :goto_11

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_17
    :goto_11
    if-nez v5, :cond_18

    .line 4
    invoke-static {v3}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e7

    .line 5
    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_19

    move-object v5, v11

    goto :goto_12

    :cond_19
    move-object v5, v14

    :goto_12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_1b

    move-object v3, v11

    goto :goto_13

    :cond_1b
    move-object v3, v14

    :goto_13
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    .line 6
    :cond_1c
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v14

    :goto_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v12, :cond_1d

    move-object v5, v11

    goto :goto_16

    :cond_1d
    move-object v5, v14

    :goto_16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1f

    .line 8
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fd999999999999aL    # 0.4

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1e

    goto :goto_18

    :cond_1e
    move-object v11, v14

    :goto_18
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e7

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1f
    return-object v2
.end method

.method public final U(IZ)Ljava/lang/String;
    .registers 12

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const-string v5, "bcdfghjklmnpqrstvwxz"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const-string v5, "aeiouy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method
