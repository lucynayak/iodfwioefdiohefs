.class public final enum Le1/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le1/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Le1/z;

.field public static final enum c:Le1/z;

.field public static final enum d:Le1/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Le1/z;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le1/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le1/z;->c:Le1/z;

    new-instance v1, Le1/z;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le1/z;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le1/z;->d:Le1/z;

    new-instance v3, Le1/z;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le1/z;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Le1/z;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Le1/z;->b:[Le1/z;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le1/z;
    .locals 1

    const-class v0, Le1/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le1/z;

    return-object p0
.end method

.method public static values()[Le1/z;
    .locals 1

    sget-object v0, Le1/z;->b:[Le1/z;

    invoke-virtual {v0}, [Le1/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le1/z;

    return-object v0
.end method
