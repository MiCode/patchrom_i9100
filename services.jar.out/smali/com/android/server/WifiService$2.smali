.class Lcom/android/server/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 651
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 653
    const-string v8, "wifi_state"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 656
    .local v7, wifiState:I
    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    #setter for: Lcom/android/server/WifiService;->mWifiEnabled:Z
    invoke-static {v9, v8}, Lcom/android/server/WifiService;->access$1202(Lcom/android/server/WifiService;Z)Z

    .line 659
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    .line 814
    .end local v7           #wifiState:I
    :cond_0
    :goto_1
    return-void

    .line 656
    .restart local v7       #wifiState:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 674
    .end local v7           #wifiState:I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 676
    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    iput-object v8, v9, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 679
    sget-object v8, Lcom/android/server/WifiService$10;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v9, v9, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 707
    :pswitch_0
    iget-object v9, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v8, v8, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v10, :cond_3

    const/4 v8, 0x1

    :goto_2
    #setter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v9, v8}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 709
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 710
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 707
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 723
    :cond_4
    const-string v8, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 724
    sget v8, Landroid/net/wifi/WifiStateMachine;->WIFI_DISCONNECT_THRESHOLD:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 725
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 727
    :cond_5
    sget v8, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 728
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->checkScanNet()V

    .line 730
    :cond_6
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->checkAndSetNotification()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 731
    :cond_7
    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 732
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateResources()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)V

    goto/16 :goto_1

    .line 733
    :cond_8
    const-string v8, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 734
    const-string v8, "nid"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 735
    .local v6, nid:I
    const v8, 0x10806b7

    if-ne v6, v8, :cond_0

    .line 736
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/WifiService;->mIsShowingNotification:Z
    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$1802(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_1

    .line 747
    .end local v6           #nid:I
    :cond_9
    const-string v8, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 748
    const-string v8, "NUM"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 749
    .local v3, clientNum:I
    if-lez v3, :cond_a

    .line 750
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v8}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 751
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 752
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    goto/16 :goto_1

    .line 755
    :cond_a
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v8}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 756
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/WifiService;->mNeedBooster:Z
    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 757
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    goto/16 :goto_1

    .line 760
    .end local v3           #clientNum:I
    :cond_b
    const-string v8, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 761
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 762
    .local v4, displayState:I
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.intent.action.WIFI_DISPLAY displayState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 764
    .local v5, msg:Landroid/os/Message;
    const/16 v8, 0x12

    iput v8, v5, Landroid/os/Message;->what:I

    .line 766
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 767
    .local v1, args:Landroid/os/Bundle;
    const-string v9, "stop"

    const/4 v8, 0x1

    if-ne v4, v8, :cond_c

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 768
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 769
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    .line 770
    if-nez v4, :cond_0

    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    goto/16 :goto_1

    .line 767
    :cond_c
    const/4 v8, 0x0

    goto :goto_3

    .line 771
    .end local v1           #args:Landroid/os/Bundle;
    .end local v4           #displayState:I
    .end local v5           #msg:Landroid/os/Message;
    :cond_d
    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 772
    const-string v8, "android.bluetooth.adapter.extra.STATE"

    const/16 v9, 0xa

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 773
    .local v2, btPowerState:I
    const/16 v8, 0xc

    if-ne v2, v8, :cond_e

    .line 774
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1976(I)I

    .line 775
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->determineBoosterMode()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)V

    goto/16 :goto_1

    .line 776
    :cond_e
    const/16 v8, 0xa

    if-ne v2, v8, :cond_0

    .line 777
    const/4 v8, -0x3

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1972(I)I

    .line 778
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->determineBoosterMode()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)V

    goto/16 :goto_1

    .line 808
    .end local v2           #btPowerState:I
    :cond_f
    const-string v8, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 810
    const-string v8, "WifiService"

    const-string v9, "Receive IP Policy Intent"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->handleSecurityPolicy()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)V

    goto/16 :goto_1

    .line 679
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
