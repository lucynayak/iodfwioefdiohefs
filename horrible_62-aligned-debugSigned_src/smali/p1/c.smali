.class public abstract enum Lp1/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lp1/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp1/c;",
        ">;",
        "Lp1/d;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Lp1/c;

.field public static final enum c:Lp1/c$a;

.field public static final enum d:Lp1/c$e;

.field public static final enum e:Lp1/c$d;

.field public static final enum f:Lp1/c$b;

.field public static final enum g:Lp1/c$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lp1/c$a;

    invoke-direct {v0}, Lp1/c$a;-><init>()V

    sput-object v0, Lp1/c;->c:Lp1/c$a;

    new-instance v1, Lp1/c$b;

    const/4 v2, 0x1

    invoke-direct {v1}, Lp1/c$b;-><init>()V

    sput-object v1, Lp1/c;->f:Lp1/c$b;

    new-instance v3, Lp1/c$c;

    const/4 v4, 0x2

    invoke-direct {v3}, Lp1/c$c;-><init>()V

    sput-object v3, Lp1/c;->g:Lp1/c$c;

    new-instance v5, Lp1/c$d;

    const/4 v6, 0x3

    invoke-direct {v5}, Lp1/c$d;-><init>()V

    sput-object v5, Lp1/c;->e:Lp1/c$d;

    new-instance v7, Lp1/c$e;

    const/4 v8, 0x4

    invoke-direct {v7}, Lp1/c$e;-><init>()V

    sput-object v7, Lp1/c;->d:Lp1/c$e;

    const/4 v9, 0x5

    new-array v9, v9, [Lp1/c;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    aput-object v1, v9, v2

    aput-object v3, v9, v4

    aput-object v5, v9, v6

    aput-object v7, v9, v8

    sput-object v9, Lp1/c;->b:[Lp1/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILp1/c$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int/lit8 v1, v1, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    .line 3
    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    :goto_4
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lp1/c;
    .registers 2

    const-class v0, Lp1/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp1/c;

    return-object p0
.end method

.method public static values()[Lp1/c;
    .registers 1

    sget-object v0, Lp1/c;->b:[Lp1/c;

    invoke-virtual {v0}, [Lp1/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp1/c;

    return-object v0
.end method
