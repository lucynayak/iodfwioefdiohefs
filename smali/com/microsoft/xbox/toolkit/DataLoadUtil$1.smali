.class final Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/DataLoadUtil;->StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$lastRefreshedTime:Ljava/util/Date;

.field public final synthetic val$lifetime:J

.field public final synthetic val$loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field public final synthetic val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;


# direct methods
.method public constructor <init>(JLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V
    .registers 6

    iput-wide p1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$lifetime:J

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$lastRefreshedTime:Ljava/util/Date;

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    iput-object p5, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public checkShouldExecute()Z
    .registers 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    return v0
.end method

.method public loadDataInBackground()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    iget-wide v1, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$lifetime:J

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$lastRefreshedTime:Ljava/util/Date;

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;->val$runner:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onError()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onNoAction()V
    .registers 1

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onPreExecute()V
    .registers 1

    return-void
.end method
