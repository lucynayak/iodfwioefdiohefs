.class public Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    }
.end annotation


# static fields
.field public static final MinimumPhoneLength:I = 0x7

.field private static instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final countryCodes:[[Ljava/lang/String;

.field private isXboxContactsUpdated:Z

.field private phoneNumberFromSim:Ljava/lang/String;

.field private profilePhoneNumber:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private userEnteredNumber:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xce

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "93"

    const-string v2, "AF"

    const-string v3, ""

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "355"

    const-string v4, "AL"

    filled-new-array {v1, v4, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "213"

    const-string v5, "DZ"

    filled-new-array {v1, v5, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    const-string v1, "376"

    const-string v6, "AD"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v0, v6

    const-string v1, "244"

    const-string v6, "AO"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "672"

    const-string v6, "AQ"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v0, v6

    const-string v1, "54"

    const-string v6, "AR"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x6

    aput-object v1, v0, v6

    const-string v1, "374"

    const-string v6, "AM"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x7

    aput-object v1, v0, v6

    const-string v1, "297"

    const-string v6, "AW"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x8

    aput-object v1, v0, v6

    const-string v1, "61"

    const-string v6, "AU"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    aput-object v6, v0, v7

    const-string v6, "43"

    const-string v7, "AT"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    aput-object v6, v0, v7

    const-string v6, "994"

    const-string v7, "AZ"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v0, v7

    const-string v6, "973"

    const-string v7, "BH"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc

    aput-object v6, v0, v7

    const-string v6, "880"

    const-string v7, "BD"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd

    aput-object v6, v0, v7

    const-string v6, "375"

    const-string v7, "BY"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    aput-object v6, v0, v7

    const-string v6, "32"

    const-string v7, "BE"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    aput-object v6, v0, v7

    const-string v6, "501"

    const-string v7, "BZ"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    aput-object v6, v0, v7

    const-string v6, "229"

    const-string v7, "BJ"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x11

    aput-object v6, v0, v7

    const-string v6, "975"

    const-string v7, "BT"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12

    aput-object v6, v0, v7

    const-string v6, "591"

    const-string v7, "BO"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x13

    aput-object v6, v0, v7

    const-string v6, "387"

    const-string v7, "BA"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x14

    aput-object v6, v0, v7

    const-string v6, "267"

    const-string v7, "BW"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x15

    aput-object v6, v0, v7

    const-string v6, "55"

    const-string v7, "BR"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x16

    aput-object v6, v0, v7

    const-string v6, "673"

    const-string v7, "BN"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x17

    aput-object v6, v0, v7

    const-string v6, "359"

    const-string v7, "BG"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x18

    aput-object v6, v0, v7

    const-string v6, "226"

    const-string v7, "BF"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x19

    aput-object v6, v0, v7

    const-string v6, "95"

    const-string v7, "MM"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1a

    aput-object v6, v0, v7

    const-string v6, "257"

    const-string v7, "BI"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b

    aput-object v6, v0, v7

    const-string v6, "855"

    const-string v7, "KH"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1c

    aput-object v6, v0, v7

    const-string v6, "237"

    const-string v7, "CM"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1d

    aput-object v6, v0, v7

    const-string v6, "1"

    const-string v7, "CA"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1e

    aput-object v7, v0, v8

    const-string v7, "238"

    const-string v8, "CV"

    filled-new-array {v7, v8, v3}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f

    aput-object v7, v0, v8

    const-string v7, "236"

    const-string v8, "CF"

    filled-new-array {v7, v8, v3}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    aput-object v7, v0, v8

    const-string v7, "235"

    const-string v8, "TD"

    filled-new-array {v7, v8, v3}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x21

    aput-object v7, v0, v8

    const-string v7, "56"

    const-string v8, "CL"

    filled-new-array {v7, v8, v3}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x22

    aput-object v7, v0, v8

    const-string v7, "86"

    const-string v8, "CN"

    filled-new-array {v7, v8, v3}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x23

    aput-object v7, v0, v8

    const-string v7, "CX"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x24

    aput-object v7, v0, v8

    const-string v7, "CC"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x25

    aput-object v1, v0, v7

    const-string v1, "57"

    const-string v7, "CO"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x26

    aput-object v1, v0, v7

    const-string v1, "269"

    const-string v7, "KM"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x27

    aput-object v1, v0, v7

    const-string v1, "242"

    const-string v7, "CG"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x28

    aput-object v1, v0, v7

    const-string v1, "243"

    const-string v7, "CD"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x29

    aput-object v1, v0, v7

    const-string v1, "682"

    const-string v7, "CK"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2a

    aput-object v1, v0, v7

    const-string v1, "506"

    const-string v7, "CR"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2b

    aput-object v1, v0, v7

    const-string v1, "385"

    const-string v7, "HR"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2c

    aput-object v1, v0, v7

    const-string v1, "53"

    const-string v7, "CU"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2d

    aput-object v1, v0, v7

    const-string v1, "357"

    const-string v7, "CY"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2e

    aput-object v1, v0, v7

    const-string v1, "420"

    const-string v7, "CZ"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2f

    aput-object v1, v0, v7

    const-string v1, "45"

    const-string v7, "DK"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x30

    aput-object v1, v0, v7

    const-string v1, "253"

    const-string v7, "DJ"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x31

    aput-object v1, v0, v7

    const-string v1, "670"

    const-string v7, "TL"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x32

    aput-object v1, v0, v7

    const-string v1, "593"

    const-string v7, "EC"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x33

    aput-object v1, v0, v7

    const-string v1, "20"

    const-string v7, "EG"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x34

    aput-object v1, v0, v7

    const-string v1, "503"

    const-string v7, "SV"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x35

    aput-object v1, v0, v7

    const-string v1, "240"

    const-string v7, "GQ"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x36

    aput-object v1, v0, v7

    const-string v1, "291"

    const-string v7, "ER"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x37

    aput-object v1, v0, v7

    const-string v1, "372"

    const-string v7, "EE"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x38

    aput-object v1, v0, v7

    const-string v1, "251"

    const-string v7, "ET"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x39

    aput-object v1, v0, v7

    const-string v1, "500"

    const-string v7, "FK"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3a

    aput-object v1, v0, v7

    const-string v1, "298"

    const-string v7, "FO"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3b

    aput-object v1, v0, v7

    const-string v1, "679"

    const-string v7, "FJ"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3c

    aput-object v1, v0, v7

    const-string v1, "358"

    const-string v7, "FI"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3d

    aput-object v1, v0, v7

    const-string v1, "33"

    const-string v7, "FR"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3e

    aput-object v1, v0, v7

    const-string v1, "689"

    const-string v7, "PF"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3f

    aput-object v1, v0, v7

    const-string v1, "241"

    const-string v7, "GA"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x40

    aput-object v1, v0, v7

    const-string v1, "220"

    const-string v7, "GM"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x41

    aput-object v1, v0, v7

    const-string v1, "995"

    const-string v7, "GE"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x42

    aput-object v1, v0, v7

    const-string v1, "49"

    const-string v7, "DE"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x43

    aput-object v1, v0, v7

    const-string v1, "233"

    const-string v7, "GH"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x44

    aput-object v1, v0, v7

    const-string v1, "350"

    const-string v7, "GI"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x45

    aput-object v1, v0, v7

    const-string v1, "30"

    const-string v7, "GR"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x46

    aput-object v1, v0, v7

    const-string v1, "299"

    const-string v7, "GL"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x47

    aput-object v1, v0, v7

    const-string v1, "502"

    const-string v7, "GT"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x48

    aput-object v1, v0, v7

    const-string v1, "224"

    const-string v7, "GN"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x49

    aput-object v1, v0, v7

    const-string v1, "245"

    const-string v7, "GW"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4a

    aput-object v1, v0, v7

    const-string v1, "592"

    const-string v7, "GY"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4b

    aput-object v1, v0, v7

    const-string v1, "509"

    const-string v7, "HT"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4c

    aput-object v1, v0, v7

    const-string v1, "504"

    const-string v7, "HN"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4d

    aput-object v1, v0, v7

    const-string v1, "852"

    const-string v7, "HK"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4e

    aput-object v1, v0, v7

    const-string v1, "36"

    const-string v7, "HU"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x4f

    aput-object v1, v0, v7

    const-string v1, "91"

    const-string v7, "IN"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x50

    aput-object v1, v0, v7

    const-string v1, "62"

    const-string v7, "ID"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x51

    aput-object v1, v0, v7

    const-string v1, "98"

    const-string v7, "IR"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x52

    aput-object v1, v0, v7

    const-string v1, "964"

    const-string v7, "IQ"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x53

    aput-object v1, v0, v7

    const-string v1, "353"

    const-string v7, "IE"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x54

    aput-object v1, v0, v7

    const-string v1, "44"

    const-string v7, "IM"

    filled-new-array {v1, v7, v3}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x55

    aput-object v7, v0, v8

    const-string v7, "972"

    const-string v8, "IL"

    filled-new-array {v7, v8, v3}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x56

    aput-object v7, v0, v8

    const-string v7, "39"

    const-string v8, "IT"

    filled-new-array {v7, v8, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x57

    aput-object v8, v0, v9

    const-string v8, "225"

    const-string v9, "CI"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x58

    aput-object v8, v0, v9

    const-string v8, "81"

    const-string v9, "JP"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x59

    aput-object v8, v0, v9

    const-string v8, "962"

    const-string v9, "JO"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x5a

    aput-object v8, v0, v9

    const-string v8, "7"

    const-string v9, "KZ"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5b

    aput-object v9, v0, v10

    const-string v9, "254"

    const-string v10, "KE"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5c

    aput-object v9, v0, v10

    const-string v9, "686"

    const-string v10, "KI"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5d

    aput-object v9, v0, v10

    const-string v9, "965"

    const-string v10, "KW"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5e

    aput-object v9, v0, v10

    const-string v9, "996"

    const-string v10, "KG"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5f

    aput-object v9, v0, v10

    const-string v9, "856"

    const-string v10, "LA"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x60

    aput-object v9, v0, v10

    const-string v9, "371"

    const-string v10, "LV"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x61

    aput-object v9, v0, v10

    const-string v9, "961"

    const-string v10, "LB"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x62

    aput-object v9, v0, v10

    const-string v9, "266"

    const-string v10, "LS"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x63

    aput-object v9, v0, v10

    const-string v9, "231"

    const-string v10, "LR"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x64

    aput-object v9, v0, v10

    const-string v9, "218"

    const-string v10, "LY"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x65

    aput-object v9, v0, v10

    const-string v9, "423"

    const-string v10, "LI"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x66

    aput-object v9, v0, v10

    const-string v9, "370"

    const-string v10, "LT"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x67

    aput-object v9, v0, v10

    const-string v9, "352"

    const-string v10, "LU"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x68

    aput-object v9, v0, v10

    const-string v9, "853"

    const-string v10, "MO"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x69

    aput-object v9, v0, v10

    const-string v9, "389"

    const-string v10, "MK"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x6a

    aput-object v9, v0, v10

    const-string v9, "261"

    const-string v10, "MG"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x6b

    aput-object v9, v0, v10

    const-string v9, "265"

    const-string v10, "MW"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x6c

    aput-object v9, v0, v10

    const-string v9, "60"

    const-string v10, "MY"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x6d

    aput-object v9, v0, v10

    const-string v9, "960"

    const-string v10, "MV"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x6e

    aput-object v9, v0, v10

    const-string v9, "223"

    const-string v10, "ML"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x6f

    aput-object v9, v0, v10

    const-string v9, "356"

    const-string v10, "MT"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x70

    aput-object v9, v0, v10

    const-string v9, "692"

    const-string v10, "MH"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x71

    aput-object v9, v0, v10

    const-string v9, "222"

    const-string v10, "MR"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x72

    aput-object v9, v0, v10

    const-string v9, "230"

    const-string v10, "MU"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x73

    aput-object v9, v0, v10

    const-string v9, "262"

    const-string v10, "YT"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x74

    aput-object v9, v0, v10

    const-string v9, "52"

    const-string v10, "MX"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x75

    aput-object v9, v0, v10

    const-string v9, "691"

    const-string v10, "FM"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x76

    aput-object v9, v0, v10

    const-string v9, "373"

    const-string v10, "MD"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x77

    aput-object v9, v0, v10

    const-string v9, "377"

    const-string v10, "MC"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x78

    aput-object v9, v0, v10

    const-string v9, "976"

    const-string v10, "MN"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x79

    aput-object v9, v0, v10

    const-string v9, "382"

    const-string v10, "ME"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7a

    aput-object v9, v0, v10

    const-string v9, "212"

    const-string v10, "MA"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7b

    aput-object v9, v0, v10

    const-string v9, "258"

    const-string v10, "MZ"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7c

    aput-object v9, v0, v10

    const-string v9, "264"

    const-string v10, "NA"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7d

    aput-object v9, v0, v10

    const-string v9, "674"

    const-string v10, "NR"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7e

    aput-object v9, v0, v10

    const-string v9, "977"

    const-string v10, "NP"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7f

    aput-object v9, v0, v10

    const-string v9, "31"

    const-string v10, "NL"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    aput-object v9, v0, v10

    const-string v9, "599"

    const-string v10, "AN"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x81

    aput-object v9, v0, v10

    const-string v9, "687"

    const-string v10, "NC"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x82

    aput-object v9, v0, v10

    const-string v9, "64"

    const-string v10, "NZ"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x83

    aput-object v9, v0, v10

    const-string v9, "505"

    const-string v10, "NI"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x84

    aput-object v9, v0, v10

    const-string v9, "227"

    const-string v10, "NE"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x85

    aput-object v9, v0, v10

    const-string v9, "234"

    const-string v10, "NG"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x86

    aput-object v9, v0, v10

    const-string v9, "683"

    const-string v10, "NU"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x87

    aput-object v9, v0, v10

    const-string v9, "850"

    const-string v10, "KP"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x88

    aput-object v9, v0, v10

    const-string v9, "47"

    const-string v10, "NO"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x89

    aput-object v9, v0, v10

    const-string v9, "968"

    const-string v10, "OM"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8a

    aput-object v9, v0, v10

    const-string v9, "92"

    const-string v10, "PK"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8b

    aput-object v9, v0, v10

    const-string v9, "680"

    const-string v10, "PW"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8c

    aput-object v9, v0, v10

    const-string v9, "507"

    const-string v10, "PA"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8d

    aput-object v9, v0, v10

    const-string v9, "675"

    const-string v10, "PG"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8e

    aput-object v9, v0, v10

    const-string v9, "595"

    const-string v10, "PY"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8f

    aput-object v9, v0, v10

    const-string v9, "51"

    const-string v10, "PE"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x90

    aput-object v9, v0, v10

    const-string v9, "63"

    const-string v10, "PH"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x91

    aput-object v9, v0, v10

    const-string v9, "870"

    const-string v10, "PN"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x92

    aput-object v9, v0, v10

    const-string v9, "48"

    const-string v10, "PL"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x93

    aput-object v9, v0, v10

    const-string v9, "351"

    const-string v10, "PT"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x94

    aput-object v9, v0, v10

    const-string v9, "PR"

    filled-new-array {v6, v9, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x95

    aput-object v9, v0, v10

    const-string v9, "974"

    const-string v10, "QA"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x96

    aput-object v9, v0, v10

    const-string v9, "40"

    const-string v10, "RO"

    filled-new-array {v9, v10, v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x97

    aput-object v9, v0, v10

    const-string v9, "RU"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x98

    aput-object v8, v0, v9

    const-string v8, "250"

    const-string v9, "RW"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x99

    aput-object v8, v0, v9

    const-string v8, "590"

    const-string v9, "BL"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9a

    aput-object v8, v0, v9

    const-string v8, "685"

    const-string v9, "WS"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9b

    aput-object v8, v0, v9

    const-string v8, "378"

    const-string v9, "SM"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9c

    aput-object v8, v0, v9

    const-string v8, "239"

    const-string v9, "ST"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9d

    aput-object v8, v0, v9

    const-string v8, "966"

    const-string v9, "SA"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9e

    aput-object v8, v0, v9

    const-string v8, "221"

    const-string v9, "SN"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9f

    aput-object v8, v0, v9

    const-string v8, "381"

    const-string v9, "RS"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa0

    aput-object v8, v0, v9

    const-string v8, "248"

    const-string v9, "SC"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa1

    aput-object v8, v0, v9

    const-string v8, "232"

    const-string v9, "SL"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa2

    aput-object v8, v0, v9

    const-string v8, "65"

    const-string v9, "SG"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa3

    aput-object v8, v0, v9

    const-string v8, "421"

    const-string v9, "SK"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa4

    aput-object v8, v0, v9

    const-string v8, "386"

    const-string v9, "SI"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa5

    aput-object v8, v0, v9

    const-string v8, "677"

    const-string v9, "SB"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa6

    aput-object v8, v0, v9

    const-string v8, "252"

    const-string v9, "SO"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa7

    aput-object v8, v0, v9

    const-string v8, "27"

    const-string v9, "ZA"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa8

    aput-object v8, v0, v9

    const-string v8, "82"

    const-string v9, "KR"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa9

    aput-object v8, v0, v9

    const-string v8, "34"

    const-string v9, "ES"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xaa

    aput-object v8, v0, v9

    const-string v8, "94"

    const-string v9, "LK"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xab

    aput-object v8, v0, v9

    const-string v8, "290"

    const-string v9, "SH"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xac

    aput-object v8, v0, v9

    const-string v8, "508"

    const-string v9, "PM"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xad

    aput-object v8, v0, v9

    const-string v8, "249"

    const-string v9, "SD"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xae

    aput-object v8, v0, v9

    const-string v8, "597"

    const-string v9, "SR"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xaf

    aput-object v8, v0, v9

    const-string v8, "268"

    const-string v9, "SZ"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb0

    aput-object v8, v0, v9

    const-string v8, "46"

    const-string v9, "SE"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb1

    aput-object v8, v0, v9

    const-string v8, "41"

    const-string v9, "CH"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb2

    aput-object v8, v0, v9

    const-string v8, "963"

    const-string v9, "SY"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb3

    aput-object v8, v0, v9

    const-string v8, "886"

    const-string v9, "TW"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb4

    aput-object v8, v0, v9

    const-string v8, "992"

    const-string v9, "TJ"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb5

    aput-object v8, v0, v9

    const-string v8, "255"

    const-string v9, "TZ"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb6

    aput-object v8, v0, v9

    const-string v8, "66"

    const-string v9, "TH"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb7

    aput-object v8, v0, v9

    const-string v8, "228"

    const-string v9, "TG"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb8

    aput-object v8, v0, v9

    const-string v8, "690"

    const-string v9, "TK"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb9

    aput-object v8, v0, v9

    const-string v8, "676"

    const-string v9, "TO"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xba

    aput-object v8, v0, v9

    const-string v8, "216"

    const-string v9, "TN"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xbb

    aput-object v8, v0, v9

    const-string v8, "90"

    const-string v9, "TR"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xbc

    aput-object v8, v0, v9

    const-string v8, "993"

    const-string v9, "TM"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xbd

    aput-object v8, v0, v9

    const-string v8, "688"

    const-string v9, "TV"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xbe

    aput-object v8, v0, v9

    const-string v8, "971"

    const-string v9, "AE"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xbf

    aput-object v8, v0, v9

    const-string v8, "256"

    const-string v9, "UG"

    filled-new-array {v8, v9, v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc0

    aput-object v8, v0, v9

    const-string v8, "GB"

    filled-new-array {v1, v8, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0xc1

    aput-object v1, v0, v8

    const-string v1, "380"

    const-string v8, "UA"

    filled-new-array {v1, v8, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0xc2

    aput-object v1, v0, v8

    const-string v1, "598"

    const-string v8, "UY"

    filled-new-array {v1, v8, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0xc3

    aput-object v1, v0, v8

    const-string v1, "US"

    filled-new-array {v6, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xc4

    aput-object v1, v0, v6

    const-string v1, "998"

    const-string v6, "UZ"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xc5

    aput-object v1, v0, v6

    const-string v1, "678"

    const-string v6, "VU"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xc6

    aput-object v1, v0, v6

    const-string v1, "VA"

    filled-new-array {v7, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xc7

    aput-object v1, v0, v6

    const-string v1, "58"

    const-string v6, "VE"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xc8

    aput-object v1, v0, v6

    const-string v1, "84"

    const-string v6, "VN"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xc9

    aput-object v1, v0, v6

    const-string v1, "681"

    const-string v6, "WF"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xca

    aput-object v1, v0, v6

    const-string v1, "967"

    const-string v6, "YE"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xcb

    aput-object v1, v0, v6

    const-string v1, "260"

    const-string v6, "ZM"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xcc

    aput-object v1, v0, v6

    const-string v1, "263"

    const-string v6, "ZW"

    filled-new-array {v1, v6, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xcd

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    invoke-direct {v0, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get country name : "

    .line 1
    invoke-static {v1}, La/c;->d(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v6, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v6, v6, v2

    aget-object v6, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v1, v6}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v0, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    return-object v0
.end method

.method public static normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ext"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lt p0, v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static sha2Encryption(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x0

    array-length v1, p0

    const/16 v2, 0xa

    invoke-static {p0, v0, v1, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContacts()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    return-object v0

    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v1, "has_phone_number"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "contact_id = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v5, v1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "data1"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v3, :cond_2

    new-instance v3, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    invoke-direct {v3, p0, v9, v10}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3, v4}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->addPhoneNumber(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->addPhoneNumber(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_5

    iget-object v2, v3, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->phoneNumbers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    :cond_4
    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    return-object v0

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContryCodeFromRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object p1, p1, v1

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getContryCodeFromRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryNameFromRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object p1, p1, v0

    const/4 v0, 0x2

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCountryNames()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public getPhoneNumberFromSim()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->phoneNumberFromSim:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->phoneNumberFromSim:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->phoneNumberFromSim:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->phoneNumberFromSim:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->profilePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionFromCountryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object p1, p1, v0

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRegionWithCode()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "-"

    .line 1
    invoke-static {v0, v2, v1}, La/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserEnteredNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->userEnteredNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isXboxContactsUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->isXboxContactsUpdated:Z

    return v0
.end method

.method public setProfileNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->profilePhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setUserEnteredNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->userEnteredNumber:Ljava/lang/String;

    return-void
.end method

.method public updateXboxContacts(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->isXboxContactsUpdated:Z

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    iget-object v3, v2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->id:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->id:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iput-boolean v0, v2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->isOnXbox:Z

    goto :goto_0

    :cond_1
    return-void
.end method
