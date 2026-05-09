.class public final Ld2/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ld2/p;


# direct methods
.method public constructor <init>(Ld2/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/p$b;->a:Ld2/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld2/p$b;->a:Ld2/p;

    invoke-virtual {v0}, Ld2/p;->dismissButtons()V

    invoke-virtual {v0}, Ld2/p;->createButtons()V

    return-void
.end method
