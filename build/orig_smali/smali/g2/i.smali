.class public final Lg2/i;
.super Lc2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/i$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    const-string v0, "BindGroups"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Other"

    invoke-direct {p0, v0, v1, v2, v3}, Lc2/b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0xb

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lz1/p;->isGroupVisible(I)Z

    move-result v3

    new-instance v4, Li2/e;

    invoke-direct {v4, v2, v3}, Li2/e;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lg2/i$a;

    invoke-direct {v5, v0}, Lg2/i$a;-><init>(I)V

    iput-object v5, v4, Li2/e;->f:Li2/e$a;

    iget-object v6, p0, Lc2/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
