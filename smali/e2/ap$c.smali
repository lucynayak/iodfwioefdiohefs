.class final Le2/ap$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final b:Landroid/widget/SeekBar;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/ap$c;->b:Landroid/widget/SeekBar;

    iput-boolean p2, p0, Le2/ap$c;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Le2/ap$c;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Le2/ap$c;->c:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
