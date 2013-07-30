.class Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;
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
    .line 213
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x6

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 216
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 219
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 220
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 222
    const-string v6, "WifiP2pSettings"

    const-string v7, "WIFI_P2P_STATE_ENABLED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 224
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;
    invoke-static {v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 225
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 226
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    .line 228
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v6, v10}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 230
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 233
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1$1;

    invoke-direct {v8, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1$1;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 238
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 246
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 407
    :cond_1
    :goto_1
    return-void

    .line 240
    :cond_2
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 241
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 243
    :cond_3
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 247
    :cond_4
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 249
    const-string v6, "WifiP2pSettings"

    const-string v7, "WIFI_P2P_STATE_DISABLED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$702(Z)Z

    .line 252
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z
    invoke-static {v6, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1002(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 253
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v6, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 254
    invoke-static {v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1202(Z)Z

    .line 255
    invoke-static {v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1302(Z)Z

    .line 256
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 257
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v6, v10}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1402(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 258
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    .line 259
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v6, v8}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1600(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;I)V

    .line 260
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v6, v10}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1600(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;I)V

    .line 261
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 262
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 263
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/sec_settings/ProgressCategory;->removeAll()V

    .line 264
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 265
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 266
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 267
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 268
    :cond_5
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    const v7, 0x7f090382

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V
    invoke-static {v6, v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;I)V

    .line 271
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 273
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 274
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2202(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 276
    :cond_6
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 277
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 278
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2302(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 281
    :cond_7
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 282
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 283
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2402(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 285
    :cond_8
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 286
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 287
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2502(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 289
    :cond_9
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 292
    :cond_a
    const-string v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 293
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 294
    const-string v6, "wifiP2pGroupInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$602(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 295
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$600()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$600()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 296
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 297
    invoke-static {v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$702(Z)Z

    .line 298
    invoke-static {v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1202(Z)Z

    .line 299
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 302
    :cond_b
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    .line 304
    :cond_c
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 305
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 306
    const-string v6, "wifiP2pInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 309
    .local v4, p2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 311
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_15

    .line 312
    const-string v6, "WifiP2pSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connected!!!! multi-connect? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v8}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 315
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 316
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2202(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 320
    :cond_d
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 321
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 322
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2302(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 325
    :cond_e
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 326
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 327
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2502(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 331
    :cond_f
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 334
    iget-boolean v6, v4, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 335
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 337
    :cond_10
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-ne v6, v10, :cond_11

    .line 338
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 340
    :cond_11
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-ne v6, v10, :cond_14

    .line 341
    const-string v6, "WifiP2pSettings"

    const-string v7, "AUTO GO is created for multiple connect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 344
    .local v2, mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 345
    .local v5, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6, v5}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_2

    .line 347
    .end local v5           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_12
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 348
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1$2;

    invoke-direct {v8, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1$2;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v6, v7, v2, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 358
    :cond_13
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v6, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 359
    invoke-static {v10}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1202(Z)Z

    .line 360
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v6, v10}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1402(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 361
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    .line 399
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    :cond_14
    :goto_3
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 365
    :cond_15
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 366
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 367
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2402(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 371
    :cond_16
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 372
    const-string v6, "WifiP2pSettings"

    const-string v7, "disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$602(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 375
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1300()Z

    move-result v6

    if-nez v6, :cond_17

    .line 376
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v6, v8}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$1600(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;I)V

    .line 378
    :cond_17
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_18

    .line 379
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 380
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 383
    :cond_18
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 384
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 385
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;
    invoke-static {v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 386
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 387
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    .line 389
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v6, v10}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 391
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v6

    if-nez v6, :cond_19

    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 392
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 393
    :cond_19
    invoke-static {}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 394
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_3

    .line 400
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #p2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_1a
    const-string v6, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 401
    const-string v6, "wifiP2pDevice"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$3002(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 403
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 404
    iget-object v6, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_1
.end method
