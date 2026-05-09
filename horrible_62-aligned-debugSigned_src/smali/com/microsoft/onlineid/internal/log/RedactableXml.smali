.class public Lcom/microsoft/onlineid/internal/log/RedactableXml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/onlineid/internal/log/IRedactable;


# static fields
.field private static final GenericNodePattern:Ljava/util/regex/Pattern;


# instance fields
.field private final _tagsToKeep:[Ljava/lang/String;

.field private final _unredactedXml:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "<([^<> ]+)([^<>]*)>([^<>]+)</\\1[^>]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->GenericNodePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->_unredactedXml:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->_tagsToKeep:[Ljava/lang/String;

    return-void
.end method

.method private isInApprovedList(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->_tagsToKeep:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method


# virtual methods
.method public getRedactedString()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->GenericNodePattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->_unredactedXml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/onlineid/internal/log/RedactableXml;->isInApprovedList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "<$1$2>"

    .line 1
    invoke-static {v2}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    .line 2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/log/Redactor;->redactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</$1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnredactedString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->_unredactedXml:Ljava/lang/String;

    return-object v0
.end method
