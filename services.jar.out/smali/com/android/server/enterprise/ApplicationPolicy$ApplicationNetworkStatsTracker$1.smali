.class Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->registerNetworkChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 426
    :try_start_0
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 429
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 430
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    #calls: Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$100(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/net/NetworkInfo$State;)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, state:Ljava/lang/String;
    const-string v4, "Disconnected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$202(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 436
    .local v2, message:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$200(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$300(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 437
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 440
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iget-object v4, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 442
    .end local v2           #message:Landroid/os/Message;
    :cond_0
    const-string v4, "Connected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 443
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;->this$1:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->access$402(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v3           #state:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 439
    .restart local v1       #info:Landroid/net/NetworkInfo;
    .restart local v2       #message:Landroid/os/Message;
    .restart local v3       #state:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #message:Landroid/os/Message;
    .end local v3           #state:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
