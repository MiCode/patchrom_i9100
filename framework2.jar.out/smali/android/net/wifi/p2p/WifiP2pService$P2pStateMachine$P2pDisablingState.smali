.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pDisablingState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 738
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "Failed to stop supplicant"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->killP2pSupplicant()Z

    .line 744
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x23014

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$2004(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 746
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    .line 747
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$2200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 748
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 749
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 753
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 754
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 807
    const/4 v0, 0x0

    .line 809
    :goto_0
    return v0

    .line 756
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "p2p socket connection lost"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->killP2pSupplicant()Z

    .line 761
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 763
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 809
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 789
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupplicantStopFailureToken:I
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$2000(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 790
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "Timed out on a supplicant stop, kill and proceed"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->killP2pSupplicant()Z

    .line 792
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 793
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x24002

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 798
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 804
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 754
    nop

    :sswitch_data_0
    .sparse-switch
        0x20083 -> :sswitch_3
        0x20084 -> :sswitch_3
        0x22065 -> :sswitch_3
        0x22068 -> :sswitch_3
        0x23010 -> :sswitch_2
        0x23011 -> :sswitch_2
        0x23014 -> :sswitch_1
        0x24002 -> :sswitch_0
    .end sparse-switch
.end method
