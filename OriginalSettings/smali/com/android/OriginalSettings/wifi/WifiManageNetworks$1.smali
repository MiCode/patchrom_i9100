.class Lcom/android/settings/wifi/WifiManageNetworks$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiManageNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiManageNetworks;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiManageNetworks;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiManageNetworks;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/wifi/WifiManageNetworks$1;->this$0:Lcom/android/settings/wifi/WifiManageNetworks;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiManageNetworks$1;->this$0:Lcom/android/settings/wifi/WifiManageNetworks;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiManageNetworks;->finish()V

    .line 47
    :cond_1
    return-void
.end method
