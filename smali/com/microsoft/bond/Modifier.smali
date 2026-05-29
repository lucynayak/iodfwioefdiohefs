.class public final enum Lcom/microsoft/bond/Modifier;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/bond/Modifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/bond/Modifier;

.field public static final enum Optional:Lcom/microsoft/bond/Modifier;

.field public static final enum Required:Lcom/microsoft/bond/Modifier;

.field public static final enum RequiredOptional:Lcom/microsoft/bond/Modifier;

.field public static final enum __INVALID_ENUM_VALUE:Lcom/microsoft/bond/Modifier;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/microsoft/bond/Modifier;

    const-string v1, "Optional"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/bond/Modifier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/Modifier;->Optional:Lcom/microsoft/bond/Modifier;

    new-instance v1, Lcom/microsoft/bond/Modifier;

    const-string v3, "Required"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/microsoft/bond/Modifier;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    new-instance v3, Lcom/microsoft/bond/Modifier;

    const-string v5, "RequiredOptional"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/microsoft/bond/Modifier;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/bond/Modifier;->RequiredOptional:Lcom/microsoft/bond/Modifier;

    new-instance v5, Lcom/microsoft/bond/Modifier;

    const-string v7, "__INVALID_ENUM_VALUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/microsoft/bond/Modifier;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/bond/Modifier;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/Modifier;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/bond/Modifier;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/bond/Modifier;->$VALUES:[Lcom/microsoft/bond/Modifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/microsoft/bond/Modifier;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/microsoft/bond/Modifier;
    .registers 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/microsoft/bond/Modifier;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/Modifier;

    return-object p0

    :cond_0
    sget-object p0, Lcom/microsoft/bond/Modifier;->RequiredOptional:Lcom/microsoft/bond/Modifier;

    return-object p0

    :cond_1
    sget-object p0, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    return-object p0

    :cond_2
    sget-object p0, Lcom/microsoft/bond/Modifier;->Optional:Lcom/microsoft/bond/Modifier;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/bond/Modifier;
    .registers 2

    const-class v0, Lcom/microsoft/bond/Modifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/bond/Modifier;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/bond/Modifier;
    .registers 1

    sget-object v0, Lcom/microsoft/bond/Modifier;->$VALUES:[Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0}, [Lcom/microsoft/bond/Modifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/bond/Modifier;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/microsoft/bond/Modifier;->value:I

    return v0
.end method
