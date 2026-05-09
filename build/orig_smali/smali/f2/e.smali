.class public final synthetic Lf2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/b$a;


# instance fields
.field public final synthetic a:Lf2/f;


# direct methods
.method public synthetic constructor <init>(Lf2/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/e;->a:Lf2/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf2/e;->a:Lf2/f;

    const-string v1, "Velocity"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    const-string v1, "Up"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Down"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void
.end method
