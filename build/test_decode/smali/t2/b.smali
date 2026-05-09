.class public final Lt2/b;
.super Lt2/a;
.source "SourceFile"


# static fields
.field public static final d:Lt2/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lt2/b;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    new-instance v0, Lt2/b$a;

    invoke-direct {v0}, Lt2/b$a;-><init>()V

    sput-object v0, Lt2/b;->d:Lt2/b$a;

    return-void
.end method
