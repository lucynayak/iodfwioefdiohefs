.class public final synthetic Lorg/mozilla/javascript/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Lorg/mozilla/javascript/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/mozilla/javascript/b;

    invoke-direct {v0}, Lorg/mozilla/javascript/b;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/b;->b:Lorg/mozilla/javascript/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
