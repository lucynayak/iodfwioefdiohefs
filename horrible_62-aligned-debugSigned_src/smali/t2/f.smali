.class public final Lt2/f;
.super Lt2/a;
.source "SourceFile"


# static fields
.field public static final d:Lt2/f$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lt2/f;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    new-instance v0, Lt2/f$a;

    invoke-direct {v0}, Lt2/f$a;-><init>()V

    sput-object v0, Lt2/f;->d:Lt2/f$a;

    return-void
.end method
