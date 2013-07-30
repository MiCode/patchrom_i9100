.class Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1341
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " discover fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1318
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1319
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1320
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$3500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1321
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1322
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/sec_settings/ProgressCategory;->removeAll()V

    .line 1323
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 1325
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1326
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1327
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1328
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1329
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1334
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;
    invoke-static {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$3600(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1335
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    const/4 v2, 0x3

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v1, v2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1600(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;I)V

    .line 1338
    .end local v0           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_0
    const-string v1, "WifiP2pSettings"

    const-string v2, " discover success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void
.end method
