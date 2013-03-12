.class Lcom/samsung/wfd/WfdService$WfdStateMachine$1;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remove group fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1748
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$3800(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1750
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, " remove group success"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1738
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$700(Lcom/samsung/wfd/WfdService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1739
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, " only remove group && restart! do not disable @ JB!!!"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendWfdPickerStartBroadCast()V

    .line 1745
    :cond_0
    :goto_0
    return-void

    .line 1742
    :cond_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$3800(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method
