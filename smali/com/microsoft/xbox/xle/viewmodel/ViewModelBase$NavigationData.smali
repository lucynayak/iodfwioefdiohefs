.class Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationData"
.end annotation


# instance fields
.field private navigationType:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

.field private screenClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;Ljava/lang/Class;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->screenClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->navigationType:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    return-void
.end method


# virtual methods
.method public getNavigationType()Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->navigationType:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    return-object v0
.end method

.method public getScreenClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->screenClass:Ljava/lang/Class;

    return-object v0
.end method
