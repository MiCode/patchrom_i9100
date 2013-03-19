.class public Lcom/android/settings/wifi/WifiManageNetworks;
.super Landroid/app/Activity;
.source "WifiManageNetworks.java"


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mWifiSettings:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput v0, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    .line 73
    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->manageNetwork:Z

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f09023d

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f040120

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiManageNetworks;->setContentView(I)V

    .line 28
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiManageNetworks;->setTitle(I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiManageNetworks;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0387

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiManageNetworks;->setTitle(I)V

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mFilter:Landroid/content/IntentFilter;

    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/android/settings/wifi/WifiManageNetworks$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiManageNetworks$1;-><init>(Lcom/android/settings/wifi/WifiManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiManageNetworks;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    iget-object v1, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiManageNetworks;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiManageNetworks;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 66
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiManageNetworks;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 67
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 69
    :cond_0
    return-void
.end method
