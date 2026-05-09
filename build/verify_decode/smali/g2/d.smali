.class public final synthetic Lg2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/e$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg2/e;


# direct methods
.method public synthetic constructor <init>(Lg2/e;I)V
    .locals 0

    iput p2, p0, Lg2/d;->a:I

    iput-object p1, p0, Lg2/d;->b:Lg2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget v0, p0, Lg2/d;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg2/d;->b:Lg2/e;

    const-string v2, "Device"

    invoke-virtual {v0, v2}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Li2/c;->setVisibility(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg2/d;->b:Lg2/e;

    const-string v2, "Model"

    invoke-virtual {v0, v2}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Li2/c;->setVisibility(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
