.class public final Lh0/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh0/o;


# direct methods
.method public constructor <init>(Lh0/o;)V
    .locals 0

    iput-object p1, p0, Lh0/o$a;->b:Lh0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lh0/o$a;->b:Lh0/o;

    invoke-virtual {v0, p1}, Lh0/o;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
