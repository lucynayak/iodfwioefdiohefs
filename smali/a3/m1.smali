.class public final enum La3/m1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La3/m1;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[La3/m1;

.field public static final enum d:La3/m1;

.field public static final enum e:La3/m1;

.field public static final enum f:La3/m1;

.field public static final enum g:La3/m1;


# instance fields
.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, La3/m1;

    const-string v1, "GET"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, La3/m1;-><init>(Ljava/lang/String;II)V

    sput-object v0, La3/m1;->d:La3/m1;

    new-instance v1, La3/m1;

    const-string v4, "IS"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, La3/m1;-><init>(Ljava/lang/String;II)V

    sput-object v1, La3/m1;->e:La3/m1;

    new-instance v4, La3/m1;

    const-string v7, "SET"

    invoke-direct {v4, v7, v6, v3}, La3/m1;-><init>(Ljava/lang/String;II)V

    sput-object v4, La3/m1;->g:La3/m1;

    new-instance v7, La3/m1;

    const-string v8, "NONE"

    invoke-direct {v7, v8, v3, v2}, La3/m1;-><init>(Ljava/lang/String;II)V

    sput-object v7, La3/m1;->f:La3/m1;

    const/4 v8, 0x4

    new-array v8, v8, [La3/m1;

    aput-object v0, v8, v2

    aput-object v1, v8, v5

    aput-object v4, v8, v6

    aput-object v7, v8, v3

    sput-object v8, La3/m1;->c:[La3/m1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, La3/m1;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La3/m1;
    .registers 2

    const-class v0, La3/m1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La3/m1;

    return-object p0
.end method

.method public static values()[La3/m1;
    .registers 1

    sget-object v0, La3/m1;->c:[La3/m1;

    invoke-virtual {v0}, [La3/m1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La3/m1;

    return-object v0
.end method
