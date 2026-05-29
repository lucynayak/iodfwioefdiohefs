.class public final Ldev/virus/variable/app/Wallhack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/virus/variable/app/Wallhack;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/Wallhack;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/Wallhack;)V
    .registers 2

    iput-object p1, p0, Ldev/virus/variable/app/Wallhack$1;->a:Ldev/virus/variable/app/Wallhack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Overdraw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/16 v0, 0x23

    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void
.end method
