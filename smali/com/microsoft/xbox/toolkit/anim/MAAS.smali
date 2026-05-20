.class public Lcom/microsoft/xbox/toolkit/anim/MAAS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;
    }
.end annotation


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/anim/MAAS;


# instance fields
.field private final ASSET_FILENAME:Ljava/lang/String;

.field private final SDCARD_FILENAME:Ljava/lang/String;

.field private maasFileCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private usingSdcard:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/MAAS;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/MAAS;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->instance:Lcom/microsoft/xbox/toolkit/anim/MAAS;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/sdcard/bishop/maas/%sAnimation.xml"

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->SDCARD_FILENAME:Ljava/lang/String;

    const-string v0, "animation/%sAnimation.xml"

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->ASSET_FILENAME:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->usingSdcard:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/anim/MAAS;
    .registers 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->instance:Lcom/microsoft/xbox/toolkit/anim/MAAS;

    return-object v0
.end method

.method private getMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    .registers 4

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->loadMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    return-object p1
.end method

.method private loadMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    .registers 7

    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->usingSdcard:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/bishop/maas/%sAnimation.xml"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const-string v0, "animation/%sAnimation.xml"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XMLHelper;->instance()Lcom/microsoft/xbox/toolkit/XMLHelper;

    move-result-object p1

    const-class v1, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/xbox/toolkit/XMLHelper;->load(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAnimation(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    .registers 2

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
