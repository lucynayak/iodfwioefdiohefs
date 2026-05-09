.class public final Le3/h;
.super La3/d;
.source "SourceFile"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, La3/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    return-void
.end method
