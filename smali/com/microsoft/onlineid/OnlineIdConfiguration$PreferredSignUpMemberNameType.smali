.class public final enum Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/OnlineIdConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferredSignUpMemberNameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum Email:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum None:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum Outlook:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum Telephone:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum TelephoneEvenIfBlank:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum TelephoneOnly:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;


# instance fields
.field private final _qsValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->None:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    new-instance v1, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v3, "Email"

    const/4 v4, 0x1

    const-string v5, "easi2"

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Email:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    new-instance v3, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v5, "Outlook"

    const/4 v6, 0x2

    const-string v7, "wld2"

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Outlook:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    new-instance v5, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v7, "Telephone"

    const/4 v8, 0x3

    const-string v9, "phone2"

    invoke-direct {v5, v7, v8, v9}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Telephone:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    new-instance v7, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v9, "TelephoneOnly"

    const/4 v10, 0x4

    const-string v11, "phone"

    invoke-direct {v7, v9, v10, v11}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->TelephoneOnly:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    new-instance v9, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v11, "TelephoneEvenIfBlank"

    const/4 v12, 0x5

    const-string v13, "phone3"

    invoke-direct {v9, v11, v12, v13}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->TelephoneEvenIfBlank:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->$VALUES:[Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->_qsValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    .registers 2

    const-class v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    .registers 1

    sget-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->$VALUES:[Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->_qsValue:Ljava/lang/String;

    return-object v0
.end method
