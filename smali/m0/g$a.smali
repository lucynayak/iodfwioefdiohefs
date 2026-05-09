.class public final Lm0/g$a;
.super La3/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public I:Z

.field public J:I

.field public final synthetic K:Lm0/g;


# direct methods
.method public constructor <init>(Lm0/g;)V
    .registers 2

    iput-object p1, p0, Lm0/g$a;->K:Lm0/g;

    invoke-direct {p0}, La3/r0;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm0/g$a;->I:Z

    iput p1, p0, Lm0/g$a;->J:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget v0, p0, Lm0/g$a;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm0/g$a;->J:I

    iget-object v1, p0, Lm0/g$a;->K:Lm0/g;

    iget-object v1, v1, Lm0/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lm0/g$a;->K:Lm0/g;

    iget-object v0, v0, Lm0/g;->d:Ld0/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld0/o;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lm0/g$a;->J:I

    iput-boolean v0, p0, Lm0/g$a;->I:Z

    iget-object v1, p0, Lm0/g$a;->K:Lm0/g;

    .line 2
    iput-boolean v0, v1, Lm0/g;->e:Z

    :cond_1
    return-void
.end method

.method public final d()V
    .registers 2

    iget-boolean v0, p0, Lm0/g$a;->I:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/g$a;->I:Z

    iget-object v0, p0, Lm0/g$a;->K:Lm0/g;

    iget-object v0, v0, Lm0/g;->d:Ld0/o;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ld0/o;->d()V

    :cond_1
    return-void
.end method
