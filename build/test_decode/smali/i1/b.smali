.class public final enum Li1/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Li1/b;

.field public static final enum d:Li1/b;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Li1/b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Li1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Li1/b;

    const-string v3, "ONLY_ME"

    const/4 v4, 0x1

    const-string v5, "only_me"

    invoke-direct {v1, v3, v4, v5}, Li1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Li1/b;

    const-string v5, "FRIENDS"

    const/4 v6, 0x2

    const-string v7, "friends"

    invoke-direct {v3, v5, v6, v7}, Li1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Li1/b;->d:Li1/b;

    new-instance v5, Li1/b;

    const-string v7, "EVERYONE"

    const/4 v8, 0x3

    const-string v9, "everyone"

    invoke-direct {v5, v7, v8, v9}, Li1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v7, 0x4

    new-array v7, v7, [Li1/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Li1/b;->c:[Li1/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Li1/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li1/b;
    .locals 1

    const-class v0, Li1/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li1/b;

    return-object p0
.end method

.method public static values()[Li1/b;
    .locals 1

    sget-object v0, Li1/b;->c:[Li1/b;

    invoke-virtual {v0}, [Li1/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li1/b;

    return-object v0
.end method
