.class public final Lo0/h0$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lo0/h0;


# direct methods
.method public constructor <init>(Lo0/h0;)V
    .registers 2

    iput-object p1, p0, Lo0/h0$b;->a:Lo0/h0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    iget-object v0, p0, Lo0/h0$b;->a:Lo0/h0;

    invoke-virtual {v0}, Lo0/h0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo0/h0$b;->a:Lo0/h0;

    invoke-virtual {v0}, Lo0/h0;->d()V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    iget-object v0, p0, Lo0/h0$b;->a:Lo0/h0;

    invoke-virtual {v0}, Lo0/h0;->dismiss()V

    return-void
.end method
