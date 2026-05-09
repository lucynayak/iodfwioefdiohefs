.class public final Le1/s;
.super Le1/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first."

    invoke-direct {p0, v0}, Le1/m;-><init>(Ljava/lang/String;)V

    return-void
.end method
