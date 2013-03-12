.class Landroid/net/wifi/WifiWatchdogStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v3, 0x21002

    invoke-virtual {v2, v3, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v3, 0x21003

    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 326
    :cond_2
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v3, 0x21005

    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_3
    const-string v2, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 331
    const-string v2, "nid"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 332
    .local v1, nid:I
    const v2, 0x10806b7

    if-ne v1, v2, :cond_0

    .line 333
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z
    invoke-static {v2, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 335
    .end local v1           #nid:I
    :cond_4
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->updateResources()V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto :goto_0
.end method
