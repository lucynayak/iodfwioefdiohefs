.class public final Lt2/j;
.super Lt2/a;
.source "SourceFile"


# static fields
.field public static final d:Lt2/j$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lt2/j;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    new-instance v0, Lt2/j$a;

    invoke-direct {v0}, Lt2/j$a;-><init>()V

    sput-object v0, Lt2/j;->d:Lt2/j$a;

    return-void
.end method
