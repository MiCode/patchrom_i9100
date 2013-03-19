.class public Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiP2pSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mContext:Landroid/content/Context;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method private handleP2pStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 186
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 208
    const-string v0, "WifiP2pSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled wifi state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isP2pEnabled()Z
    .locals 5

    .prologue
    .line 173
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 174
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 175
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 179
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiP2pSwitchEnabler"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 141
    :cond_4
    if-eqz p2, :cond_5

    .line 142
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 145
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v2, :cond_1

    .line 168
    .end local p2
    :cond_0
    :goto_0
    return v1

    .line 153
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 154
    .local v0, enable:Z
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-ne v2, v0, :cond_2

    .line 155
    const/4 v1, 0x1

    goto :goto_0

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 161
    if-eqz v0, :cond_3

    .line 162
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 165
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method
