.class public final enum Lk1/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lh1/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk1/d;",
        ">;",
        "Lh1/h;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lk1/d;

.field public static final enum d:Lk1/d;


# instance fields
.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lk1/d;

    invoke-direct {v0}, Lk1/d;-><init>()V

    sput-object v0, Lk1/d;->d:Lk1/d;

    const/4 v1, 0x1

    new-array v1, v1, [Lk1/d;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lk1/d;->c:[Lk1/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const-string v0, "OG_ACTION_DIALOG"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const v0, 0x1332b3a

    iput v0, p0, Lk1/d;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk1/d;
    .locals 1

    const-class v0, Lk1/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk1/d;

    return-object p0
.end method

.method public static values()[Lk1/d;
    .locals 1

    sget-object v0, Lk1/d;->c:[Lk1/d;

    invoke-virtual {v0}, [Lk1/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk1/d;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lk1/d;->b:I

    return v0
.end method
