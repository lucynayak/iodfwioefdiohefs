.class public final Lo0/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lo0/d0;


# direct methods
.method public constructor <init>(Lo0/d0;)V
    .registers 2

    iput-object p1, p0, Lo0/d0$b;->b:Lo0/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lo0/d0$b;->b:Lo0/d0;

    const/4 v1, 0x0

    iput-object v1, v0, Lo0/d0;->n:Lo0/d0$b;

    invoke-virtual {v0}, Lo0/d0;->drawableStateChanged()V

    return-void
.end method
