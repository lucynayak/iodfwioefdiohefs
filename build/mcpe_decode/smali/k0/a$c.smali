.class public final Lk0/a$c;
.super Lk0/a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ls/b;


# direct methods
.method public constructor <init>(Ls/b;)V
    .locals 0

    invoke-direct {p0}, Lk0/a$f;-><init>()V

    iput-object p1, p0, Lk0/a$c;->a:Ls/b;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lk0/a$c;->a:Ls/b;

    invoke-virtual {v0}, Ls/b;->start()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lk0/a$c;->a:Ls/b;

    invoke-virtual {v0}, Ls/b;->stop()V

    return-void
.end method
