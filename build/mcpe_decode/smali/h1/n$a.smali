.class public final Lh1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh1/n;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh1/n;


# direct methods
.method public constructor <init>(Lh1/n;)V
    .locals 0

    iput-object p1, p0, Lh1/n$a;->b:Lh1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lh1/n$a;->b:Lh1/n;

    invoke-static {v0}, Lh1/n;->e(Lh1/n;)V

    return-void
.end method
