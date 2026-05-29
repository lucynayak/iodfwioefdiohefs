.class public final Lt2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/h;


# instance fields
.field public a:Lt2/l$a;

.field public b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt2/g;->b:Ljava/util/HashMap;

    sget-object v0, Lt2/l;->d:Lt2/l$a;

    iput-object v0, p0, Lt2/g;->a:Lt2/l$a;

    .line 2
    sget-object v0, Lt2/d;->e:Lt2/d$a;

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    sget-object v0, Lt2/e;->f:Lt2/e$a;

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    sget-object v0, Lt2/c;->d:Lt2/c$a;

    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    sget-object v0, Lt2/f;->d:Lt2/f$a;

    const-string v1, "Date"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    const-string v1, "Resent-Date"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    sget-object v0, Lt2/k;->d:Lt2/k$a;

    const-string v1, "From"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    const-string v1, "Resent-From"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    sget-object v0, Lt2/j;->d:Lt2/j$a;

    const-string v1, "Sender"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    const-string v1, "Resent-Sender"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    sget-object v0, Lt2/b;->d:Lt2/b$a;

    const-string v1, "To"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    const-string v1, "Resent-To"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    const-string v1, "Cc"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    const-string v1, "Resent-Cc"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    const-string v1, "Bcc"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    const-string v1, "Resent-Bcc"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    const-string v1, "Reply-To"

    invoke-virtual {p0, v1, v0}, Lt2/g;->a(Ljava/lang/String;Lt2/h;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lt2/h;)V
    .registers 4

    iget-object v0, p0, Lt2/g;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
