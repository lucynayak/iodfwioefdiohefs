.class public abstract Lt2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lx2/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "^([\\x21-\\x39\\x3b-\\x7e]+):"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    new-instance v0, Lt2/g;

    invoke-direct {v0}, Lt2/g;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lx2/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Content-Type"

    iput-object v0, p0, Lt2/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lt2/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lt2/a;->c:Lx2/b;

    return-void
.end method


# virtual methods
.method public final a()Lx2/b;
    .registers 2

    iget-object v0, p0, Lt2/a;->c:Lx2/b;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt2/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt2/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lt2/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt2/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
