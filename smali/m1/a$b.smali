.class public final enum Lm1/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm1/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Lm1/a$b;

.field public static final enum c:Lm1/a$b;

.field public static final enum d:Lm1/a$b;

.field public static final enum e:Lm1/a$b;

.field public static final enum f:Lm1/a$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lm1/a$b;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm1/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm1/a$b;->c:Lm1/a$b;

    new-instance v1, Lm1/a$b;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lm1/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm1/a$b;->e:Lm1/a$b;

    new-instance v3, Lm1/a$b;

    const-string v5, "WEB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lm1/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm1/a$b;->f:Lm1/a$b;

    new-instance v5, Lm1/a$b;

    const-string v7, "FEED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lm1/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lm1/a$b;->d:Lm1/a$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lm1/a$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lm1/a$b;->b:[Lm1/a$b;

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

.method public static valueOf(Ljava/lang/String;)Lm1/a$b;
    .registers 2

    const-class v0, Lm1/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm1/a$b;

    return-object p0
.end method

.method public static values()[Lm1/a$b;
    .registers 1

    sget-object v0, Lm1/a$b;->b:[Lm1/a$b;

    invoke-virtual {v0}, [Lm1/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm1/a$b;

    return-object v0
.end method
