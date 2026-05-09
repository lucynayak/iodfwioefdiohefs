.class public final Le1/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le1/e0;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le1/e0;

.field public final synthetic c:Le1/x$b;


# direct methods
.method public constructor <init>(Le1/e0;Le1/x$b;)V
    .locals 0

    iput-object p1, p0, Le1/e0$a;->b:Le1/e0;

    iput-object p2, p0, Le1/e0$a;->c:Le1/x$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le1/e0$a;->c:Le1/x$b;

    iget-object v1, p0, Le1/e0$a;->b:Le1/e0;

    .line 1
    iget-object v1, v1, Le1/e0;->g:Le1/x;

    .line 2
    invoke-interface {v0}, Le1/x$b;->a()V

    return-void
.end method
