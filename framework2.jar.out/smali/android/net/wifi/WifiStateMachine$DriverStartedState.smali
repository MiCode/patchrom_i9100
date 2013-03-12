.class Landroid/net/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4168
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4171
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->getName()Ljava/lang/String;

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

    .line 4172
    :cond_0
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4174
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v0, v4}, Landroid/net/wifi/WifiStateMachine;->access$9202(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4175
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v0, v3}, Landroid/net/wifi/WifiStateMachine;->access$9302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4176
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 4183
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    .line 4185
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_WLAN_SEC_5GhZ_COUNTRY_CODE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TN"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4188
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v5, v3}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 4193
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$9500(Landroid/net/wifi/WifiStateMachine;)V

    .line 4195
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$9600(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 4198
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    .line 4201
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$9700(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4202
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 4207
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 4209
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4210
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    .line 4211
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 4212
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4226
    :goto_2
    return-void

    .line 4190
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$9400(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_0

    .line 4204
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto :goto_1

    .line 4214
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    .line 4215
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->reconnect()Z

    .line 4219
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    .line 4220
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$10200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4587
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->getName()Ljava/lang/String;

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

    .line 4588
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$9202(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4589
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 4590
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v0, v3}, Landroid/net/wifi/WifiStateMachine;->access$11202(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 4594
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 16
    .parameter "message"

    .prologue
    .line 4229
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4230
    :cond_0
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 4581
    const/4 v10, 0x0

    .line 4583
    :goto_0
    return v10

    .line 4232
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2

    const/4 v10, 0x1

    :goto_1
    #setter for: Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z
    invoke-static {v11, v10}, Landroid/net/wifi/WifiStateMachine;->access$10302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4233
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->setScanMode(Z)Z

    .line 4583
    :cond_1
    :goto_2
    const/4 v10, 0x1

    goto :goto_0

    .line 4232
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 4236
    :sswitch_1
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v6, 0x1

    .line 4237
    .local v6, forceActive:Z
    :goto_3
    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 4238
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiNative;->setScanMode(Z)Z

    .line 4240
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->scan()Z

    .line 4241
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 4242
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->setScanMode(Z)Z

    .line 4244
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v11, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$7602(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_2

    .line 4236
    .end local v6           #forceActive:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 4247
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 4248
    .local v4, country:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set country code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4249
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 4250
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to set country code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4254
    .end local v4           #country:Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 4255
    .local v3, band:I
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set frequency band "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4256
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/net/wifi/WifiNative;->setBand(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 4258
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Wifi_Roaming_Disable"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 4259
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->setRoamMode(I)Z

    .line 4261
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$10400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4263
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    goto/16 :goto_2

    .line 4265
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to set frequency band "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4269
    .end local v3           #band:I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_4
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v11, v10}, Landroid/net/wifi/WifiStateMachine;->access$1802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4271
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    goto/16 :goto_2

    .line 4269
    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    .line 4274
    :sswitch_5
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 4277
    .local v9, mode:I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    .line 4278
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v11, "Already in delayed stop"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4281
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v11, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$9302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4282
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$10508(Landroid/net/wifi/WifiStateMachine;)I

    .line 4283
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v10

    if-eqz v10, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Delayed stop message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4285
    :cond_c
    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 4287
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x20012

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 4290
    :cond_d
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    const/4 v11, 0x0

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4291
    .local v5, driverStopIntent:Landroid/content/Intent;
    const-string v10, "DelayedStopCounter"

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4292
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const/high16 v13, 0x800

    invoke-static {v11, v12, v5, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$10602(Landroid/net/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 4296
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$10700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$10600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_2

    .line 4301
    .end local v5           #driverStopIntent:Landroid/content/Intent;
    .end local v9           #mode:I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4302
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v11, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$9302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4303
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$10508(Landroid/net/wifi/WifiStateMachine;)I

    .line 4304
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4305
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v11, "Delayed stop ignored due to start"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4309
    :sswitch_7
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v10

    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delayed stop "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4310
    :cond_e
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 4311
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$10900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v11

    if-eq v10, v11, :cond_f

    .line 4312
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 4313
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;)V

    .line 4315
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4316
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->stopDriver()Z

    .line 4317
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$11000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4318
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2

    .line 4321
    :sswitch_8
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    .line 4322
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    goto/16 :goto_2

    .line 4323
    :cond_10
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-nez v10, :cond_11

    .line 4324
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    goto/16 :goto_2

    .line 4326
    :cond_11
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v11, "Illegal arugments to CMD_START_PACKET_FILTERING"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4330
    :sswitch_9
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    .line 4331
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_2

    .line 4332
    :cond_12
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-nez v10, :cond_13

    .line 4333
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_2

    .line 4335
    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v11, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4339
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 4340
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    .line 4342
    :cond_14
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2

    .line 4345
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto/16 :goto_2

    .line 4348
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_15

    const/4 v10, 0x1

    :goto_5
    #setter for: Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z
    invoke-static {v11, v10}, Landroid/net/wifi/WifiStateMachine;->access$2302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4349
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4351
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto/16 :goto_2

    .line 4348
    :cond_15
    const/4 v10, 0x0

    goto :goto_5

    .line 4355
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    goto/16 :goto_2

    .line 4360
    :sswitch_e
    const/4 v8, -0x1

    .line 4361
    .local v8, intResult:I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    .line 4364
    .local v7, innerMsg:Landroid/os/Message;
    if-nez v7, :cond_16

    .line 4365
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v11, "DriverStatedState::CMD_SEC_API - Invalid inner msg"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4369
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DriverStatedState::CMD_SEC_API - inner msg ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4371
    iget v10, v7, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_1

    goto/16 :goto_2

    .line 4373
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4375
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4378
    :sswitch_10
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4379
    .local v2, args:Landroid/os/Bundle;
    if-eqz v2, :cond_17

    .line 4380
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x65

    const-string v12, "level"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4382
    :cond_17
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4385
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x66

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4387
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4390
    :sswitch_12
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4391
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_18

    .line 4392
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x67

    const-string v12, "level"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4394
    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4397
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x68

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4399
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4402
    :sswitch_14
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4403
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_19

    .line 4404
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x69

    const-string v12, "time"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4406
    :cond_19
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4409
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x6a

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4411
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4414
    :sswitch_16
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4415
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_1a

    .line 4416
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x6b

    const-string v12, "mode"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4418
    :cond_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4421
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_17
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4422
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_1b

    .line 4423
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x6d

    const-string v12, "chinfo"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v8

    .line 4425
    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4428
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x82

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4430
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4433
    :sswitch_19
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4434
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_1c

    .line 4435
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x83

    const-string v12, "time"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4437
    :cond_1c
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4440
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x84

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4442
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4445
    :sswitch_1b
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4446
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_1d

    .line 4447
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x85

    const-string v12, "time"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4449
    :cond_1d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4452
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x86

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4454
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4457
    :sswitch_1d
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4458
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_1e

    .line 4459
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x87

    const-string v12, "time"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4461
    :cond_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4464
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x88

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4466
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4469
    :sswitch_1f
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4470
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_1f

    .line 4471
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x89

    const-string v12, "num"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4473
    :cond_1f
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4476
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_20
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4477
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_20

    .line 4478
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x97

    const-string v12, "param"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v8

    .line 4480
    :cond_20
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4483
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_21
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4484
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_21

    .line 4485
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x96

    const-string v12, "param"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v8

    .line 4487
    :cond_21
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4490
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_22
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4491
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_22

    .line 4492
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xa1

    const-string v12, "country"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v8

    .line 4494
    :cond_22
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4497
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xa2

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4499
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4502
    :sswitch_24
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4503
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_23

    .line 4504
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xa3

    const-string v12, "band"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4506
    :cond_23
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4509
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xaa

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4511
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4514
    :sswitch_26
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4515
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_24

    .line 4516
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xab

    const-string v12, "mode"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4518
    :cond_24
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4521
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xac

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4523
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4526
    :sswitch_28
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4527
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_25

    .line 4528
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xad

    const-string v12, "mode"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4530
    :cond_25
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4533
    .end local v2           #args:Landroid/os/Bundle;
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xae

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v8

    .line 4535
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4538
    :sswitch_2a
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4539
    .restart local v2       #args:Landroid/os/Bundle;
    if-eqz v2, :cond_26

    .line 4540
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xaf

    const-string v12, "mode"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v8

    .line 4542
    :cond_26
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_2

    .line 4549
    .end local v2           #args:Landroid/os/Bundle;
    .end local v7           #innerMsg:Landroid/os/Message;
    .end local v8           #intResult:I
    :sswitch_2b
    const/4 v1, 0x0

    .line 4550
    .local v1, StringResult:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    .line 4553
    .restart local v7       #innerMsg:Landroid/os/Message;
    if-nez v7, :cond_27

    .line 4554
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v11, "DriverStatedState::CMD_SEC_STRING_API - Invalid inner msg"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4558
    :cond_27
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DriverStatedState::CMD_SEC_STRING_API - inner msg ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4560
    iget v10, v7, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_2

    goto/16 :goto_2

    .line 4572
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v1

    .line 4574
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 4562
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0x6c

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v1

    .line 4564
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 4567
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    const/16 v11, 0xa0

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v1

    .line 4569
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 4230
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_6
        0x2000e -> :sswitch_5
        0x20012 -> :sswitch_7
        0x2001f -> :sswitch_4
        0x20047 -> :sswitch_1
        0x20049 -> :sswitch_0
        0x2004d -> :sswitch_c
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_8
        0x20055 -> :sswitch_9
        0x20056 -> :sswitch_a
        0x20057 -> :sswitch_b
        0x2005a -> :sswitch_3
        0x2007d -> :sswitch_d
        0x2012d -> :sswitch_e
        0x2012e -> :sswitch_2b
    .end sparse-switch

    .line 4371
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_f
        0x65 -> :sswitch_10
        0x66 -> :sswitch_11
        0x67 -> :sswitch_12
        0x68 -> :sswitch_13
        0x69 -> :sswitch_14
        0x6a -> :sswitch_15
        0x6b -> :sswitch_16
        0x6d -> :sswitch_17
        0x82 -> :sswitch_18
        0x83 -> :sswitch_19
        0x84 -> :sswitch_1a
        0x85 -> :sswitch_1b
        0x86 -> :sswitch_1c
        0x87 -> :sswitch_1d
        0x88 -> :sswitch_1e
        0x89 -> :sswitch_1f
        0x96 -> :sswitch_20
        0x97 -> :sswitch_21
        0xa1 -> :sswitch_22
        0xa2 -> :sswitch_23
        0xa3 -> :sswitch_24
        0xaa -> :sswitch_25
        0xab -> :sswitch_26
        0xac -> :sswitch_27
        0xad -> :sswitch_28
        0xae -> :sswitch_29
        0xaf -> :sswitch_2a
    .end sparse-switch

    .line 4560
    :sswitch_data_2
    .sparse-switch
        0x21 -> :sswitch_2c
        0x6c -> :sswitch_2d
        0xa0 -> :sswitch_2e
    .end sparse-switch
.end method
