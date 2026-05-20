.class public final enum Lf1/f$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf1/f$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Lf1/f$c;

.field public static final enum c:Lf1/f$c;

.field public static final enum d:Lf1/f$c;

.field public static final enum e:Lf1/f$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lf1/f$c;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf1/f$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf1/f$c;->e:Lf1/f$c;

    new-instance v1, Lf1/f$c;

    const-string v3, "SERVER_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lf1/f$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf1/f$c;->d:Lf1/f$c;

    new-instance v3, Lf1/f$c;

    const-string v5, "NO_CONNECTIVITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lf1/f$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lf1/f$c;->c:Lf1/f$c;

    new-instance v5, Lf1/f$c;

    const-string v7, "UNKNOWN_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lf1/f$c;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x4

    new-array v7, v7, [Lf1/f$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lf1/f$c;->b:[Lf1/f$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf1/f$c;
    .registers 2

    const-class v0, Lf1/f$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf1/f$c;

    return-object p0
.end method

.method public static values()[Lf1/f$c;
    .registers 1

    sget-object v0, Lf1/f$c;->b:[Lf1/f$c;

    invoke-virtual {v0}, [Lf1/f$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf1/f$c;

    return-object v0
.end method
