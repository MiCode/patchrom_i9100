.class Landroid/net/wifi/WifiStateMachine$DriverLoadedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverLoadedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 3416
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 3419
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->getName()Ljava/lang/String;

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

    .line 3420
    :cond_0
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3421
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3424
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3425
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 3476
    :goto_0
    return v3

    .line 3427
    :sswitch_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    :sswitch_1
    move v3, v4

    .line 3476
    goto :goto_0

    .line 3437
    :sswitch_2
    :try_start_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "STA"

    invoke-interface {v5, v6, v7}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3447
    :goto_2
    :try_start_1
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 3454
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3461
    :goto_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->startSupplicant(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3462
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Supplicant start successful"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3463
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 3464
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3438
    :catch_0
    move-exception v0

    .line 3439
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to reload STA firmware "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 3455
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 3456
    .local v2, re:Landroid/os/RemoteException;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to change interface settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 3457
    .end local v2           #re:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 3458
    .local v1, ie:Ljava/lang/IllegalStateException;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to change interface settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 3466
    .end local v1           #ie:Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Failed to start supplicant!"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3467
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v7, 0x20002

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8, v3}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3471
    :sswitch_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3425
    nop

    :sswitch_data_0
    .sparse-switch
        0x20002 -> :sswitch_0
        0x2000b -> :sswitch_2
        0x20015 -> :sswitch_3
        0x20097 -> :sswitch_1
    .end sparse-switch
.end method
