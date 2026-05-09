.class public final Landroid/support/v7/widget/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static d:Lc0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/h;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Landroid/support/v7/widget/m$g$c;

.field public c:Landroid/support/v7/widget/m$g$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc0/h;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lc0/h;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/v$a;->d:Lc0/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v7/widget/v$a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/v$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/v$a;->b:Landroid/support/v7/widget/m$g$c;

    iput-object v0, p0, Landroid/support/v7/widget/v$a;->c:Landroid/support/v7/widget/m$g$c;

    sget-object v0, Landroid/support/v7/widget/v$a;->d:Lc0/h;

    invoke-virtual {v0, p0}, Lc0/h;->b(Ljava/lang/Object;)Z

    return-void
.end method
