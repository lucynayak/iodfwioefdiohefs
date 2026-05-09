.class public final La2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/o;->a:Landroid/content/Context;

    iput-object p2, p0, La2/o;->b:Landroid/view/View;

    iput-object p3, p0, La2/o;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    new-instance v0, La2/d;

    iget-object v1, p0, La2/o;->a:Landroid/content/Context;

    iget-object v2, p0, La2/o;->b:Landroid/view/View;

    iget-object v3, p0, La2/o;->c:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, v2, v3}, La2/d;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/LayoutInflater;)V

    sput-object v0, Ldev/virus/variable/app/MinecraftActivity;->b:La2/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MenuBtn"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
