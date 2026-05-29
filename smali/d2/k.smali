.class public final synthetic Ld2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/e$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc2/b;


# direct methods
.method public synthetic constructor <init>(Lc2/b;I)V
    .registers 3

    iput p2, p0, Ld2/k;->a:I

    iput-object p1, p0, Ld2/k;->b:Lc2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    iget v0, p0, Ld2/k;->a:I

    const-string v1, "Rainbow speed"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Ld2/k;->b:Lc2/b;

    check-cast v0, Lg2/e;

    sget v1, Lg2/e;->x:I

    const-string v1, "Manufacturer"

    .line 1
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Ld2/k;->b:Lc2/b;

    check-cast v0, Lg2/e;

    const-string v1, "Model"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Ld2/k;->b:Lc2/b;

    check-cast v0, Lg2/e;

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 2
    :pswitch_3
    iget-object v0, p0, Ld2/k;->b:Lc2/b;

    check-cast v0, Lf2/k;

    sget v1, Lf2/k;->v:I

    const-string v1, "Swap delay"

    .line 3
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 4
    :pswitch_4
    iget-object v0, p0, Ld2/k;->b:Lc2/b;

    check-cast v0, Le2/f0;

    sget v2, Le2/f0;->u:I

    .line 5
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 6
    :pswitch_5
    iget-object v0, p0, Ld2/k;->b:Lc2/b;

    check-cast v0, Le2/j;

    sget v2, Le2/j;->x:I

    .line 7
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 8
    :pswitch_6
    iget-object v0, p0, Ld2/k;->b:Lc2/b;

    check-cast v0, Le2/b;

    sget v1, Le2/b;->J:I

    const/16 v1, 0x8

    const-string v2, "sky"

    .line 9
    invoke-virtual {v0, v1, p1, v2}, Le2/b;->U(IZLjava/lang/String;)V

    return-void

    .line 10
    :pswitch_7
    iget-object v0, p0, Ld2/k;->b:Lc2/b;

    check-cast v0, Ld2/l;

    const-string v1, "Angle (horizontal)"

    .line 11
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Li2/c;->setVisibility(Z)V

    const-string v1, "Angle (vertical)"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    :pswitch_8
    iget-object v0, p0, Ld2/k;->b:Lc2/b;

    check-cast v0, Ld2/l;

    const-string v1, "CPS"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Li2/c;->setVisibility(Z)V

    const-string v1, "Minimal CPS"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Li2/c;->setVisibility(Z)V

    const-string v1, "Maximal CPS"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 12
    :goto_0
    iget-object v0, p0, Ld2/k;->b:Lc2/b;

    check-cast v0, Lh2/j;

    sget v1, Lh2/j;->q:I

    .line 13
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 14
    invoke-static {p1}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->removeEffect(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method
