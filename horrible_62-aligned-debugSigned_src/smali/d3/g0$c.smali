.class public final Ld3/g0$c;
.super Ld3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Ljavax/xml/stream/events/StartElement;

.field public final c:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/events/XMLEvent;)V
    .registers 3

    invoke-direct {p0}, Ld3/d;-><init>()V

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    iput-object v0, p0, Ld3/g0$c;->b:Ljavax/xml/stream/events/StartElement;

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p1

    iput-object p1, p0, Ld3/g0$c;->c:Ljavax/xml/stream/Location;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljavax/xml/stream/events/Attribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld3/g0$c;->b:Ljavax/xml/stream/events/StartElement;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/g0$c;->b:Ljavax/xml/stream/events/StartElement;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()I
    .registers 2

    iget-object v0, p0, Ld3/g0$c;->c:Ljavax/xml/stream/Location;

    invoke-interface {v0}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v0

    return v0
.end method
