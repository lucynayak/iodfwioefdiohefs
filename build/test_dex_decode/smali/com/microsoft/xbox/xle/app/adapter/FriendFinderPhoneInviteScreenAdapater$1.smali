.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p4

    invoke-interface {p4, p3, p2, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method
