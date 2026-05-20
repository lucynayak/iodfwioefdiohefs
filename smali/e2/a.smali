.class public final synthetic Le2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/e$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le2/b;


# direct methods
.method public synthetic constructor <init>(Le2/b;I)V
    .registers 3

    iput p2, p0, Le2/a;->a:I

    iput-object p1, p0, Le2/a;->b:Le2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    iget v0, p0, Le2/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Le2/a;->b:Le2/b;

    const-string v1, "Cycle speed"

    .line 1
    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Le2/a;->b:Le2/b;

    const/16 v1, 0xa

    const-string v2, "clouds"

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Le2/b;->U(IZLjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
