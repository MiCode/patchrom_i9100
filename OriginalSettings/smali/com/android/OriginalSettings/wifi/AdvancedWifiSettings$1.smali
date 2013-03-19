.class Lcom/android/settings/wifi/AdvancedWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->finish()V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    const-string v2, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    const-string v2, "launch_with"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 227
    .local v1, launchWith:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->finish()V

    goto :goto_0
.end method
