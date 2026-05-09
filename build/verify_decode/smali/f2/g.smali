.class public final synthetic Lf2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/b$a;


# instance fields
.field public final synthetic a:Lf2/h;


# direct methods
.method public synthetic constructor <init>(Lf2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/g;->a:Lf2/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf2/g;->a:Lf2/h;

    const-string v1, "Inertia"

    invoke-virtual {v0, v1}, Lc2/b;->getSetting(Ljava/lang/String;)Li2/c;

    move-result-object v0

    const-string v1, "Teleport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Li2/c;->setVisibility(Z)V

    return-void
.end method
