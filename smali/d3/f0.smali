.class public final Ld3/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/c0;


# instance fields
.field public final a:Ljavax/xml/stream/XMLInputFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    iput-object v0, p0, Ld3/f0;->a:Ljavax/xml/stream/XMLInputFactory;

    return-void
.end method


# virtual methods
.method public final e(Ljava/io/InputStream;)Ld3/f;
    .registers 3

    iget-object v0, p0, Ld3/f0;->a:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;

    move-result-object p1

    new-instance v0, Ld3/g0;

    invoke-direct {v0, p1}, Ld3/g0;-><init>(Ljavax/xml/stream/XMLEventReader;)V

    return-object v0
.end method
