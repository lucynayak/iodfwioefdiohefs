.class public abstract Landroid/support/v7/view/menu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/i;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/content/Context;

.field public d:Landroid/support/v7/view/menu/e;

.field public e:Landroid/view/LayoutInflater;

.field public f:Landroid/support/v7/view/menu/i$a;

.field public g:I

.field public h:I

.field public i:Landroid/support/v7/view/menu/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/a;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/a;->e:Landroid/view/LayoutInflater;

    const p1, 0x7f0b0003

    iput p1, p0, Landroid/support/v7/view/menu/a;->g:I

    const p1, 0x7f0b0002

    iput p1, p0, Landroid/support/v7/view/menu/a;->h:I

    return-void
.end method


# virtual methods
.method public final c(Landroid/support/v7/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final f(Landroid/support/v7/view/menu/i$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/a;->f:Landroid/support/v7/view/menu/i$a;

    return-void
.end method

.method public final k(Landroid/support/v7/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
