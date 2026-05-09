.class public final Lz1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lz1/a;


# direct methods
.method public constructor <init>(Lz1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/d;->a:Lz1/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz1/d;->a:Lz1/a;

    invoke-virtual {v0}, Lz1/a;->b()V

    return-void
.end method
