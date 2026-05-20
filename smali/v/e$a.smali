.class public final Lv/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/e;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/graphics/Typeface;

.field public final synthetic c:Lv/e;


# direct methods
.method public constructor <init>(Lv/e;Landroid/graphics/Typeface;)V
    .registers 3

    iput-object p1, p0, Lv/e$a;->c:Lv/e;

    iput-object p2, p0, Lv/e$a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lv/e$a;->c:Lv/e;

    iget-object v1, p0, Lv/e$a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lv/e;->c(Landroid/graphics/Typeface;)V

    return-void
.end method
