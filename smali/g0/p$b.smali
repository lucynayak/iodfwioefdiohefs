.class public final Lg0/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg0/p;


# direct methods
.method public constructor <init>(Lg0/p;)V
    .registers 2

    iput-object p1, p0, Lg0/p$b;->b:Lg0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lg0/p$b;->b:Lg0/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg0/p;->r(I)V

    return-void
.end method
