.class public final Ls/f$a;
.super Ls/f$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls/f$e;-><init>()V

    return-void
.end method

.method public constructor <init>(Ls/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ls/f$e;-><init>(Ls/f$e;)V

    return-void
.end method
