.class public final Lm1/a$a;
.super Lh1/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh1/i<",
        "Ll1/a;",
        "Lj1/a;",
        ">.a;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lm1/a;


# direct methods
.method public constructor <init>(Lm1/a;)V
    .locals 0

    iput-object p1, p0, Lm1/a$a;->a:Lm1/a;

    invoke-direct {p0}, Lh1/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ll1/a;

    instance-of v0, p1, Ll1/c;

    if-nez v0, :cond_1

    instance-of p1, p1, Lk1/h;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b(Ljava/lang/Object;)Lh1/a;
    .locals 8

    check-cast p1, Ll1/a;

    .line 1
    iget-object v0, p0, Lm1/a$a;->a:Lm1/a;

    .line 2
    invoke-virtual {v0}, Lh1/i;->a()Landroid/app/Activity;

    move-result-object v1

    .line 3
    sget-object v2, Lm1/a$b;->d:Lm1/a$b;

    invoke-static {v0, v1, p1, v2}, Lm1/a;->b(Lm1/a;Landroid/content/Context;Ll1/a;Lm1/a$b;)V

    iget-object v0, p0, Lm1/a$a;->a:Lm1/a;

    invoke-virtual {v0}, Lm1/a;->d()Lh1/a;

    move-result-object v0

    instance-of v1, p1, Ll1/c;

    const-string v2, "description"

    const-string v3, "name"

    const-string v4, "picture"

    const-string v5, "link"

    if-eqz v1, :cond_3

    check-cast p1, Ll1/c;

    .line 4
    sget-object v1, Lk1/f;->b:Lk1/f$b;

    const/4 v6, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lk1/f$b;

    invoke-direct {v1}, Lk1/f$b;-><init>()V

    sput-object v1, Lk1/f;->b:Lk1/f$b;

    :cond_0
    sget-object v1, Lk1/f;->b:Lk1/f$b;

    .line 5
    invoke-static {p1, v1}, Lk1/f;->a(Ll1/a;Lk1/f$a;)V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget-object v7, p1, Ll1/c;->h:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3, v7}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v3, p1, Ll1/c;->g:Ljava/lang/String;

    .line 10
    invoke-static {v1, v2, v3}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p1, Ll1/a;->b:Landroid/net/Uri;

    if-nez v2, :cond_1

    move-object v2, v6

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    :goto_0
    invoke-static {v1, v5, v2}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Ll1/c;->i:Landroid/net/Uri;

    if-nez p1, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 16
    :goto_1
    invoke-static {v1, v4, v6}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_3
    check-cast p1, Lk1/h;

    .line 18
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    iget-object v6, p1, Lk1/h;->m:Ljava/lang/String;

    const-string v7, "to"

    .line 20
    invoke-static {v1, v7, v6}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v6, p1, Lk1/h;->g:Ljava/lang/String;

    .line 22
    invoke-static {v1, v5, v6}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v5, p1, Lk1/h;->l:Ljava/lang/String;

    .line 24
    invoke-static {v1, v4, v5}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v4, p1, Lk1/h;->k:Ljava/lang/String;

    const-string v5, "source"

    .line 26
    invoke-static {v1, v5, v4}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v4, p1, Lk1/h;->j:Ljava/lang/String;

    .line 28
    invoke-static {v1, v3, v4}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v3, p1, Lk1/h;->h:Ljava/lang/String;

    const-string v4, "caption"

    .line 30
    invoke-static {v1, v4, v3}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p1, Lk1/h;->i:Ljava/lang/String;

    .line 32
    invoke-static {v1, v2, p1}, Lh1/x;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string p1, "feed"

    .line 33
    invoke-static {v0, p1, v1}, La3/r0;->H(Lh1/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
