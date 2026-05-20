.class public final Lcom/microsoft/bond/internal/StringHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UTF16:Ljava/nio/charset/Charset;

.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/bond/internal/StringHelper;->UTF8:Ljava/nio/charset/Charset;

    const-string v0, "utf-16le"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/bond/internal/StringHelper;->UTF16:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFromUtf16([BII)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/microsoft/bond/internal/StringHelper;->UTF16:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static decodeFromUtf8([BII)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/microsoft/bond/internal/StringHelper;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static encodeToUtf16(Ljava/lang/String;)[B
    .registers 2

    sget-object v0, Lcom/microsoft/bond/internal/StringHelper;->UTF16:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeToUtf8(Ljava/lang/String;)[B
    .registers 2

    sget-object v0, Lcom/microsoft/bond/internal/StringHelper;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method
