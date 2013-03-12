.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcProvisionState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2195
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const v3, 0x23032

    .line 2198
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 2199
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V
    invoke-static {v0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 2200
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(IJ)V

    .line 2201
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 2267
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const v8, 0x23032

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2205
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "{ what="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " }"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 2206
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 2261
    :goto_0
    return v3

    .line 2208
    :sswitch_0
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V
    invoke-static {v3, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$14000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 2209
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-wide/16 v5, 0x4e20

    invoke-virtual {v3, v8, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(IJ)V

    :cond_0
    :goto_1
    move v3, v4

    .line 2261
    goto :goto_0

    .line 2212
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 2213
    .local v2, provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12102(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2214
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2215
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v6, v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v6, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2216
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v5, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2218
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v3

    iget-object v5, v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    iput v5, v3, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->candidateStaticIp:I

    .line 2220
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isGroupOwner(Ljava/lang/String;)Z
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2221
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$6800()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V
    invoke-static {v3, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;Z)V

    .line 2222
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    goto :goto_1

    .line 2226
    .end local v2           #provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :sswitch_2
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v5, "Nfc wait time expired"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 2227
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v5, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2228
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$14100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2231
    :sswitch_3
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2232
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$7000()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V
    invoke-static {v3, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;Z)V

    .line 2233
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2234
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2235
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$14200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2238
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2239
    .local v0, group:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    .line 2241
    .local v1, owner:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v1, :cond_1

    .line 2242
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v5, "Ignored invitation from null owner"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2246
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2247
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v6, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2248
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v5, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2249
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8102(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 2251
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v5, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$6502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2252
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$6800()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V
    invoke-static {v3, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;Z)V

    .line 2254
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2255
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2256
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$14300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2206
    nop

    :sswitch_data_0
    .sparse-switch
        0x22070 -> :sswitch_0
        0x23032 -> :sswitch_2
        0x24017 -> :sswitch_3
        0x2401f -> :sswitch_4
        0x24021 -> :sswitch_1
    .end sparse-switch
.end method
