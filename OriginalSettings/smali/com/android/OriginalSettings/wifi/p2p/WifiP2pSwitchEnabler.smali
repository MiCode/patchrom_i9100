.class public Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiP2pSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSkipAction:Z

.field private mSkipDisable:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 5
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSkipAction:Z

    .line 51
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSkipDisable:Z

    .line 53
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler$1;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 71
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 72
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 74
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 75
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 83
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 84
    return-void

    .line 80
    :cond_1
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 5
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSkipAction:Z

    .line 51
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSkipDisable:Z

    .line 53
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler$1;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 90
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 91
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 103
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    return-void

    .line 100
    :cond_1
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method private handleP2pStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 194
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 218
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

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 197
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSkipAction:Z

    .line 198
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 208
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSkipDisable:Z

    .line 209
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 194
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
    .line 181
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 182
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 183
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 187
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiP2pSwitchEnabler"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSkipAction:Z

    if-ne v0, v2, :cond_2

    .line 140
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSkipAction:Z

    .line 141
    if-eq p2, v2, :cond_0

    .line 145
    :cond_2
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSkipDisable:Z

    if-ne v0, v2, :cond_3

    .line 146
    iput-boolean v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSkipDisable:Z

    .line 147
    if-eqz p2, :cond_0

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 152
    if-eqz p2, :cond_4

    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v2, :cond_0

    .line 176
    .end local p2
    :goto_0
    return v1

    .line 162
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 164
    .local v0, enable:Z
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 165
    const/4 v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 169
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 171
    if-eqz v0, :cond_2

    .line 172
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
