.class public final Ly0/b;
.super Lt0/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(La1/e;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lt0/c;-><init>(La1/e;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p2, Ly0/a;

    const-string v0, "FULFILLED"

    invoke-direct {p2, p0, p1, v0}, Ly0/a;-><init>(Lt0/c;Ljava/util/Set;Ljava/lang/String;)V

    iput-object p2, p0, Lt0/c;->c:Lt0/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method
