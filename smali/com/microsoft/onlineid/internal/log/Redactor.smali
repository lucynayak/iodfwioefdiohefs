.class public Lcom/microsoft/onlineid/internal/log/Redactor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;
    }
.end annotation


# static fields
.field public static final RedactedStringEmptyReplacement:Ljava/lang/String; = ""

.field public static final RedactedStringNullReplacement:Ljava/lang/String; = "(null)"

.field public static final RedactedStringReplacement:Ljava/lang/String; = "*(%d)*"

.field public static final RedactedStringStarReplacement:Ljava/lang/String; = "***"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doRedact(Ljava/lang/String;Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_0

    const-string p0, "(null)"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Redactor$1;->$SwitchMap$com$microsoft$onlineid$internal$log$Redactor$RedactionType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "*(%d)*"

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const-string p0, "***"

    return-object p0

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static redactEmail(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->Email:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/log/Redactor;->doRedact(Ljava/lang/String;Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static redactPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->Password:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/log/Redactor;->doRedact(Ljava/lang/String;Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static redactString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->String:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/log/Redactor;->doRedact(Ljava/lang/String;Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldRedact()Z
    .registers 1

    invoke-static {}, Lcom/microsoft/onlineid/internal/log/Logger;->shouldRedact()Z

    move-result v0

    return v0
.end method
