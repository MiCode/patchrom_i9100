.class Lcom/sec/android/internal/ims/IMSService$9;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1697
    const-string v5, ">>>>>>>>>> BROADCAST EVENT FROM CONNECTIVITY MANAGER"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1699
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "networkInfo"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1700
    .local v1, info:Landroid/net/NetworkInfo;
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1703
    .local v4, noConnectivity:Z
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>>>>>> getTypeName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>>>>>> getSubtypeName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>>>>>> state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>>>>>> noConnectivity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>>>>>> ankit.... : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1712
    .local v3, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_11

    .line 1714
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mobile_hipri"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v5

    if-ne v5, v8, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1717
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->handleHiPriNWConnect()V

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 1719
    :cond_1
    const-string v5, "mobile"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1721
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$400(Lcom/sec/android/internal/ims/IMSService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1722
    const-string v5, "IMS/IMSService"

    const-string v6, "handleConnectivityMgrEvt -> CONNECTED case : Removing Previous Posted Disconnect Events"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$400(Lcom/sec/android/internal/ims/IMSService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1725
    :cond_2
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v5

    if-ne v5, v8, :cond_4

    const-string v5, "LTE"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1728
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver API..LTE case.mCurrentConnectedNtwrk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v5

    if-ne v5, v8, :cond_3

    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$1200()Z

    move-result v5

    if-ne v5, v8, :cond_3

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-eq v5, v6, :cond_3

    .line 1733
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver: LTE Case:Already Connected to Network..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1742
    :cond_3
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v5, v6, :cond_0

    .line 1745
    sget-object v5, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 1746
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleNetworkConnected()V
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$1300(Lcom/sec/android/internal/ims/IMSService;)V

    goto/16 :goto_0

    .line 1750
    :cond_4
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v5

    if-ne v5, v8, :cond_7

    const-string v5, "UMTS"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "HSPA"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "HSDPA"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "HSUPA"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1752
    :cond_5
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver API...UMTS case mCurrentConnectedNtwrk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v5

    if-ne v5, v8, :cond_6

    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$1200()Z

    move-result v5

    if-ne v5, v8, :cond_6

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-eq v5, v6, :cond_6

    .line 1755
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver: UMTS Case Already Connected to Network..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1767
    :cond_6
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v5, v6, :cond_0

    .line 1770
    sget-object v5, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 1771
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleNetworkConnected()V
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$1300(Lcom/sec/android/internal/ims/IMSService;)V

    goto/16 :goto_0

    .line 1775
    :cond_7
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->EVDO_0:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->EVDO_A:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->EVDO_B:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1777
    :cond_8
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver API...EVDO case mCurrentConnectedNtwrk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v5

    if-ne v5, v8, :cond_a

    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$1200()Z

    move-result v5

    if-ne v5, v8, :cond_a

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-eq v5, v6, :cond_a

    .line 1780
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver: EVDO Case Already Connected to Network..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService;->MOBILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1782
    .local v2, localIP:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v5, v2}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1784
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->performDisconnectOperation()V
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$1400(Lcom/sec/android/internal/ims/IMSService;)V

    .line 1785
    sget-object v5, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 1786
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->performConnectOperation()V
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$1500(Lcom/sec/android/internal/ims/IMSService;)V

    goto/16 :goto_0

    .line 1789
    :cond_9
    const-string v5, "IMS/IMSService"

    const-string v6, "IP Address has not changed..also no transition so we can ignore this Event......."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1795
    .end local v2           #localIP:Ljava/lang/String;
    :cond_a
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-eq v5, v6, :cond_b

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v5, v6, :cond_c

    .line 1798
    :cond_b
    sget-object v5, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 1799
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleNetworkConnected()V
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$1300(Lcom/sec/android/internal/ims/IMSService;)V

    goto/16 :goto_0

    .line 1803
    :cond_c
    const-string v5, "IMS/IMSService"

    const-string v6, "mReceiver API: Netwrok type not handled mCurrentConnectedNtwrk"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1809
    :cond_d
    const-string v5, "WIFI"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1812
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1813
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI.mCurrentConnectedNtwrk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Show Wifi Toast ?? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$1600()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$1600()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1817
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Show Wifi Toast : Register State ?? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v7}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->access$1602(Z)Z

    .line 1819
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Lcom/sec/android/internal/ims/IMSService;->showToast(I)V

    goto/16 :goto_0

    .line 1824
    :cond_e
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver API..WIFI.mCurrentConnectedNtwrk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v5

    if-ne v5, v8, :cond_f

    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v5

    if-ne v5, v8, :cond_f

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-eq v5, v6, :cond_f

    .line 1827
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver API: Already Connected in some other Network"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1830
    :cond_f
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v5, v6, :cond_0

    .line 1833
    sget-object v5, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 1834
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleNetworkConnected()V
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$1300(Lcom/sec/android/internal/ims/IMSService;)V

    goto/16 :goto_0

    .line 1954
    :cond_10
    const-string v5, "IMS/IMSService"

    const-string v6, "else case....ankit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1961
    :cond_11
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_0

    .line 1962
    const-string v5, "IMS/IMSService"

    const-string v6, "mReceiver Disconnected Event from Connectivity Manager"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    const-string v5, "mobile"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1965
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v5

    if-ne v5, v8, :cond_13

    const-string v5, "LTE"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1968
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver API...mCurrentConnectedNtwrk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v5, v6, :cond_0

    .line 1972
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v5

    if-ne v5, v8, :cond_12

    .line 1974
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1975
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 1977
    :cond_12
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v5, v9}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 1978
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mReceiver Disconnected from Network..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    sget-object v5, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 1980
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$1700(Lcom/sec/android/internal/ims/IMSService;)V

    goto/16 :goto_0

    .line 1984
    :cond_13
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v5

    if-ne v5, v8, :cond_16

    const-string v5, "UMTS"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "HSPA"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "HSDPA"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "HSUPA"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1986
    :cond_14
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver API...mCurrentConnectedNtwrk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v5, v6, :cond_0

    .line 1990
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v5

    if-ne v5, v8, :cond_15

    .line 1992
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1993
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 1995
    :cond_15
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v5, v9}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 1996
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mReceiver Disconnected from Network..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    sget-object v5, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 1998
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$1700(Lcom/sec/android/internal/ims/IMSService;)V

    goto/16 :goto_0

    .line 2002
    :cond_16
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->EVDO_0:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->EVDO_A:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->EVDO_B:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2004
    :cond_17
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver API...mCurrentConnectedNtwrk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v5, v6, :cond_0

    .line 2009
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$400(Lcom/sec/android/internal/ims/IMSService;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2014
    :cond_18
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v5

    if-ne v5, v8, :cond_0

    const-string v5, "WIFI"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2016
    const-string v5, "IMS/IMSService"

    const-string v6, "Wifi  Disconnected Event from Connectivity Manager"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v5, v6, :cond_0

    .line 2020
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v5

    if-ne v5, v8, :cond_19

    .line 2022
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 2023
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 2025
    :cond_19
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v5, v9}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 2026
    sget-object v5, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 2027
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WiFi  Disconnected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService$9;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->access$1700(Lcom/sec/android/internal/ims/IMSService;)V

    goto/16 :goto_0
.end method
