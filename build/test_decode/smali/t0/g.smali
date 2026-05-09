.class public abstract Lt0/g;
.super Lcom/amazon/android/framework/task/command/AbstractCommandTask;
.source "SourceFile"


# instance fields
.field public final a:Lt0/c;

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lt0/g;

    return-void
.end method

.method public constructor <init>(Lt0/c;)V
    .locals 2

    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;-><init>()V

    new-instance v0, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;

    invoke-direct {v0}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;-><init>()V

    iput-object p1, p0, Lt0/g;->a:Lt0/c;

    .line 1
    iget-object p1, p1, Lt0/c;->a:La1/e;

    .line 2
    iget-object p1, p1, La1/e;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt0/g;->b:Ljava/util/HashMap;

    const-string v1, "requestId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sdkVersion"

    const-string v1, "2.0.61.0"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lt0/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->addCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    return-void
.end method
