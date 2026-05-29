.class public final Lf1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x5

    iput v0, p0, Lf1/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lf1/d;->b:I

    invoke-static {v0}, Lf1/f;->a(I)V

    return-void
.end method
