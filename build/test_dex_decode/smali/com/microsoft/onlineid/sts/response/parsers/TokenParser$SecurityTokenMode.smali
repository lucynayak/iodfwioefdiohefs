.class public final enum Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityTokenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

.field public static final enum NgcAuthentication:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

.field public static final enum ServiceRequest:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    const-string v1, "ServiceRequest"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->ServiceRequest:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    new-instance v1, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    const-string v3, "NgcAuthentication"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->NgcAuthentication:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->$VALUES:[Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;
    .locals 1

    const-class v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->$VALUES:[Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    return-object v0
.end method
