.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserAuthorizingJoinState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2150
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 2153
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 2155
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceived()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2156
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->soundNotification()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2157
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 2192
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 2161
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 2162
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2184
    const/4 v0, 0x0

    .line 2186
    :goto_0
    return v0

    .line 2169
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v0, :cond_0

    .line 2170
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2175
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2176
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 2186
    :goto_2
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2172
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v2, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 2179
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "User rejected incoming request"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 2180
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2181
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    move-result-object v1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 2162
    nop

    :sswitch_data_0
    .sparse-switch
        0x23002 -> :sswitch_0
        0x23003 -> :sswitch_2
        0x24021 -> :sswitch_1
        0x24023 -> :sswitch_1
        0x24024 -> :sswitch_1
    .end sparse-switch
.end method
