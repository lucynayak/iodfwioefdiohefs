.class Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;
.super Landroid/arch/lifecycle/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderViewModel"
.end annotation


# static fields
.field public static final b:Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$a;


# instance fields
.field public a:Lc0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/k<",
            "Landroid/support/v4/app/LoaderManagerImpl$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$a;

    invoke-direct {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$a;-><init>()V

    sput-object v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/arch/lifecycle/l;-><init>()V

    new-instance v0, Lc0/k;

    invoke-direct {v0}, Lc0/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Lc0/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Lc0/k;

    invoke-virtual {v0}, Lc0/k;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Lc0/k;

    .line 1
    iget v3, v0, Lc0/k;->e:I

    iget-object v4, v0, Lc0/k;->d:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aput-object v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput v2, v0, Lc0/k;->e:I

    iput-boolean v2, v0, Lc0/k;->b:Z

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Lc0/k;

    invoke-virtual {v0, v2}, Lc0/k;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    throw v1
.end method
