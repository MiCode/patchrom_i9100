.class Lcom/android/settings/wifi/WifiConnectionMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "WifiConnectionMonitorService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive, Action : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    const-string v15, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 64
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 65
    const-string v15, "wifi_state"

    const/16 v16, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 66
    .local v14, state:I
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "WifiConnectionMonitorService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive WifiState = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 68
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->startSearch()V

    .line 160
    .end local v14           #state:I
    :cond_2
    :goto_0
    return-void

    .line 71
    :cond_3
    const-string v15, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 72
    const-string v15, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 73
    .local v8, info:Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 74
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->startMonitor()V

    goto :goto_0

    .line 76
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->stopMonitor()V

    goto :goto_0

    .line 78
    .end local v8           #info:Landroid/net/NetworkInfo;
    :cond_5
    const-string v15, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 80
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 81
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 82
    monitor-exit v16

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 85
    :cond_6
    :try_start_1
    const-string v15, "wifiConfiguration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 86
    .local v10, network:Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_a

    .line 87
    const-string v15, "changeReason"

    const/16 v17, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 88
    .local v11, reason:I
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "WifiConnectionMonitorService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive, SSID:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", status:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",  reason:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_7
    const/4 v15, 0x1

    if-ne v11, v15, :cond_9

    .line 91
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    .end local v11           #reason:I
    :cond_8
    :goto_1
    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 92
    .restart local v11       #reason:I
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 93
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v5

    .line 96
    .local v5, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v15, "WifiConnectionMonitorService"

    const-string v17, "removeDoubleQuotes - NullPointerException"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    .end local v5           #e:Ljava/lang/NullPointerException;
    .end local v11           #reason:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 100
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_b

    .line 101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 103
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_c
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 104
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 105
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 111
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #network:Landroid/net/wifi/WifiConfiguration;
    :cond_d
    const-string v15, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 113
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 114
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 115
    monitor-exit v16

    goto/16 :goto_0

    .line 137
    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v15

    .line 118
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v13

    .line 119
    .local v13, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 120
    .restart local v4       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v13, :cond_f

    if-nez v4, :cond_10

    .line 121
    :cond_f
    monitor-exit v16

    goto/16 :goto_0

    .line 124
    :cond_10
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 125
    .local v12, result:Landroid/net/wifi/ScanResult;
    iget-object v15, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    iget v15, v12, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$200(Lcom/android/settings/wifi/WifiConnectionMonitorService;)I

    move-result v17

    add-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    if-lt v15, v0, :cond_11

    .line 126
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_12

    const-string v15, "WifiConnectionMonitorService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive, SSID:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", RSSI:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", threashold:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$200(Lcom/android/settings/wifi/WifiConnectionMonitorService;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V

    .line 129
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 130
    .restart local v3       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_13

    iget v15, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_13

    iget-object v15, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto/16 :goto_3

    .line 137
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #result:Landroid/net/wifi/ScanResult;
    :cond_14
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 138
    .end local v4           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v13           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_15
    const-string v15, "android.net.wifi.REMOVE_BLACKLIST"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 139
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 140
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 141
    monitor-exit v16

    goto/16 :goto_0

    .line 158
    :catchall_2
    move-exception v15

    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v15

    .line 143
    :cond_16
    :try_start_9
    const-string v15, "netId"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 144
    .local v9, netId:I
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_17

    const-string v15, "WifiConnectionMonitorService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive, REMOVE_BLACKLIST netid : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 147
    .restart local v4       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_18

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 149
    monitor-exit v16

    goto/16 :goto_0

    .line 152
    :cond_18
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 153
    .restart local v3       #config:Landroid/net/wifi/WifiConfiguration;
    iget v15, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v15, v9, :cond_19

    .line 154
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V

    .line 155
    monitor-exit v16

    goto/16 :goto_0

    .line 158
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1a
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0
.end method
