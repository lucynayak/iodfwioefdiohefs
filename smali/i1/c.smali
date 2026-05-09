.class public final Li1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Li1/e;


# direct methods
.method public constructor <init>(Li1/e;)V
    .registers 2

    iput-object p1, p0, Li1/c;->b:Li1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Li1/c;->b:Li1/e;

    sget v0, Li1/e;->n0:I

    invoke-virtual {p1}, Li1/e;->d0()V

    return-void
.end method
