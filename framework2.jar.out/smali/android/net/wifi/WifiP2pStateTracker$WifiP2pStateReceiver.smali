.class Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiP2pStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiP2pStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiP2pStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiP2pStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/wifi/WifiP2pStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;-><init>(Landroid/net/wifi/WifiP2pStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, action:Ljava/lang/String;
    const-string v2, "WifiP2pStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiP2pStateReceiver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    iget-object v3, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiP2pStateTracker;->access$102(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 219
    iget-object v3, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    const-string v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiP2pStateTracker;->access$202(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 221
    iget-object v2, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    #getter for: Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/wifi/WifiP2pStateTracker;->access$200(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_0

    .line 222
    iget-object v2, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiP2pStateTracker;->access$202(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 224
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    const-string v2, "linkCapabilities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiP2pStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiP2pStateTracker;->access$302(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 226
    iget-object v2, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    #getter for: Landroid/net/wifi/WifiP2pStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2}, Landroid/net/wifi/WifiP2pStateTracker;->access$300(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v2

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    new-instance v3, Landroid/net/LinkCapabilities;

    invoke-direct {v3}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiP2pStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiP2pStateTracker;->access$302(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    iget-object v3, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    const-string v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiP2pStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiP2pStateTracker;->access$202(Landroid/net/wifi/WifiP2pStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 233
    iget-object v2, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    #getter for: Landroid/net/wifi/WifiP2pStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/wifi/WifiP2pStateTracker;->access$400(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Landroid/net/wifi/WifiP2pStateTracker$WifiP2pStateReceiver;->this$0:Landroid/net/wifi/WifiP2pStateTracker;

    #getter for: Landroid/net/wifi/WifiP2pStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiP2pStateTracker;->access$100(Landroid/net/wifi/WifiP2pStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 234
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
