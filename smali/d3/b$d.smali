.class public final Ld3/b$d;
.super Ld3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    invoke-direct {p0}, Ld3/g;-><init>()V

    iput-object p1, p0, Ld3/b$d;->b:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/b$d;->b:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
