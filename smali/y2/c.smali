.class public final enum Ly2/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly2/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Ly2/c;

.field public static final enum c:Ly2/c;

.field public static final enum d:Ly2/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Ly2/c;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly2/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly2/c;->c:Ly2/c;

    new-instance v1, Ly2/c;

    const-string v3, "PROPERTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly2/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly2/c;->d:Ly2/c;

    const/4 v3, 0x2

    new-array v3, v3, [Ly2/c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ly2/c;->b:[Ly2/c;

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

.method public static valueOf(Ljava/lang/String;)Ly2/c;
    .registers 2

    const-class v0, Ly2/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly2/c;

    return-object p0
.end method

.method public static values()[Ly2/c;
    .registers 1

    sget-object v0, Ly2/c;->b:[Ly2/c;

    invoke-virtual {v0}, [Ly2/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly2/c;

    return-object v0
.end method
