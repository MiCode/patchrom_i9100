.class Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/net/wifi/WifiStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 297
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 299
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_0

    .line 300
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 302
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v2, "linkCapabilities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 304
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v2

    if-nez v2, :cond_1

    .line 305
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v3, Landroid/net/LinkCapabilities;

    invoke-direct {v3}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 309
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 310
    .local v1, state:Landroid/net/NetworkInfo$State;
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v2, v1, :cond_3

    .line 326
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :cond_2
    :goto_0
    return-void

    .line 313
    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateTracker;->access$502(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 315
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Landroid/net/NetworkInfo;

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 317
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 318
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 321
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 322
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
