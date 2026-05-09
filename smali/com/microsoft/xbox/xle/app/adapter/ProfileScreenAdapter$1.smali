.class Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->navigateToChangeRelationship()V

    return-void
.end method
