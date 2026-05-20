.class public final synthetic Lorg/mozilla/javascript/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lorg/mozilla/javascript/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/mozilla/javascript/c;

    invoke-direct {v0}, Lorg/mozilla/javascript/c;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/c;->a:Lorg/mozilla/javascript/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()Ljava/lang/Object;

    return-void
.end method
