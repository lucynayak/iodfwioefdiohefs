.class public final Lo0/w0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo0/w0;


# direct methods
.method public constructor <init>(Lo0/w0;)V
    .registers 2

    iput-object p1, p0, Lo0/w0$b;->b:Lo0/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lo0/w0$b;->b:Lo0/w0;

    invoke-virtual {v0}, Lo0/w0;->b()V

    return-void
.end method
