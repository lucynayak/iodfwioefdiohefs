.class public final Lk1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk1/c;->c0(Lk1/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk1/c;


# direct methods
.method public constructor <init>(Lk1/c;)V
    .registers 2

    iput-object p1, p0, Lk1/c$a;->b:Lk1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lk1/c$a;->b:Lk1/c;

    .line 1
    iget-object v0, v0, Lk1/c;->h0:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
