.class Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;
.super Lcom/android/internal/util/State;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService$WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Enter InactiveState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "message"

    .prologue
    const/4 v11, 0x2

    const-wide/16 v9, 0x3e8

    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1374
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1375
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1376
    .local v1, intent:Landroid/content/Intent;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1508
    :goto_0
    return v3

    .line 1387
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "Enable Wi-Fi Display dialog"

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1388
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1389
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->startWfdRoutine()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)V

    .line 1390
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "p2p already enable! so setWfdParam..."

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1396
    :goto_1
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$3602(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1398
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1399
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v3, v11}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 1401
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$700(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$4100(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1402
    :cond_0
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendWfdPickerStartBroadCast()V

    :cond_1
    :goto_2
    move v3, v4

    .line 1508
    goto :goto_0

    .line 1392
    :cond_2
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "now p2p enable!"

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1394
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->enableWiFiP2P()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4000(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto :goto_1

    .line 1407
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "recv wfd start msg...START_RTSP"

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1408
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showNotification()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4200(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    .line 1410
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$2300(Lcom/samsung/wfd/WfdService;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1411
    const-string v3, "freq"

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$2300(Lcom/samsung/wfd/WfdService;)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1412
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putExtra frequency:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v6, v6, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$2300(Lcom/samsung/wfd/WfdService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1416
    :cond_3
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$3800(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$4300(Lcom/samsung/wfd/WfdService;)Landroid/content/ServiceConnection;

    move-result-object v5

    const/16 v6, 0x41

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 1417
    .local v2, isConnected:Z
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindService WFDSourceService,  isConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1418
    if-eqz v2, :cond_1

    .line 1419
    const-string v3, "wlan.wfd.status"

    const-string v5, "connected"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_2

    .line 1425
    .end local v2           #isConnected:Z
    :sswitch_2
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "recv weak network notification"

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1426
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showWeakNetworkNotification()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4400(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto/16 :goto_2

    .line 1430
    :sswitch_3
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "recv bluetooth or earphone on notification"

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1431
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showTerminatedByAudioNotification()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4500(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto/16 :goto_2

    .line 1435
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "Disble Wi-Fi Display"

    invoke-virtual {v5, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1437
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->WfdStopHDCPSuspend()V
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$4600(Lcom/samsung/wfd/WfdService;)V

    .line 1439
    const-string v5, "wlan.wfd.status"

    const-string v6, "disconnected"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1442
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1445
    :try_start_0
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "try to stopService..."

    invoke-virtual {v5, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1446
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mContext:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v7, v7, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$3800(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1448
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$3800(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v6, v6, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$4300(Lcom/samsung/wfd/WfdService;)Landroid/content/ServiceConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 1456
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1457
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 1458
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;I)V

    .line 1459
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v5, v8}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4700(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    .line 1460
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    :goto_3
    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_2

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "catch Exception @ stopService"

    invoke-virtual {v5, v6}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1454
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 1456
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1457
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 1458
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;I)V

    .line 1459
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v5, v8}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4700(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    .line 1460
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    goto :goto_3

    .line 1454
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 1456
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1457
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 1458
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;I)V

    .line 1459
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v5, v8}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4700(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    .line 1460
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1454
    :cond_4
    throw v4

    .line 1465
    :cond_5
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v3, v11}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4700(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    goto/16 :goto_2

    .line 1471
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "recv wfd stop msg...STOP_RTSP"

    invoke-virtual {v5, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1473
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1475
    :try_start_2
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "try to stopService..!"

    invoke-virtual {v5, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1476
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mContext:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v7, v7, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$3800(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1478
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$3800(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v6, v6, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$4300(Lcom/samsung/wfd/WfdService;)Landroid/content/ServiceConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1483
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    :goto_4
    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1488
    :cond_6
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4700(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    goto/16 :goto_2

    .line 1479
    :catch_1
    move-exception v0

    .line 1480
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "catch Exception @ stopService"

    invoke-virtual {v5, v6}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1483
    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    goto :goto_4

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v5, v3}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    throw v4

    .line 1492
    :sswitch_6
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "Resume RTSP session"

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1497
    :sswitch_7
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "Pause RTSP session"

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1502
    :sswitch_8
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->updateResources()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4800(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto/16 :goto_2

    .line 1376
    :sswitch_data_0
    .sparse-switch
        0x22068 -> :sswitch_4
        0x2206b -> :sswitch_1
        0x2206c -> :sswitch_5
        0x2206d -> :sswitch_6
        0x2206e -> :sswitch_7
        0x2206f -> :sswitch_0
        0x2207a -> :sswitch_2
        0x2207c -> :sswitch_3
        0x22080 -> :sswitch_8
    .end sparse-switch
.end method
