.class public Lcom/android/OriginalSettings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# instance fields
.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter "context"
    .parameter "checkBox"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiApEnabler$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 78
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 81
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 82
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 84
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiApEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 103
    .local v0, isAirplaneMode:Z
    :goto_0
    if-nez v0, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 109
    :goto_1
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    .line 106
    .restart local v0       #isAirplaneMode:Z
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    packed-switch p1, :pswitch_data_0

    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0244

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 207
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 209
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0242

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b0243

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 197
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 200
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 156
    const/4 v11, 0x0

    .line 157
    .local v11, wifiTethered:Z
    const/4 v10, 0x0

    .line 159
    .local v10, wifiErrored:Z
    move-object/from16 v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, o:Ljava/lang/Object;
    move-object v8, v6

    .line 160
    check-cast v8, Ljava/lang/String;

    .line 161
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 162
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 161
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 165
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6       #o:Ljava/lang/Object;
    move-object v8, v6

    .line 166
    check-cast v8, Ljava/lang/String;

    .line 167
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 168
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 167
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 165
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 172
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 173
    iget-object v12, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 174
    .local v9, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 178
    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 175
    :cond_7
    if-eqz v10, :cond_6

    .line 176
    iget-object v12, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0b0244

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 94
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 112
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 117
    .local v2, wifiState:I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 120
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 133
    :goto_0
    if-nez p1, :cond_2

    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_1
    if-ne v1, v6, :cond_2

    .line 141
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 142
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    .end local v1           #wifiSavedState:I
    :cond_2
    return-void

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0b0244

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 137
    .restart local v1       #wifiSavedState:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "wifiConfig"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x104048e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b02de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .end local v0           #s:Ljava/lang/String;
    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    return-void

    .line 150
    .restart local v0       #s:Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
