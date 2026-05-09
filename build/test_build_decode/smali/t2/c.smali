.class public final Lt2/c;
.super Lt2/a;
.source "SourceFile"


# static fields
.field public static final d:Lt2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lt2/c;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    new-instance v0, Lt2/c$a;

    invoke-direct {v0}, Lt2/c$a;-><init>()V

    sput-object v0, Lt2/c;->d:Lt2/c$a;

    return-void
.end method
