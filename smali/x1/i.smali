.class public final synthetic Lx1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$h;
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lx1/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lx1/i;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/tools/shell/Global;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/shell/Global;->A(Lorg/mozilla/javascript/tools/shell/Global;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
