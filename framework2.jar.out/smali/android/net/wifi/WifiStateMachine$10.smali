.class Landroid/net/wifi/WifiStateMachine$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2552
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 2555
    const-string v3, "cwState"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2556
    .local v2, state:I
    if-ne v2, v6, :cond_0

    .line 2557
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_STATE : mWiFiToCWEventReceiver :No CW so far"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :goto_0
    return-void

    .line 2560
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput v2, v3, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    .line 2562
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CW_STATE : mWiFiToCWEventReceiver :retu im state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    if-eqz v2, :cond_1

    .line 2564
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CW_STATE : mWiFiToCWEventReceiver :return im state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2569
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    if-nez v3, :cond_3

    .line 2573
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : mWiFiToCWEventReceiver :TURN OFF WIFI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->cwStopWifiAfterCWDreg()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)V

    .line 2628
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$1102(Landroid/net/wifi/WifiStateMachine;I)I

    goto :goto_0

    .line 2575
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 2579
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : wifiCWConnMgrStateChange :TURN OFF WIFI From UI WIFI Enabler"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2582
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 2586
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : wifiCWConnMgrStateChange :CW_WIFI_DEVICE_SHUTDOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2588
    :cond_5
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 2589
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x20018

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2590
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->cwStopWifiAfterCWDreg()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)V

    .line 2591
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : wifiCWConnMgrStateChange :TURN OFF WIFI Airplane mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2594
    :cond_6
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 2598
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : wifiCWConnMgrStateChange :DISCONNECT WIFI mstoppingtype == 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2601
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0xc

    iput v3, v1, Landroid/os/Message;->what:I

    .line 2602
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2604
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_1

    .line 2606
    .end local v0           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v1           #msg:Landroid/os/Message;
    :cond_7
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 2610
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : wifiCWConnMgrStateChange :FORGET WIFI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CW_SISO : WifiStateTracker : removeNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->forgetNetwork(I)V

    .line 2613
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$1102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2614
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$1402(Landroid/net/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 2615
    :cond_8
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 2620
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : wifiCWConnMgrStateChange :re-enable case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CW_SISO : WifiStateTracker : re-enable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I
    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$1402(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2625
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : WifiStateTracker : re-enable done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : WifiStateTracker : re-enable called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
