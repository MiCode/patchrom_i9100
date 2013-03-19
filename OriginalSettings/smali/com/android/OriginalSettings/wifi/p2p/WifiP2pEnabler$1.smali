.class Lcom/android/settings/wifi/p2p/WifiP2pEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    const-string v2, "wifi_p2p_state"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->handleP2pStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pEnabler;I)V

    .line 53
    :cond_0
    return-void
.end method
