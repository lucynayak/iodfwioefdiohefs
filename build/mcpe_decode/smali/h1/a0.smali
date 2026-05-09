.class public final Lh1/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lh1/z;


# direct methods
.method public constructor <init>(Lh1/z;)V
    .locals 0

    iput-object p1, p0, Lh1/a0;->b:Lh1/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lh1/a0;->b:Lh1/z;

    invoke-virtual {p1}, Lh1/z;->cancel()V

    return-void
.end method
