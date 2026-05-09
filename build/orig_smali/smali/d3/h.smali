.class public final Ld3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ly1/a;

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ly1/a;

    invoke-direct {v0}, Ly1/a;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Ld3/h;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Ld3/h;->b:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Ld3/h;->a:I

    iput-object v0, p0, Ld3/h;->c:Ly1/a;

    return-void
.end method
