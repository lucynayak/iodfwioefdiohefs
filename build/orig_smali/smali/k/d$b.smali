.class public final Lk/d$b;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lk/d;",
        "Lk/d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lk/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lk/d;",
            "Lk/d$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/d$b;

    invoke-direct {v0}, Lk/d$b;-><init>()V

    sput-object v0, Lk/d$b;->a:Lk/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-class v0, Lk/d$d;

    const-string v1, "circularReveal"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk/d;

    invoke-interface {p1}, Lk/d;->getRevealInfo()Lk/d$d;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lk/d;

    check-cast p2, Lk/d$d;

    invoke-interface {p1, p2}, Lk/d;->setRevealInfo(Lk/d$d;)V

    return-void
.end method
