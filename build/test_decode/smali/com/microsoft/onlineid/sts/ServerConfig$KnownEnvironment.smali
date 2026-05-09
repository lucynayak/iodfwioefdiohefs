.class public final enum Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnownEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

.field public static final enum Int:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

.field public static final enum Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;


# instance fields
.field private final _environment:Lcom/microsoft/onlineid/internal/configuration/Environment;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    const-string v1, "Production"

    const/4 v2, 0x0

    const-string v3, "production"

    const-string v4, "https://go.microsoft.com/fwlink/?LinkId=398559"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    new-instance v1, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    const-string v3, "Int"

    const/4 v4, 0x1

    const-string v5, "int"

    const-string v6, "https://go.microsoft.com/fwlink/?LinkId=398560"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Int:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    :try_start_0
    new-instance p1, Lcom/microsoft/onlineid/internal/configuration/Environment;

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p3, p2}, Lcom/microsoft/onlineid/internal/configuration/Environment;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    iput-object p1, p0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->_environment:Lcom/microsoft/onlineid/internal/configuration/Environment;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid known environment URL: "

    .line 1
    invoke-static {p2, p4}, La/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;
    .locals 1

    const-class v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;
    .locals 1

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    return-object v0
.end method


# virtual methods
.method public getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->_environment:Lcom/microsoft/onlineid/internal/configuration/Environment;

    return-object v0
.end method
