.class Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wfd/WfdService$WifiStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WifiStateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 5
    .parameter "group"

    .prologue
    .line 584
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iput-object p1, v2, Lcom/samsung/wfd/WfdService;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 585
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group list size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 587
    .local v0, c:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #setter for: Lcom/samsung/wfd/WfdService;->mConnectedDeviceMacAddr:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Name - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Address - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " peer.wfdDevInfo - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " GO addr - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " GO GOdeviceName - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 597
    .end local v0           #c:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    return-void
.end method
