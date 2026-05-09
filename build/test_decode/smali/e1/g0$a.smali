.class public final Le1/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le1/g0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le1/u$e;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Le1/u$e;JJ)V
    .locals 0

    iput-object p1, p0, Le1/g0$a;->b:Le1/u$e;

    iput-wide p2, p0, Le1/g0$a;->c:J

    iput-wide p4, p0, Le1/g0$a;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le1/g0$a;->b:Le1/u$e;

    invoke-interface {v0}, Le1/u$e;->b()V

    return-void
.end method
