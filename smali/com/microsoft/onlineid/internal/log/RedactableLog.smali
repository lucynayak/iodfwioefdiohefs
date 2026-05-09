.class public Lcom/microsoft/onlineid/internal/log/RedactableLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/internal/log/IRedactable;


# static fields
.field private static final RedactedPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final _patternsToRedact:[Ljava/util/regex/Pattern;

.field private final _unredactedString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "*(%d)*"

    const-string v1, "*"

    const-string v2, "\\*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, "\\("

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, "\\)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%d"

    const-string v2, "\\d+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->RedactedPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/util/regex/Pattern;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->_unredactedString:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->_patternsToRedact:[Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public getRedactedString()Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->_unredactedString:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->_patternsToRedact:[Ljava/util/regex/Pattern;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/microsoft/onlineid/internal/log/RedactableLog;->RedactedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Lcom/microsoft/onlineid/internal/log/Redactor;->redactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getUnredactedString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->_unredactedString:Ljava/lang/String;

    return-object v0
.end method
