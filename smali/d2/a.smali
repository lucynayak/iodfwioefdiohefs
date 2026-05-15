.class public final synthetic Ld2/a;
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

    iput p2, p0, Ld2/a;->a:I

    iput-object p1, p0, Ld2/a;->b:Lc2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    iget v0, p0, Ld2/a;->a:I

    const-string v1, "Swap delay"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Lh2/d;

    sget v2, Lh2/d;->w:I

    .line 1
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Le2/g0;

    sget v1, Le2/g0;->t:I

    const-string v1, "Count of random symbols"

    .line 3
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Le2/s;

    sget v1, Le2/s;->p:I

    .line 5
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0xe6e3d6

    const/16 v1, 0x10

    if-eqz p1, :cond_0

    new-array p1, v1, [C

    fill-array-data p1, :array_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [C

    fill-array-data p1, :array_1

    .line 6
    :goto_0
    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/NativeMemory;->write(I[C)I

    :cond_1
    return-void

    .line 7
    :pswitch_3
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Le2/o;

    sget v1, Le2/o;->q:I

    const-string v1, "View from"

    .line 8
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 9
    :pswitch_4
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Le2/j;

    sget v1, Le2/j;->x:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 10
    invoke-static {v1, p1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 11
    :pswitch_5
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Le2/b;

    sget v1, Le2/b;->J:I

    const/16 v1, 0x9

    const-string v2, "fog"

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Le2/b;->U(IZLjava/lang/String;)V

    return-void

    .line 13
    :pswitch_6
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Ld2/o;

    sget v1, Ld2/o;->t:I

    const-string v1, "CPS"

    .line 14
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

    .line 15
    :pswitch_7
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Ld2/i;

    sget v1, Ld2/i;->u:I

    const-string v1, "Shadow radius"

    .line 16
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 17
    :pswitch_8
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Ld2/f;

    sget v2, Ld2/f;->u:I

    .line 18
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 19
    :pswitch_9
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Ld2/b;

    const-string v1, "Angle (horizontal)"

    .line 20
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Li2/c;->setVisibility(Z)V

    const-string v1, "Angle (vertical)"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 21
    :goto_1
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Lh2/e;

    sget v1, Lh2/e;->p:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 22
    invoke-static {v1, p1}, Ldev/virus/variable/launcher/api/Api;->sendEnabledStatus(IZ)V

    const-string v1, "Close delay"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Li2/c;->setVisibility(Z)V

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object p1

    check-cast p1, Li2/d;

    const-string v0, "current"

    invoke-virtual {p1, v0}, Li2/d;->A(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ldev/virus/variable/launcher/api/Api;->sendFloatValue(IF)V

    return-void

    :pswitch_a
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Lh2/c;

    const-string v1, "CPS"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Li2/c;->setVisibility(Z)V

    const-string v1, "Min CPS"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Li2/c;->setVisibility(Z)V

    const-string v1, "Max CPS"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    :pswitch_b
    iget-object v0, p0, Ld2/a;->b:Lc2/b;

    check-cast v0, Ld2/b;

    const-string v1, "Jitter yaw"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Li2/c;->setVisibility(Z)V

    const-string v1, "Jitter pitch"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :array_0
    .array-data 2
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
        0x0s
        0xbfs
    .end array-data

    :array_1
    .array-data 2
        0x80s
        0xeds
        0xcs
        0x1as
        0x80s
        0xeds
        0xds
        0x4as
        0x80s
        0xeds
        0xes
        0x2as
        0x80s
        0xeds
        0xfs
        0xas
    .end array-data
.end method
