.class public final Lk2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk2/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lk2/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Landroid/content/Context;

.field public static e:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lz1/p;->getScriptsPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk2/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lk2/c;->c:Ljava/util/HashSet;

    return-void
.end method

.method public static varargs a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    if-eqz p0, :cond_3

    .line 1
    iget-boolean v0, p0, Lk2/d;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 3
    iget-object v1, p0, Lk2/d;->b:Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v1, p1, v1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/mozilla/javascript/Function;

    if-eqz v3, :cond_3

    .line 2
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Context;->setLanguageVersion(I)V

    :try_start_0
    check-cast v2, Lorg/mozilla/javascript/Function;

    invoke-interface {v2, v0, v1, v1, p2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    iget-object v0, p0, Lk2/d;->c:Ljava/lang/String;

    const-string v1, "dObC 3zY1 "

    .line 6
    invoke-static {v1}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onScriptEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lk2/d;->d:Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lk2/d;->e:Z

    .line 9
    :cond_1
    invoke-static {p2}, Lk2/c;->f(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    :cond_3
    return-void
.end method

.method public static b(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mozilla/javascript/ScriptableObject;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static c(Ljava/lang/Class;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/mozilla/javascript/ScriptableObject;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    const-class v5, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lorg/mozilla/javascript/annotations/JSFunction;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static d()V
    .registers 11

    const-string v0, "dObC 3zY1 "

    new-instance v1, Ljava/io/File;

    sget-object v2, Lk2/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Context;->setLanguageVersion(I)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v3, :cond_2

    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".js"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lk2/c;->c:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/io/FileReader;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lk2/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9, v4, v6}, Lorg/mozilla/javascript/Context;->compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lk2/c;->e(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Script;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v1, Lk2/c;->e:Z

    if-nez v1, :cond_3

    sget-object v1, Ldev/virus/variable/app/MainActivity;->n:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Ldev/virus/variable/app/MainActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v4, v6}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v1

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lk2/c;->e(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Script;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lk2/c;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lk2/c;->f(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-void
.end method

.method public static e(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Script;Ljava/lang/String;)V
    .registers 11

    const-string v0, "dObC 3zY1 "

    new-instance v1, Lk2/c$a;

    invoke-direct {v1}, Lk2/c$a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v1

    new-instance v3, Lk2/d;

    invoke-direct {v3, p1, v1, p2}, Lk2/d;-><init>(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    :try_start_0
    const-class v4, Lk2/c$a;

    invoke-static {v4}, Lk2/c;->c(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-class v5, Lk2/c$a;

    const/4 v6, 0x2

    invoke-virtual {v1, v4, v5, v6}, Lorg/mozilla/javascript/ScriptableObject;->defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V

    new-instance v4, Ll2/b;

    sget-object v5, Lk2/c;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Ll2/b;-><init>(Landroid/content/Context;)V

    const-class v5, Ll2/b;

    invoke-static {v5}, Lk2/c;->c(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    const-class v7, Ll2/b;

    invoke-virtual {v4, v5, v7, v6}, Lorg/mozilla/javascript/ScriptableObject;->defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V

    const-string v5, "Data"

    invoke-static {v1, v5, v4, v6}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v4, "ModuleCategory"

    const-class v5, Ldev/virus/variable/launcher/module/ModuleCategory;

    invoke-static {v5}, Lk2/c;->b(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "BlockSide"

    const-class v5, Ldev/virus/variable/launcher/api/BlockSide;

    invoke-static {v5}, Lk2/c;->b(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "MoveButton"

    const-class v5, Ldev/virus/variable/launcher/api/MoveButton;

    invoke-static {v5}, Lk2/c;->b(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "PacketType"

    const-class v5, Ldev/virus/variable/launcher/api/PacketType;

    invoke-static {v5}, Lk2/c;->b(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "Enchantment"

    const-class v5, Ldev/virus/variable/launcher/api/Enchantment;

    invoke-static {v5}, Lk2/c;->b(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "ParticleType"

    const-class v5, Ly1/a;

    invoke-static {v5}, Lk2/c;->b(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-class v4, Ll2/a;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Ll2/c;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Ll2/d;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Ll2/e;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Ll2/f;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Ll2/h;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Ll2/g;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Ll2/k;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Ll2/j;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Lc2/c;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Lc2/b;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Li2/c;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Li2/a;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Li2/b;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Li2/d;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Li2/e;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    const-class v4, Li2/f;

    invoke-static {v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object v4, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lk2/c;->c:Ljava/util/HashSet;

    .line 1
    iget-object v5, v3, Lk2/d;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_1
    sget-object v4, Lk2/c;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "modpe_compat.js"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-string v6, "modpe_compat"

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v5, v6, v7, v4}, Lorg/mozilla/javascript/Context;->compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v4

    invoke-interface {v4, p0, v1}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 v4, 0x3

    const/4 v5, 0x0

    :try_start_2
    invoke-interface {p1, p0, v1}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lx1/f;

    invoke-direct {p1, v1, v4}, Lx1/f;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iput-boolean v5, v3, Lk2/d;->d:Z

    .line 4
    iput-boolean v2, v3, Lk2/d;->e:Z

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lx1/g;

    invoke-direct {p2, p0, v4}, Lx1/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_2
    new-array p0, v5, [Ljava/lang/Object;

    const-string p1, "onScriptEnabled"

    invoke-static {v3, p1, p0}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static f(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lz1/p;->isErrorNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :cond_0

    new-instance v1, Lx1/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lx1/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
