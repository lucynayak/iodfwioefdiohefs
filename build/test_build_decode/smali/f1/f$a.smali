.class public final Lf1/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le1/a;)V
    .locals 2

    .line 1
    iget-object p1, p1, Le1/a;->h:Ljava/lang/String;

    .line 2
    sget-object v0, Le1/r;->a:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lr0/e;->k()V

    sget-object v0, Le1/r;->d:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lh1/x;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lf1/f$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lf1/f$a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lh1/x;->r(Ljava/lang/String;)Z

    iput-object v0, p0, Lf1/f$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lf1/f$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lf1/f$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lf1/f$a;

    iget-object v0, p1, Lf1/f$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lf1/f$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lh1/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lf1/f$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lf1/f$a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lh1/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lf1/f$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lf1/f$a;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method
