.class public final Lb3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/b;


# instance fields
.field public final synthetic a:I

.field public b:Lb3/b;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    iput p1, p0, Lb3/a;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lb3/a;-><init>(Lb3/b;I)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, v0, v1}, Lb3/a;-><init>(Lb3/b;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lb3/b;I)V
    .registers 3

    .line 3
    iput p2, p0, Lb3/a;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Lb3/a;->b:Lb3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget v0, p0, Lb3/a;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb3/a;->b:Lb3/b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lb3/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    .line 2
    :goto_1
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lb3/a;->b:Lb3/b;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lb3/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
