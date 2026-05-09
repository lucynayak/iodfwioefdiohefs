.class public final synthetic Ld2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/b$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc2/b;


# direct methods
.method public synthetic constructor <init>(Lc2/b;I)V
    .locals 0

    iput p2, p0, Ld2/h;->a:I

    iput-object p1, p0, Ld2/h;->b:Lc2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Ld2/h;->a:I

    const/4 v1, 0x1

    const-string v2, "Distance"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Ld2/h;->b:Lc2/b;

    check-cast v0, Lf2/d;

    sget v2, Lf2/d;->s:I

    const-string v2, "Speed"

    .line 1
    invoke-virtual {v0, v2}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    const-string v2, "Creative"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Ld2/h;->b:Lc2/b;

    check-cast v0, Le2/n;

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Le2/n;->G()V

    :cond_0
    return-void

    .line 6
    :pswitch_2
    iget-object v0, p0, Ld2/h;->b:Lc2/b;

    check-cast v0, Ld2/i;

    .line 7
    invoke-virtual {v0, v2}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    const-string v2, "Pointed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 8
    :goto_0
    iget-object v0, p0, Ld2/h;->b:Lc2/b;

    check-cast v0, Lh2/d;

    sget v1, Lh2/d;->w:I

    .line 9
    invoke-virtual {v0, v2}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
