.class public final enum Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ActivityResultSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

.field public static final enum Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

.field public static final enum Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;


# instance fields
.field private final _value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    const-string v1, "Account"

    const/4 v2, 0x0

    const-string v3, "account"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    new-instance v1, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    const-string v3, "Ticket"

    const/4 v4, 0x1

    const-string v5, "ticket"

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->$VALUES:[Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->_value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    .locals 5

    invoke-static {}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->values()[Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    .locals 1

    const-class v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->$VALUES:[Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->_value:Ljava/lang/String;

    return-object v0
.end method
