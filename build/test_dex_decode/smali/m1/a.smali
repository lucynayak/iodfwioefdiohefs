.class public final Lm1/a;
.super Lh1/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm1/a$a;,
        Lm1/a$b;,
        Lm1/a$c;,
        Lm1/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh1/i<",
        "Ll1/a;",
        "Lj1/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:I


# instance fields
.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, La/c;->a(I)I

    move-result v0

    sput v0, Lm1/a;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    sget v0, Lm1/a;->f:I

    invoke-direct {p0, p1, v0}, Lh1/i;-><init>(Landroid/app/Activity;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm1/a;->e:Z

    new-instance p1, Lk1/j;

    invoke-direct {p1, v0}, Lk1/j;-><init>(I)V

    invoke-static {v0, p1}, Lh1/f;->a(ILh1/f$a;)V

    return-void
.end method

.method public static b(Lm1/a;Landroid/content/Context;Ll1/a;Lm1/a$b;)V
    .locals 1

    iget-boolean p0, p0, Lm1/a;->e:Z

    if-eqz p0, :cond_0

    sget-object p3, Lm1/a$b;->c:Lm1/a$b;

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string p3, "unknown"

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    move-object p0, p3

    goto :goto_0

    :cond_1
    const-string p0, "web"

    goto :goto_0

    :cond_2
    const-string p0, "native"

    goto :goto_0

    :cond_3
    const-string p0, "automatic"

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lm1/a;->e(Ljava/lang/Class;)Lh1/h;

    move-result-object p2

    sget-object v0, Lk1/g;->h:Lk1/g;

    if-ne p2, v0, :cond_4

    const-string p3, "status"

    goto :goto_1

    :cond_4
    sget-object v0, Lk1/g;->g:Lk1/g;

    if-ne p2, v0, :cond_5

    const-string p3, "photo"

    goto :goto_1

    :cond_5
    sget-object v0, Lk1/g;->i:Lk1/g;

    if-ne p2, v0, :cond_6

    const-string p3, "video"

    goto :goto_1

    :cond_6
    sget-object v0, Lk1/d;->d:Lk1/d;

    if-ne p2, v0, :cond_7

    const-string p3, "open_graph"

    :cond_7
    :goto_1
    invoke-static {p1}, Lf1/f;->h(Landroid/content/Context;)Lf1/f;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fb_share_dialog_show"

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "fb_share_dialog_content_type"

    invoke-virtual {p2, p0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lf1/f;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static c(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ll1/a;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Ll1/c;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ll1/g;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Ljava/lang/Class;)Lh1/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ll1/a;",
            ">;)",
            "Lh1/h;"
        }
    .end annotation

    const-class v0, Ll1/c;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lk1/g;->h:Lk1/g;

    return-object p0

    :cond_0
    const-class v0, Ll1/k;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lk1/g;->g:Lk1/g;

    return-object p0

    :cond_1
    const-class v0, Ll1/m;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lk1/g;->i:Lk1/g;

    return-object p0

    :cond_2
    const-class v0, Ll1/g;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lk1/d;->d:Lk1/d;

    return-object p0

    :cond_3
    const-class v0, Ll1/e;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lk1/g;->f:Lk1/g;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lh1/a;
    .locals 2

    new-instance v0, Lh1/a;

    .line 1
    iget v1, p0, Lh1/i;->c:I

    .line 2
    invoke-direct {v0, v1}, Lh1/a;-><init>(I)V

    return-object v0
.end method
