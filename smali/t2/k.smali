.class public final Lt2/k;
.super Lt2/a;
.source "SourceFile"


# static fields
.field public static final d:Lt2/k$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lt2/k;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    new-instance v0, Lt2/k$a;

    invoke-direct {v0}, Lt2/k$a;-><init>()V

    sput-object v0, Lt2/k;->d:Lt2/k$a;

    return-void
.end method
