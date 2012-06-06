.class Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, action:Ljava/lang/String;
    const-string v3, "WifiP2pSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 168
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 169
    const-string v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v9, :cond_5

    .line 171
    const-string v3, "WifiP2pSettings"

    const-string v4, "WIFI_P2P_STATE_ENABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 173
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 175
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    const-string v3, "WifiP2pSettings"

    const-string v4, "display connected devices immediately"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 191
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 273
    :cond_1
    :goto_1
    return-void

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    :cond_3
    const-string v3, "WifiP2pSettings"

    const-string v4, "not a sticky... or auto finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v3, v7, v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;ZZ)V

    goto :goto_0

    .line 186
    :cond_4
    const-string v3, "WifiP2pSettings"

    const-string v4, "sticky"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 193
    :cond_5
    const-string v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 195
    const-string v3, "WifiP2pSettings"

    const-string v4, "WIFI_P2P_STATE_DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v3, v6, v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 197
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 198
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 199
    :cond_6
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    const v4, 0x7f0b02bd

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;I)V

    .line 201
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectionEnd:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 207
    :cond_7
    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 208
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 210
    const-string v3, "wifiP2pGroupInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1202(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 211
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1200()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1200()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 212
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 213
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 215
    :cond_8
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    .line 217
    :cond_9
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 218
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 219
    const-string v3, "wifiP2pInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 222
    .local v2, p2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 223
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    const-string v3, "WifiP2pSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFI_P2P_CONNECTION_CHANGED_ACTION : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_c

    .line 225
    iget-boolean v3, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-nez v3, :cond_b

    .line 226
    const-string v3, "WifiP2pSettings"

    const-string v4, "======== connected as [GC], do bg scan for 2 sec"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    new-instance v5, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1$1;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1$1;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v3, v4, v9, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 241
    :goto_2
    iget-boolean v3, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 242
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 244
    :cond_a
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-ne v3, v7, :cond_1

    .line 245
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v3, v6, v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;ZZ)V

    goto/16 :goto_1

    .line 237
    :cond_b
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_2

    .line 254
    :cond_c
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    const-string v3, "WifiP2pSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1400()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1202(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 257
    invoke-static {}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 258
    invoke-static {v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1402(Z)Z

    .line 259
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 261
    :cond_d
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 262
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v3, v7, v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;ZZ)V

    goto/16 :goto_1

    .line 268
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v2           #p2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_e
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    const-string v3, "wifiP2pDevice"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->access$1502(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_1
.end method
