.class public Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Contact"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isOnXbox:Z

.field public isSelected:Z

.field public phoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addPhoneNumber(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->phoneNumbers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->phoneNumbers:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
