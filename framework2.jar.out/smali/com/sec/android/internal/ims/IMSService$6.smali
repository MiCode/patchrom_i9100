.class Lcom/sec/android/internal/ims/IMSService$6;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 1057
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1061
    const-string v0, "IMS/IMSService"

    const-string v1, " WiFi Event BroadReceiver:onReceive()::WIFI_STATE_CHANGED_ACTION event:::WIFI ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_0
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive():: WIFI_STATE_CHANGED_ACTION event handled..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    :goto_1
    return-void

    .line 1064
    :cond_1
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive()::WIFI_STATE_CHANGED_ACTION event:::WIFI DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1073
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    const-string v0, "IMS/IMSService"

    const-string v1, "===== NETWORK_STATE_CHANGED_ACTION event happened..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1078
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive()::NETWORK_STATE_CHANGED_ACTION;wifi_status:::WIFI ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, v1, Lcom/sec/android/internal/ims/IMSService;->info:Landroid/net/NetworkInfo;

    .line 1081
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi Event BroadReceiver:onReceive():TypeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v2, v2, Lcom/sec/android/internal/ims/IMSService;->info:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v1, v1, Lcom/sec/android/internal/ims/IMSService;->info:Landroid/net/NetworkInfo;

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->access$1000(Lcom/sec/android/internal/ims/IMSService;Landroid/net/NetworkInfo;)V

    .line 1107
    :cond_3
    :goto_2
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive()::NETWORK_STATE_CHANGED_ACTION event handled..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1087
    :cond_4
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive()::NETWORK_STATE_CHANGED_ACTION;wifi_status:::WIFI DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, v1, Lcom/sec/android/internal/ims/IMSService;->info:Landroid/net/NetworkInfo;

    .line 1092
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->info:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_3

    .line 1094
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1096
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1097
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$6;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_2

    .line 1101
    :cond_5
    const-string v0, "IMS/IMSService"

    const-string v1, "WiFi Event BroadReceiver:onReceive()::ignored WIFI Connected event"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
