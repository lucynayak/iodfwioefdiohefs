.class public final Ld3/g0$b;
.super Ld3/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljavax/xml/stream/events/Attribute;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/events/Attribute;)V
    .registers 2

    invoke-direct {p0}, Ld3/c;-><init>()V

    iput-object p1, p0, Ld3/g0$b;->a:Ljavax/xml/stream/events/Attribute;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/g0$b;->a:Ljavax/xml/stream/events/Attribute;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/g0$b;->a:Ljavax/xml/stream/events/Attribute;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ld3/g0$b;->a:Ljavax/xml/stream/events/Attribute;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/g0$b;->a:Ljavax/xml/stream/events/Attribute;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/g0$b;->a:Ljavax/xml/stream/events/Attribute;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
