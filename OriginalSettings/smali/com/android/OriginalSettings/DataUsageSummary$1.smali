.class Lcom/android/OriginalSettings/DataUsageSummary$1;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/DataUsageSummary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$1;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 420
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 425
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 426
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$1;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #getter for: Lcom/android/OriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0

    .line 427
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 420
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$1;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$1;->this$0:Lcom/android/OriginalSettings/DataUsageSummary;

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$100(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 438
    :cond_0
    return-void
.end method
