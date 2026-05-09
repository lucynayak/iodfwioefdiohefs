.class public final La0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La0/f$c<",
        "La0/e$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv/e;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lv/e;)V
    .locals 0

    iput-object p1, p0, La0/c;->a:Lv/e;

    const/4 p1, 0x0

    iput-object p1, p0, La0/c;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, La0/e$d;

    if-nez p1, :cond_0

    iget-object p1, p0, La0/c;->a:Lv/e;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, La0/e$d;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, La0/c;->a:Lv/e;

    iget-object p1, p1, La0/e$d;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, La0/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lv/e;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, La0/c;->a:Lv/e;

    :goto_0
    iget-object v1, p0, La0/c;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lv/e;->a(ILandroid/os/Handler;)V

    :goto_1
    return-void
.end method
