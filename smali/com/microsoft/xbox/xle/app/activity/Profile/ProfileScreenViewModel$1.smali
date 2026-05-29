.class Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->blockUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->blockUserInternal()V

    return-void
.end method
