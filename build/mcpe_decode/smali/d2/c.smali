.class public final synthetic Ld2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/e$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc2/b;


# direct methods
.method public synthetic constructor <init>(Lc2/b;I)V
    .locals 0

    iput p2, p0, Ld2/c;->a:I

    iput-object p1, p0, Ld2/c;->b:Lc2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    iget v0, p0, Ld2/c;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Ld2/c;->b:Lc2/b;

    check-cast p1, Lg2/f;

    sget v0, Lg2/f;->q:I

    .line 1
    invoke-virtual {p1}, Lc2/b;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/b;

    invoke-virtual {v0}, Lc2/b;->isBindActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lc2/b;->k:La2/b;

    .line 5
    invoke-virtual {v0}, La2/b;->a()V

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :pswitch_1
    iget-object v0, p0, Ld2/c;->b:Lc2/b;

    check-cast v0, Lg2/e;

    sget v3, Lg2/e;->x:I

    const-string v3, "Change manufacturer"

    .line 7
    invoke-virtual {v0, v3}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v4

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Li2/c;->setVisibility(Z)V

    const-string v4, "Manufacturer"

    invoke-virtual {v0, v4}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v4

    if-nez p1, :cond_2

    invoke-virtual {v0, v3}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v3

    check-cast v3, Li2/e;

    invoke-virtual {v3}, Li2/e;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Li2/c;->setVisibility(Z)V

    const-string v3, "Change model"

    invoke-virtual {v0, v3}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v4

    invoke-virtual {v4, v5}, Li2/c;->setVisibility(Z)V

    const-string v4, "Model"

    invoke-virtual {v0, v4}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v4

    if-nez p1, :cond_3

    invoke-virtual {v0, v3}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p1

    check-cast p1, Li2/e;

    invoke-virtual {p1}, Li2/e;->isActive()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v4, v1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 8
    :pswitch_2
    iget-object v0, p0, Ld2/c;->b:Lc2/b;

    check-cast v0, Le2/v;

    sget v1, Le2/v;->o:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12

    .line 9
    invoke-static {v1, p1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const-string v1, "Item size"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Li2/c;->setVisibility(Z)V

    const-string v1, "Items gap"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 10
    :pswitch_3
    iget-object v0, p0, Ld2/c;->b:Lc2/b;

    check-cast v0, Le2/h;

    sget v1, Le2/h;->u:I

    const-string v1, "Rainbow speed"

    .line 11
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 12
    :pswitch_4
    iget-object v0, p0, Ld2/c;->b:Lc2/b;

    check-cast v0, Ld2/d;

    const-string v1, "Radius"

    .line 13
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 14
    :goto_2
    iget-object v0, p0, Ld2/c;->b:Lc2/b;

    check-cast v0, Lh2/d;

    sget v3, Lh2/d;->w:I

    const-string v3, "Selection mode"

    .line 15
    invoke-virtual {v0, v3}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v3

    check-cast v3, Li2/b;

    invoke-virtual {v3, p1}, Li2/b;->setVisibility(Z)V

    const-string v4, "Distance"

    invoke-virtual {v0, v4}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Li2/b;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Li2/c;->setVisibility(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
