.class final enum Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/log/Redactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RedactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

.field public static final enum Email:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

.field public static final enum Password:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

.field public static final enum String:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    const-string v1, "Email"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->Email:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    new-instance v1, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    const-string v3, "Password"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->Password:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    new-instance v3, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    const-string v5, "String"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->String:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->$VALUES:[Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->$VALUES:[Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    return-object v0
.end method
