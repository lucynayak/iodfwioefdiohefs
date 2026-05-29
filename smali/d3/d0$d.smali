.class public final Ld3/d0$d;
.super Ld3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    invoke-direct {p0}, Ld3/g;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld3/d0$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld3/d0$d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final isText()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
