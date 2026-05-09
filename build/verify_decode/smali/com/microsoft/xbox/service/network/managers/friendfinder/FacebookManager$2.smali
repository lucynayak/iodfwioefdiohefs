.class Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le1/j<",
        "Lj1/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$2;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Le1/m;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lj1/a;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj1/a;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$2;->onSuccess(Lj1/a;)V

    return-void
.end method
