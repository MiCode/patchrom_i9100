.class Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    const-string v5, "wifi_state"

    const/16 v6, 0xe

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #calls: Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V
    invoke-static {v4, v5}, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->access$000(Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 151
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 153
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 155
    .local v3, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    #calls: Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->access$100(Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    iget-object v4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    #calls: Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V
    invoke-static {v4}, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->access$200(Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;)V

    goto :goto_0

    .line 158
    :cond_3
    const-string v4, "android.intent.action.ACTION_DATA_SET_ATTACH_APN_DONE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method
