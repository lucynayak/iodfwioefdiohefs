.class public final Lh0/s$b;
.super La3/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic I:Lh0/s;


# direct methods
.method public constructor <init>(Lh0/s;)V
    .locals 0

    iput-object p1, p0, Lh0/s$b;->I:Lh0/s;

    invoke-direct {p0}, La3/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lh0/s$b;->I:Lh0/s;

    const/4 v1, 0x0

    iput-object v1, v0, Lh0/s;->t:Lm0/g;

    iget-object v0, v0, Lh0/s;->d:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
