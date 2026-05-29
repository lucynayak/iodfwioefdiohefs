.class public Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private final _exception:Ljava/lang/Exception;

.field private final _result:Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<",
            "TResultType;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;


# direct methods
.method private constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Landroid/app/PendingIntent;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->this$0:Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {p1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    invoke-virtual {p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_result:Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_exception:Ljava/lang/Exception;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Landroid/app/PendingIntent;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->this$0:Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_result:Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    iput-object p2, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_exception:Ljava/lang/Exception;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Exception;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Exception;)V

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->this$0:Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {p1}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    invoke-virtual {p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setData(Ljava/lang/Object;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_result:Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_exception:Ljava/lang/Exception;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;)Ljava/lang/Exception;
    .registers 1

    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->getException()Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method private getException()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_exception:Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method public getSsoResponse()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<",
            "TResultType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_result:Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    return-object v0
.end method
