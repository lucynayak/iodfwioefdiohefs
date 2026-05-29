.class public Ldev/virus/variable/LauncherApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static b:Lm2/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAssets()Landroid/content/res/AssetManager;
    .registers 2

    sget-object v0, Ldev/virus/variable/LauncherApplication;->b:Lm2/b;

    .line 1
    iget-object v0, v0, Lm2/b;->a:Lm2/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lt/o;->c:Lt/o;

    if-nez v0, :cond_0

    new-instance v0, Lt/o;

    invoke-direct {v0}, Lt/o;-><init>()V

    .line 4
    :cond_0
    iget-object v0, v0, Lt/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public final onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lz1/p;->init(Landroid/content/Context;)V

    invoke-static {p0}, Ldev/virus/variable/app/CrashHandlers;->install(Landroid/content/Context;)V

    new-instance v0, Lm2/b;

    invoke-direct {v0, p0}, Lm2/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldev/virus/variable/LauncherApplication;->b:Lm2/b;

    return-void
.end method
