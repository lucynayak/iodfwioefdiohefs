.class public final enum Li1/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li1/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:[Li1/m;

.field public static final enum f:Li1/m;

.field public static final enum g:Li1/m;


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v6, Li1/m;

    const-string v1, "NATIVE_WITH_FALLBACK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Li1/m;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v6, Li1/m;->f:Li1/m;

    new-instance v0, Li1/m;

    const-string v8, "NATIVE_ONLY"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Li1/m;-><init>(Ljava/lang/String;IZZZ)V

    new-instance v1, Li1/m;

    const-string v14, "WEB_ONLY"

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Li1/m;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v1, Li1/m;->g:Li1/m;

    new-instance v2, Li1/m;

    const-string v8, "DEVICE_AUTH"

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Li1/m;-><init>(Ljava/lang/String;IZZZ)V

    const/4 v3, 0x4

    new-array v3, v3, [Li1/m;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    sput-object v3, Li1/m;->e:[Li1/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Li1/m;->c:Z

    iput-boolean p4, p0, Li1/m;->d:Z

    iput-boolean p5, p0, Li1/m;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li1/m;
    .locals 1

    const-class v0, Li1/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li1/m;

    return-object p0
.end method

.method public static values()[Li1/m;
    .locals 1

    sget-object v0, Li1/m;->e:[Li1/m;

    invoke-virtual {v0}, [Li1/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li1/m;

    return-object v0
.end method
