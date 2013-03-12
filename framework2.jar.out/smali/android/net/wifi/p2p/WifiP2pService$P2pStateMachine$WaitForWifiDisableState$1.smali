.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;)V
    .locals 0
    .parameter

    .prologue
    .line 986
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 988
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$3600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 991
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setFwType(I)Z

    .line 992
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "p2p_Enabled : WifiNative.setFwType(2)"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "Driver load successful"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "Driver load successful: remove the delay."

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x2300e

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(IJ)V

    .line 1003
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$3600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1004
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "Failed to load driver!"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState$1;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x2300f

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
