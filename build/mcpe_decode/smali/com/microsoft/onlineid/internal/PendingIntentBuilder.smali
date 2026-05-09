.class public Lcom/microsoft/onlineid/internal/PendingIntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _context:Landroid/content/Context;

.field private final _intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_intent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/ApiRequest;)V
    .locals 1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    return-void
.end method


# virtual methods
.method public buildActivity()Landroid/app/PendingIntent;
    .locals 1

    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public buildActivity(I)Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_context:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_intent:Landroid/content/Intent;

    const-string v1, "intent"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_context:Landroid/content/Context;

    return-object p0
.end method
