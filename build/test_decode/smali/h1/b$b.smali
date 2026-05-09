.class public final enum Lh1/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh1/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Lh1/b$b;

.field public static final enum c:Lh1/b$b;

.field public static final enum d:Lh1/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lh1/b$b;

    const-string v1, "MOBILE_INSTALL_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh1/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh1/b$b;->d:Lh1/b$b;

    new-instance v1, Lh1/b$b;

    const-string v3, "CUSTOM_APP_EVENTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lh1/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh1/b$b;->c:Lh1/b$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lh1/b$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lh1/b$b;->b:[Lh1/b$b;

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

.method public static valueOf(Ljava/lang/String;)Lh1/b$b;
    .locals 1

    const-class v0, Lh1/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh1/b$b;

    return-object p0
.end method

.method public static values()[Lh1/b$b;
    .locals 1

    sget-object v0, Lh1/b$b;->b:[Lh1/b$b;

    invoke-virtual {v0}, [Lh1/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh1/b$b;

    return-object v0
.end method
