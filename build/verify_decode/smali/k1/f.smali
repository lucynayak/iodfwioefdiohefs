.class public final Lk1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/f$a;,
        Lk1/f$b;
    }
.end annotation


# static fields
.field public static a:Lk1/f$a;

.field public static b:Lk1/f$b;


# direct methods
.method public static a(Ll1/a;Lk1/f$a;)V
    .locals 0

    check-cast p0, Ll1/c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object p0, p0, Ll1/c;->i:Landroid/net/Uri;

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0}, Lh1/x;->t(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Le1/m;

    const-string p1, "Image Url must be an http:// or https:// url"

    invoke-direct {p0, p1}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
