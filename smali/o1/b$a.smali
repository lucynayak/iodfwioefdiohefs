.class public final Lo1/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo1/b;


# direct methods
.method public constructor <init>(Lo1/b;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lo1/b$a;->a:Lo1/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lo1/b$a;->a:Lo1/b;

    .line 1
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    .line 2
    invoke-static {v0, p1, v1}, Lo1/b;->zza(Lo1/b;Landroid/os/Message;I)V

    return-void
.end method
