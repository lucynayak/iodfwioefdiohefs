.class public final Lh1/x$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh1/x$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lh1/m;

.field public d:Z


# direct methods
.method public constructor <init>(ZZLjava/util/Map;Lh1/m;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lh1/x$c;->d:Z

    iput-boolean p2, p0, Lh1/x$c;->a:Z

    iput-object p3, p0, Lh1/x$c;->b:Ljava/util/Map;

    iput-object p4, p0, Lh1/x$c;->c:Lh1/m;

    return-void
.end method
