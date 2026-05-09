.class public final Lz/b$b;
.super Lz/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lz/b;


# direct methods
.method public constructor <init>(Lz/b;)V
    .registers 2

    iput-object p1, p0, Lz/b$b;->b:Lz/b;

    invoke-direct {p0}, Lz/a$a;-><init>()V

    return-void
.end method
