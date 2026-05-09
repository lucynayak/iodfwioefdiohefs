.class public Lcom/microsoft/xbox/idp/model/UserAccount;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/model/UserAccount$Address;
    }
.end annotation


# instance fields
.field public administeredConsoles:Ljava/lang/String;

.field public dateOfBirth:Ljava/util/Date;

.field public email:Ljava/lang/String;

.field public firstName:Ljava/lang/String;

.field public gamerTag:Ljava/lang/String;

.field public gamerTagChangeReason:Ljava/lang/String;

.field public homeAddressInfo:Lcom/microsoft/xbox/idp/model/UserAccount$Address;

.field public homeConsole:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public isAdult:Z

.field public lastName:Ljava/lang/String;

.field public legalCountry:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public midasConsole:Ljava/lang/String;

.field public msftOptin:Z

.field public ownerHash:Ljava/lang/String;

.field public ownerXuid:Ljava/lang/String;

.field public partnerOptin:Z

.field public touAcceptanceDate:Ljava/util/Date;

.field public userHash:Ljava/lang/String;

.field public userKey:Ljava/lang/String;

.field public userXuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAdapters(Lp1/k;)Lp1/k;
    .locals 2

    const-class v0, Ljava/util/Date;

    new-instance v1, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterJSONDeserializer;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterJSONDeserializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lp1/k;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lp1/k;

    return-object p0
.end method
