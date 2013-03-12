.class Landroid/net/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4705
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 4708
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4709
    :cond_0
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4710
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "message"

    .prologue
    .line 4713
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4715
    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 4930
    const/4 v9, 0x0

    .line 4932
    :goto_0
    return v9

    .line 4717
    :sswitch_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AUTHENTICATION_FAILURE_EVENT WpsInprogress : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4721
    :cond_1
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 4722
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v10

    const v11, 0x24007

    iget v12, p1, Landroid/os/Message;->arg1:I

    iget v13, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/net/wifi/SupplicantStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 4932
    :cond_2
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 4730
    :sswitch_1
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v9, p1}, Landroid/net/wifi/WifiStateMachine;->access$8700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v6

    .line 4733
    .local v6, state:Landroid/net/wifi/SupplicantState;
    invoke-static {v6}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 4734
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v9, v10, :cond_3

    .line 4735
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;)V

    .line 4737
    :cond_3
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v10, "Detected an interface down, restart driver"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4738
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4739
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x2000d

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 4748
    :cond_4
    sget-object v9, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne v6, v9, :cond_6

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v9, v10, :cond_6

    .line 4750
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v10, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4751
    :cond_5
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;)V

    .line 4752
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4757
    :cond_6
    sget-object v9, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v6, v9, :cond_2

    .line 4758
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/StateChangeResult;

    .line 4759
    .local v7, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    iget v10, v7, Landroid/net/wifi/StateChangeResult;->networkId:I

    new-instance v11, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v11}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4762
    .local v4, private_key:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 4763
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v10, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$12302(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 4772
    .end local v4           #private_key:Ljava/lang/String;
    .end local v6           #state:Landroid/net/wifi/SupplicantState;
    .end local v7           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :sswitch_2
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v9

    const v10, 0x2400e

    invoke-virtual {v9, v10}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto/16 :goto_1

    .line 4775
    :sswitch_3
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 4778
    :sswitch_4
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 4781
    :sswitch_5
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 4789
    :sswitch_6
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v10, "Connect network in connect Mode state WIFISTATEMACHINE"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4790
    :cond_7
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 4792
    .local v2, netId:I
    const/4 v0, 0x0

    .line 4794
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 4795
    .local v1, edmArgs:Landroid/os/Bundle;
    const-string v9, "config"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4796
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    const-string v9, "pid"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 4797
    .local v3, pid:I
    if-eqz v0, :cond_8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v9, v0, v3}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_8

    .line 4798
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x25002

    const/4 v11, 0x0

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 4808
    :cond_8
    if-eqz v0, :cond_9

    .line 4809
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v5

    .line 4810
    .local v5, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v5}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v2

    .line 4821
    .end local v5           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_9
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->reconnect()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4824
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v9

    const v10, 0x25001

    invoke-virtual {v9, v10}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 4825
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x25003

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 4827
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 4829
    :cond_a
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to connect config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " netId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4830
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x25002

    const/4 v11, 0x0

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 4836
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #edmArgs:Landroid/os/Bundle;
    .end local v2           #netId:I
    .end local v3           #pid:I
    :sswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WpsInfo;

    .line 4838
    .local v8, wpsInfo:Landroid/net/wifi/WpsInfo;
    iget v9, v8, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v9, :pswitch_data_0

    .line 4849
    new-instance v5, Landroid/net/wifi/WpsResult;

    sget-object v9, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v5, v9}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 4850
    .local v5, result:Landroid/net/wifi/WpsResult;
    const-string v9, "WifiStateMachine"

    const-string v10, "Invalid setup for WPS"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4853
    :goto_2
    iget-object v9, v5, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    sget-object v10, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    if-ne v9, v10, :cond_b

    .line 4854
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v10, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$12002(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4855
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x2500b

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v9, p1, v10, v5}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 4856
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$12700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 4840
    .end local v5           #result:Landroid/net/wifi/WpsResult;
    :pswitch_0
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v5

    .line 4841
    .restart local v5       #result:Landroid/net/wifi/WpsResult;
    goto :goto_2

    .line 4843
    .end local v5           #result:Landroid/net/wifi/WpsResult;
    :pswitch_1
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v5

    .line 4844
    .restart local v5       #result:Landroid/net/wifi/WpsResult;
    goto :goto_2

    .line 4846
    .end local v5           #result:Landroid/net/wifi/WpsResult;
    :pswitch_2
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v5

    .line 4847
    .restart local v5       #result:Landroid/net/wifi/WpsResult;
    goto :goto_2

    .line 4858
    :cond_b
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to start WPS with config "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4859
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x2500c

    const/4 v11, 0x0

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 4864
    .end local v5           #result:Landroid/net/wifi/WpsResult;
    .end local v8           #wpsInfo:Landroid/net/wifi/WpsInfo;
    :sswitch_8
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    .line 4866
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 4868
    :sswitch_9
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v10, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$12002(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4869
    :cond_c
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v10, "Network connection established"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4870
    :cond_d
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v10, p1, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$5602(Landroid/net/wifi/WifiStateMachine;I)I

    .line 4871
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v10, v9}, Landroid/net/wifi/WifiStateMachine;->access$5502(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 4873
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 4874
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 4876
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$12800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 4879
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$9600(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 4880
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$12900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4881
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4884
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->handleEapTlsFinish(Z)V

    goto/16 :goto_1

    .line 4889
    :sswitch_a
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v10, "Network connection lost"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4890
    :cond_e
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;)V

    .line 4891
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4894
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->handleEapTlsFinish(Z)V

    goto/16 :goto_1

    .line 4902
    :sswitch_b
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine;->handleEapTlsKeystoreRequired()V

    goto/16 :goto_1

    .line 4927
    :sswitch_c
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 4715
    :sswitch_data_0
    .sparse-switch
        0x2004a -> :sswitch_3
        0x2004b -> :sswitch_4
        0x2004c -> :sswitch_5
        0x20118 -> :sswitch_b
        0x24003 -> :sswitch_9
        0x24004 -> :sswitch_a
        0x24005 -> :sswitch_8
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_0
        0x2400e -> :sswitch_2
        0x2406f -> :sswitch_c
        0x25001 -> :sswitch_6
        0x2500a -> :sswitch_7
    .end sparse-switch

    .line 4838
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
