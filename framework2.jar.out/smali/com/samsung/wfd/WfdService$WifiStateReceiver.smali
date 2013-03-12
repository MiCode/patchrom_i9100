.class Lcom/samsung/wfd/WfdService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method private constructor <init>(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 513
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, action:Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent recieved "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 516
    const-string v9, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 518
    const-string v9, "wifi_p2p_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 520
    .local v8, state:I
    packed-switch v8, :pswitch_data_0

    .line 858
    .end local v8           #state:I
    :cond_0
    :goto_0
    return-void

    .line 523
    .restart local v8       #state:I
    :pswitch_0
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$202(Lcom/samsung/wfd/WfdService;Z)Z

    .line 524
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 525
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 527
    :cond_1
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 528
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->startWfdRoutine()V
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)V

    goto :goto_0

    .line 530
    :cond_2
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "Wfd is not enabled from Picker"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :pswitch_1
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$202(Lcom/samsung/wfd/WfdService;Z)Z

    .line 536
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 537
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mConnectedDeviceMacAddr:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 547
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x22068

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 556
    .end local v8           #state:I
    :cond_3
    const-string v9, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 557
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    .line 558
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "IP"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1002(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 560
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 561
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dongle IP:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 564
    :cond_4
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "URL"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1102(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 566
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 567
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dongle Update URL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 570
    :cond_5
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "count"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1202(Lcom/samsung/wfd/WfdService;I)I

    .line 572
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:I
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)I

    move-result v9

    if-eqz v9, :cond_6

    .line 573
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audio count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 576
    :cond_6
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "VER"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1302(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 578
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 579
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dongle ver:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 582
    :cond_7
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    new-instance v11, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;

    invoke-direct {v11, p0}, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;-><init>(Lcom/samsung/wfd/WfdService$WifiStateReceiver;)V

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 600
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x5

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 601
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x1

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;I)V

    .line 602
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastDongleVerToFota()V
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1700(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 604
    :cond_8
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd WFD session established intent in wrong state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :cond_9
    const-string v9, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 607
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receive from Engine...WFD_SESSION_TERMINATED  state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 608
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_a

    .line 609
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "send wfd stop msg"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 610
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 611
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 612
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;I)V

    .line 613
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x2206c

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 614
    :cond_a
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_b

    .line 615
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "send disable wfd msg"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 616
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x22068

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 618
    :cond_b
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd WFD session terminated intent in wrong state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    :cond_c
    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 621
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, " onReceive << WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 623
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 624
    .local v6, networkInfo:Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v9, "wifiP2pInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pInfo;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v10, v9}, Lcom/samsung/wfd/WfdService;->access$1902(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 626
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 627
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 634
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "WIFI_P2P_CONNECTION_CHANGED_ACTION >> isConnected() true"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 635
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2002(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 645
    :cond_d
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "WIFI_P2P_CONNECTION_CHANGED_ACTION >> isConnected() false"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 646
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2002(Lcom/samsung/wfd/WfdService;Z)Z

    .line 647
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mConnectedDeviceMacAddr:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 648
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2100(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 649
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "don\'t show disconnect popup..."

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 650
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v9}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    goto/16 :goto_0

    .line 653
    :cond_e
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_0

    .line 654
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "Wifip2p disconnect..."

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 655
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v10, 0x2207b

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2200(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 658
    .end local v6           #networkInfo:Landroid/net/NetworkInfo;
    :cond_f
    const-string v9, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 659
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 662
    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v9, "wifiP2pGroupInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pGroup;

    iput-object v9, v10, Lcom/samsung/wfd/WfdService;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 664
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v9, v9, Lcom/samsung/wfd/WfdService;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-nez v9, :cond_10

    .line 665
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "EXTRA_WIFI_P2P_GROUP_INFO is null!!! check!!"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 669
    :cond_10
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v10, v10, Lcom/samsung/wfd/WfdService;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2302(Lcom/samsung/wfd/WfdService;I)I

    .line 670
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wifi P2P_CONNECTION_ESTABLISHED >> Wfd frequency:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2300(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 672
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_11

    .line 673
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x3

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 674
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 675
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "send wfd start msg"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 676
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x2206b

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 679
    :cond_11
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd Wifi P2P connected intent in wrong state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    :cond_12
    const-string v9, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 682
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 684
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2302(Lcom/samsung/wfd/WfdService;I)I

    .line 685
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "wifi P2P_CONNECTION_TERMINATED"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 687
    :cond_13
    const-string v9, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 688
    const-string v9, "res"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 689
    .local v7, resolution:I
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$2500(Lcom/samsung/wfd/WfdService;)I

    move-result v10

    and-int/2addr v10, v7

    #setter for: Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2402(Lcom/samsung/wfd/WfdService;I)I

    .line 690
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd WFD sink resln bitmask:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " SrcRslnBitMsk:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2500(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " UpdatedRslnBitMsk:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2400(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 692
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 693
    .end local v7           #resolution:I
    :cond_14
    const-string v9, "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 694
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "WFD param changed notification"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 696
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 697
    :cond_15
    const-string v9, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 698
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "res"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mCurrentResln:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2702(Lcom/samsung/wfd/WfdService;I)I

    .line 699
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "3D"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 700
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd resolution from app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mCurrentResln:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2700(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " 3D:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 702
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "Control"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2902(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 703
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2900(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2900(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "terminate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 704
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recvd SessionControl from app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2900(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 705
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v9}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    goto/16 :goto_0

    .line 707
    :cond_16
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 709
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 711
    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1a

    .line 712
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 714
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "AP is connected!"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 716
    const-string v9, "wifiInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiInfo;

    .line 718
    .local v5, mWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v5, :cond_17

    .line 719
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "EXTRA_WIFI_INFO is null!!! check!!"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    :cond_17
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$3002(Lcom/samsung/wfd/WfdService;I)I

    .line 725
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 726
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AP is connected! FreqAp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$3000(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ? FreqWfd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2300(Lcom/samsung/wfd/WfdService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 728
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$3000(Lcom/samsung/wfd/WfdService;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v10}, Lcom/samsung/wfd/WfdService;->access$2300(Lcom/samsung/wfd/WfdService;)I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 729
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "They are different. Now WfdService will be restarted!!"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 730
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v10, 0x22073

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2200(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 734
    :cond_18
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "WfdService is not running..."

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    .end local v5           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_19
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$3002(Lcom/samsung/wfd/WfdService;I)I

    .line 739
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "AP is disconnected!"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 752
    :cond_1a
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "NetworkInfo is null!! check!!"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_1b
    const-string v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 755
    const/16 v1, 0xe

    .line 756
    .local v1, apState:I
    const-string v9, "wifi_state"

    const/16 v10, 0xe

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 757
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 758
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$3100(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0xb

    if-ne v1, v9, :cond_0

    .line 759
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "Wait done for Hotspot off!!! Now Wfd is start!"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 760
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$3102(Lcom/samsung/wfd/WfdService;Z)Z

    .line 761
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x2206f

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 763
    .end local v1           #apState:I
    :cond_1c
    const-string v9, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 764
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$3202(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 765
    :cond_1d
    const-string v9, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 767
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "URL"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$1102(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 769
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 770
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dongle Update URL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 771
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v10, 0x22078

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2200(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 773
    :cond_1e
    const-string v9, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 774
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "display toast for weak network"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 775
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x2207a

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 776
    :cond_1f
    const-string v9, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 778
    const-string v9, "cause"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 779
    .local v3, data:I
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WFD Engine noti Error << data:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 782
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v10, 0x2207b

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2200(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 783
    .end local v3           #data:I
    :cond_20
    const-string v9, "com.samsung.wfd.RESULT_WFD_UPDATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 785
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "result"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$2102(Lcom/samsung/wfd/WfdService;Z)Z

    .line 786
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_RESULT_WFD_UPDATE << result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v11}, Lcom/samsung/wfd/WfdService;->access$2100(Lcom/samsung/wfd/WfdService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 788
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$2100(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 789
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "dongle update is failed..."

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 794
    :cond_21
    const-string v9, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_BROKER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 795
    const-string v9, "cause"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 796
    .local v2, cause:I
    sparse-switch v2, :sswitch_data_0

    .line 812
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "broker notify that picker is normally goning!"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 815
    :goto_1
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->sendToWfdPickerControlInfo(I)V
    invoke-static {v9, v2}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 801
    :sswitch_0
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "broker notify that WfdService should control to finish picker! cause:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 808
    :sswitch_1
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "broker notify that WfdService proceed setWfdEnabled("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 809
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v9, v2}, Lcom/samsung/wfd/WfdService;->setWfdEnabled(I)Z

    goto :goto_1

    .line 816
    .end local v2           #cause:I
    :cond_22
    const-string v9, "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 817
    const-string v9, "cause"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 818
    .restart local v3       #data:I
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WFD Engine HDCP result >> data:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 820
    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 822
    :pswitch_2
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "connect with non-HDCP dongle! show WFD suspend!"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 823
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->WfdStartHDCPSuspend()V
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$3400(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 828
    .end local v3           #data:I
    :cond_23
    const-string v9, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 829
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "action  << WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 830
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x2207c

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 831
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v9}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    goto/16 :goto_0

    .line 832
    :cond_24
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 833
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mScreenStatus:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$3502(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 834
    :cond_25
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 835
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mScreenStatus:Z
    invoke-static {v9, v10}, Lcom/samsung/wfd/WfdService;->access$3502(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 836
    :cond_26
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 837
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 838
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v9}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v9

    const v10, 0x22080

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 842
    :cond_27
    const-string v9, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 843
    iget-object v9, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v10, "WIFI_P2P_THIS_DEVICE_CHANGED_ACTION arrived"

    invoke-virtual {v9, v10}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 796
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch

    .line 820
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
