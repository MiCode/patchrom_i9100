.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pDisabledState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 821
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "{ what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 822
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 930
    const/4 v2, 0x0

    .line 932
    :goto_0
    :sswitch_0
    return v2

    .line 825
    :sswitch_1
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 832
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->startSupplicant(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 833
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v4, "Supplicant start successful"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 834
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 835
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 826
    :catch_0
    move-exception v1

    .line 827
    .local v1, re:Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to change interface settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 828
    .end local v1           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 829
    .local v0, ie:Ljava/lang/IllegalStateException;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to change interface settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 838
    .end local v0           #ie:Ljava/lang/IllegalStateException;
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v4, "Supplicant start fail."

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 851
    :sswitch_2
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setLegacyWifiEnable(Z)V
    invoke-static {v3, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    goto :goto_0

    .line 924
    :sswitch_3
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v4, 0x2206a

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v3, p1, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 927
    :sswitch_4
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v4, 0x2300d

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v3, p1, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 822
    :sswitch_data_0
    .sparse-switch
        0x20083 -> :sswitch_1
        0x20084 -> :sswitch_0
        0x2008d -> :sswitch_4
        0x22065 -> :sswitch_2
        0x22068 -> :sswitch_3
    .end sparse-switch
.end method
