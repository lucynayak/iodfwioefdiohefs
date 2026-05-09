.class public final enum Le1/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le1/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Le1/e;

.field public static final enum d:Le1/e;

.field public static final enum e:Le1/e;

.field public static final enum f:Le1/e;

.field public static final enum g:Le1/e;

.field public static final enum h:Le1/e;


# instance fields
.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Le1/e;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le1/e;-><init>(Ljava/lang/String;IZ)V

    new-instance v1, Le1/e;

    const-string v3, "FACEBOOK_APPLICATION_WEB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Le1/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Le1/e;->g:Le1/e;

    new-instance v3, Le1/e;

    const-string v5, "FACEBOOK_APPLICATION_NATIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Le1/e;-><init>(Ljava/lang/String;IZ)V

    new-instance v5, Le1/e;

    const-string v7, "FACEBOOK_APPLICATION_SERVICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Le1/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Le1/e;->f:Le1/e;

    new-instance v7, Le1/e;

    const-string v9, "WEB_VIEW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Le1/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Le1/e;->h:Le1/e;

    new-instance v9, Le1/e;

    const-string v11, "CUSTOM_TAB"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Le1/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Le1/e;->d:Le1/e;

    new-instance v11, Le1/e;

    const-string v13, "TEST_USER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v4}, Le1/e;-><init>(Ljava/lang/String;IZ)V

    new-instance v13, Le1/e;

    const-string v15, "CLIENT_TOKEN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v4}, Le1/e;-><init>(Ljava/lang/String;IZ)V

    new-instance v15, Le1/e;

    const-string v14, "DEVICE_AUTH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v4}, Le1/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Le1/e;->e:Le1/e;

    const/16 v14, 0x9

    new-array v14, v14, [Le1/e;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Le1/e;->c:[Le1/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Le1/e;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le1/e;
    .locals 1

    const-class v0, Le1/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le1/e;

    return-object p0
.end method

.method public static values()[Le1/e;
    .locals 1

    sget-object v0, Le1/e;->c:[Le1/e;

    invoke-virtual {v0}, [Le1/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le1/e;

    return-object v0
.end method
