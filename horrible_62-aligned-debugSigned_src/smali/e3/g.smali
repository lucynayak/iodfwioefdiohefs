.class public final enum Le3/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le3/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Le3/g;

.field public static final enum d:Le3/g;

.field public static final enum e:Le3/g;

.field public static final enum f:Le3/g;

.field public static final enum g:Le3/g;


# instance fields
.field public b:Le3/g$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Le3/g;

    const-string v1, "FULL"

    const/4 v2, 0x0

    const-string v3, "yyyy-MM-dd HH:mm:ss.S z"

    invoke-direct {v0, v1, v2, v3}, Le3/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le3/g;->d:Le3/g;

    new-instance v1, Le3/g;

    const-string v3, "LONG"

    const/4 v4, 0x1

    const-string v5, "yyyy-MM-dd HH:mm:ss z"

    invoke-direct {v1, v3, v4, v5}, Le3/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le3/g;->e:Le3/g;

    new-instance v3, Le3/g;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    const-string v7, "yyyy-MM-dd z"

    invoke-direct {v3, v5, v6, v7}, Le3/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Le3/g;->f:Le3/g;

    new-instance v5, Le3/g;

    const-string v7, "SHORT"

    const/4 v8, 0x3

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v5, v7, v8, v9}, Le3/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Le3/g;->g:Le3/g;

    const/4 v7, 0x4

    new-array v7, v7, [Le3/g;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Le3/g;->c:[Le3/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Le3/g$a;

    invoke-direct {p1, p3}, Le3/g$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le3/g;->b:Le3/g$a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le3/g;
    .registers 2

    const-class v0, Le3/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le3/g;

    return-object p0
.end method

.method public static values()[Le3/g;
    .registers 1

    sget-object v0, Le3/g;->c:[Le3/g;

    invoke-virtual {v0}, [Le3/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le3/g;

    return-object v0
.end method
