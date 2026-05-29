.class public Landroid/arch/lifecycle/i;
.super Landroid/arch/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->a(Ljava/lang/String;)V

    iget v0, p0, Landroid/arch/lifecycle/LiveData;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->f:I

    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LiveData;->c(Landroid/arch/lifecycle/LiveData$a;)V

    return-void
.end method
