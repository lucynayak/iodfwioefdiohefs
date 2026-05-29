.class public final enum Lk1/g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lh1/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk1/g;",
        ">;",
        "Lh1/h;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lk1/g;

.field public static final enum d:Lk1/g;

.field public static final enum e:Lk1/g;

.field public static final enum f:Lk1/g;

.field public static final enum g:Lk1/g;

.field public static final enum h:Lk1/g;

.field public static final enum i:Lk1/g;


# instance fields
.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    new-instance v0, Lk1/g;

    const-string v1, "SHARE_DIALOG"

    const/4 v2, 0x0

    const v3, 0x1332b3a

    invoke-direct {v0, v1, v2, v3}, Lk1/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk1/g;->h:Lk1/g;

    new-instance v1, Lk1/g;

    const-string v3, "PHOTOS"

    const/4 v4, 0x1

    const v5, 0x13350ac

    invoke-direct {v1, v3, v4, v5}, Lk1/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lk1/g;->g:Lk1/g;

    new-instance v3, Lk1/g;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    const v7, 0x13353e4

    invoke-direct {v3, v5, v6, v7}, Lk1/g;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lk1/g;->i:Lk1/g;

    new-instance v5, Lk1/g;

    const-string v7, "MULTIMEDIA"

    const/4 v8, 0x3

    const v9, 0x1339f47

    invoke-direct {v5, v7, v8, v9}, Lk1/g;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lk1/g;->f:Lk1/g;

    new-instance v7, Lk1/g;

    const-string v10, "HASHTAG"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v9}, Lk1/g;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lk1/g;->d:Lk1/g;

    new-instance v10, Lk1/g;

    const-string v12, "LINK_SHARE_QUOTES"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v9}, Lk1/g;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lk1/g;->e:Lk1/g;

    const/4 v9, 0x6

    new-array v9, v9, [Lk1/g;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v11

    aput-object v10, v9, v13

    sput-object v9, Lk1/g;->c:[Lk1/g;

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

    iput p3, p0, Lk1/g;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk1/g;
    .registers 2

    const-class v0, Lk1/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk1/g;

    return-object p0
.end method

.method public static values()[Lk1/g;
    .registers 1

    sget-object v0, Lk1/g;->c:[Lk1/g;

    invoke-virtual {v0}, [Lk1/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk1/g;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "com.facebook.platform.action.request.FEED_DIALOG"

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lk1/g;->b:I

    return v0
.end method
