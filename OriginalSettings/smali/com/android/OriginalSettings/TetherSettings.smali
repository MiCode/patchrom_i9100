.class public Lcom/android/OriginalSettings/TetherSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 204
    new-instance v0, Lcom/android/OriginalSettings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/TetherSettings$1;-><init>(Lcom/android/OriginalSettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 277
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/TetherSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/OriginalSettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 632
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 633
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 634
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 639
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 633
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 632
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 639
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v4, 0x7f0b02e1

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, activity:Landroid/app/Activity;
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 179
    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 180
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 182
    const-string v2, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 184
    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->generateDefaultSSID()V

    .line 189
    const-string v2, "DT"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Orange"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Voda"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Optus"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v5, v5, v7

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    :goto_0
    return-void

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 198
    .local v1, index:I
    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/OriginalSettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 497
    const/4 v5, 0x0

    .line 498
    .local v5, bluetoothTethered:I
    move-object/from16 v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v12, v2, v8

    .line 499
    .local v12, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v11, v3, v7

    .line 500
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 499
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 498
    .end local v11           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    .line 503
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .line 504
    .local v4, bluetoothErrored:Z
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v9, v2

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v9, :cond_5

    aget-object v12, v2, v8

    .line 505
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v10, :cond_4

    aget-object v11, v3, v7

    .line 506
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v4, 0x1

    .line 505
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 504
    .end local v11           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_2

    .line 510
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 511
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    .line 512
    .local v6, btState:I
    const/16 v14, 0xd

    if-ne v6, v14, :cond_6

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b0243

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 537
    :goto_4
    return-void

    .line 515
    :cond_6
    const/16 v14, 0xb

    if-ne v6, v14, :cond_7

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b010d

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 518
    :cond_7
    const/16 v14, 0xc

    if-ne v6, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 519
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 520
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 521
    const/4 v14, 0x1

    if-le v5, v14, :cond_8

    .line 522
    const v14, 0x7f0b03fb

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/OriginalSettings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 524
    .local v13, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 525
    .end local v13           #summary:Ljava/lang/String;
    :cond_8
    const/4 v14, 0x1

    if-ne v5, v14, :cond_9

    .line 526
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b03fa

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 527
    :cond_9
    if-eqz v4, :cond_a

    .line 528
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b03fd

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 530
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b03f9

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 533
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 535
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b03fc

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_4
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 393
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 396
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/OriginalSettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    const/4 v3, 0x0

    .line 406
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 407
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isUsbTetheringEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 409
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 410
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b03f3

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 416
    :goto_0
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 417
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 419
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 427
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothTetheringEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 430
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 431
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b03fc

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 437
    :goto_2
    return-void

    .line 413
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 434
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 442
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 444
    .local v2, cm:Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 445
    .local v9, usbAvailable:Z
    :goto_0
    const/4 v10, 0x0

    .line 446
    .local v10, usbError:I
    move-object/from16 v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 447
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 448
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 449
    if-nez v10, :cond_0

    .line 450
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 447
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 444
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #usbAvailable:Z
    .end local v10           #usbError:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 446
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #s:Ljava/lang/String;
    .restart local v9       #usbAvailable:Z
    .restart local v10       #usbError:I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 455
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 456
    .local v12, usbTethered:Z
    move-object/from16 v0, p2

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 457
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 458
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 457
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 456
    .end local v7           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_3

    .line 461
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 462
    .local v11, usbErrored:Z
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v8, v0, v4

    .line 463
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_6
    if-ge v3, v6, :cond_8

    aget-object v7, v1, v3

    .line 464
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 463
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 462
    .end local v7           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_5

    .line 468
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    .line 469
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03f4

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 470
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 471
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 493
    :goto_7
    return-void

    .line 472
    :cond_a
    if-eqz v9, :cond_c

    .line 473
    if-nez v10, :cond_b

    .line 474
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03f3

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 478
    :goto_8
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 479
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 476
    :cond_b
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03f7

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 480
    :cond_c
    if-eqz v11, :cond_d

    .line 481
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03f7

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 482
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 483
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 484
    :cond_d
    iget-boolean v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mMassStorageActive:Z

    if-eqz v13, :cond_e

    .line 485
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03f5

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 486
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 487
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 489
    :cond_e
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03f6

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 490
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 491
    iget-object v13, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7
.end method


# virtual methods
.method public generateDefaultSSID()V
    .locals 14

    .prologue
    const/16 v13, 0xd

    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 668
    const-string v8, "gsm.sim.msisdn"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, number:Ljava/lang/String;
    const v8, 0x7f0b02e2

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 670
    .local v7, tempSSID:Ljava/lang/String;
    const-string v1, ""

    .line 672
    .local v1, defaultSsid:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v12, :cond_3

    .line 673
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-static {v8, v9, v12}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, last4digitNum:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    .end local v2           #last4digitNum:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 682
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iput-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 683
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 684
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v9, ""

    iput-object v9, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 685
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v11, v8, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 687
    const-string v8, "DT"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Orange"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Voda"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Optus"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 688
    :cond_0
    const-string v8, "DT"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "Orange"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "Optus"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 689
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, randomUUID:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x8

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x9

    invoke-virtual {v4, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 695
    .end local v4           #randomUUID:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->set(I)V

    .line 700
    :goto_2
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    if-ne v8, v13, :cond_6

    .line 701
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 705
    :goto_3
    return-void

    .line 676
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    new-instance v5, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Random;-><init>(J)V

    .line 677
    .local v5, rnd:Ljava/util/Random;
    const/16 v8, 0x2327

    invoke-virtual {v5, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit16 v6, v8, 0x3e8

    .line 678
    .local v6, sequence:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 692
    .end local v5           #rnd:Ljava/util/Random;
    .end local v6           #sequence:I
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_4
    const-string v8, "Voda"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getCustomer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 693
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v9, "1234567890"

    iput-object v9, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 697
    :cond_5
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v9, ""

    iput-object v9, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 698
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v11}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 703
    :cond_6
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_3
.end method

.method public getCustomer()Ljava/lang/String;
    .locals 6

    .prologue
    .line 708
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 709
    const-string v3, "DT"

    .line 710
    const-string v2, "Orange"

    .line 711
    const-string v1, "Voda"

    .line 712
    const-string v0, "Optus"

    .line 714
    const-string v5, "TMP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TMU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MAX"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TRG"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CRO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TMZ"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DTM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DTO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DTR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TMH"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MBM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TMT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TNL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TNN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TNP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "COA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TMS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TTR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ERA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "COS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v0, v3

    .line 771
    :cond_1
    :goto_0
    return-object v0

    .line 736
    :cond_2
    const-string v3, "IDE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ORO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "AMN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "FTM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ORA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v0, v2

    .line 742
    goto :goto_0

    .line 744
    :cond_4
    const-string v2, "VIP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VD2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "OMN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "TCL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VGR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VDI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "MOB"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "MTL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CYV"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "SIM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CNX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ATL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VDP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VOP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VDH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VDF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VOD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "SFR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "SWC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "VDC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move-object v0, v1

    .line 764
    goto/16 :goto_0

    .line 766
    :cond_6
    const-string v1, "OPP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OPS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 771
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 567
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 568
    if-nez p1, :cond_0

    .line 569
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 573
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 643
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 645
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 652
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 653
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 657
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 658
    .local v0, index:I
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b02e1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 663
    .end local v0           #index:I
    :cond_0
    return-void

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v7, 0x7f05003e

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->addPreferencesFromResource(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v10, 0x7f0b03f0

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setTitle(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 127
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 128
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v11, 0x5

    invoke-virtual {v1, v7, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 133
    :cond_0
    const-string v7, "enable_wifi_ap"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 135
    const-string v7, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 136
    .local v5, wifiApSettings:Landroid/preference/Preference;
    const-string v7, "usb_tether_settings"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 137
    const-string v7, "enable_bluetooth_tethering"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 138
    const-string v7, "tethering_help"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 140
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 143
    .local v3, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 144
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 145
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 147
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_3

    move v4, v8

    .line 148
    .local v4, usbAvailable:Z
    :goto_0
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_4

    move v6, v8

    .line 149
    .local v6, wifiAvailable:Z
    :goto_1
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_5

    move v2, v8

    .line 151
    .local v2, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_2
    if-eqz v6, :cond_6

    .line 156
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v7, v0, v10}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    .line 157
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->initWifiTethering()V

    .line 163
    :goto_3
    if-nez v2, :cond_7

    .line 164
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :goto_4
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 174
    return-void

    .end local v2           #bluetoothAvailable:Z
    .end local v4           #usbAvailable:Z
    .end local v6           #wifiAvailable:Z
    :cond_3
    move v4, v9

    .line 147
    goto :goto_0

    .restart local v4       #usbAvailable:Z
    :cond_4
    move v6, v9

    .line 148
    goto :goto_1

    .restart local v6       #wifiAvailable:Z
    :cond_5
    move v2, v9

    .line 149
    goto :goto_2

    .line 159
    .restart local v2       #bluetoothAvailable:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 166
    :cond_7
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 167
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    .line 169
    :cond_8
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .parameter "id"

    .prologue
    const/16 v13, 0x5f

    const/4 v12, 0x1

    .line 216
    if-ne p1, v12, :cond_6

    .line 217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 220
    .local v4, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 221
    .local v1, am:Landroid/content/res/AssetManager;
    const-string v9, "html/%y%z/tethering_help.html"

    const-string v10, "%y"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, path:Ljava/lang/String;
    const-string v9, "%z"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 223
    const/4 v8, 0x1

    .line 224
    .local v8, useCountry:Z
    const/4 v3, 0x0

    .line 226
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 230
    if-eqz v3, :cond_0

    .line 232
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 236
    :cond_0
    :goto_0
    const-string v9, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v10, "%y"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, url:Ljava/lang/String;
    const-string v10, "%z"

    if-eqz v8, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 238
    iget-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-nez v9, :cond_4

    .line 239
    const-string v9, "%x"

    const-string v10, "usb_"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 248
    :goto_2
    iget-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v9, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 250
    iget-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 251
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_1

    instance-of v9, v5, Landroid/view/ViewGroup;

    if-eqz v9, :cond_1

    .line 252
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5           #parent:Landroid/view/ViewParent;
    iget-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    :cond_1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0b0400

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 274
    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #locale:Ljava/util/Locale;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    .end local v8           #useCountry:Z
    :goto_3
    return-object v9

    .line 227
    .restart local v1       #am:Landroid/content/res/AssetManager;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #locale:Ljava/util/Locale;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v8       #useCountry:Z
    :catch_0
    move-exception v2

    .line 228
    .local v2, ignored:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 230
    if-eqz v3, :cond_0

    .line 232
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 233
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 230
    .end local v2           #ignored:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_2

    .line 232
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 233
    :cond_2
    :goto_4
    throw v9

    .line 237
    .restart local v7       #url:Ljava/lang/String;
    :cond_3
    const-string v9, ""

    goto :goto_1

    .line 240
    :cond_4
    iget-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-nez v9, :cond_5

    .line 241
    const-string v9, "%x"

    const-string v10, "wifi_"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 245
    :cond_5
    const-string v9, "%x"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 259
    .end local v1           #am:Landroid/content/res/AssetManager;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #locale:Ljava/util/Locale;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    .end local v8           #useCountry:Z
    :cond_6
    const/4 v9, 0x3

    if-ne p1, v9, :cond_7

    .line 260
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0b02e4

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0b0485

    new-instance v11, Lcom/android/OriginalSettings/TetherSettings$2;

    invoke-direct {v11, p0}, Lcom/android/OriginalSettings/TetherSettings$2;-><init>(Lcom/android/OriginalSettings/TetherSettings;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0b02e3

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto :goto_3

    .line 268
    :cond_7
    const/4 v9, 0x2

    if-ne p1, v9, :cond_8

    .line 269
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 270
    .local v0, activity:Landroid/app/Activity;
    new-instance v9, Lcom/android/OriginalSettings/wifi/WifiApDialog;

    iget-object v10, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v9, v0, p0, v10}, Lcom/android/OriginalSettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    .line 271
    iget-object v9, p0, Lcom/android/OriginalSettings/TetherSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    goto :goto_3

    .line 274
    .end local v0           #activity:Landroid/app/Activity;
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 233
    .restart local v1       #am:Landroid/content/res/AssetManager;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #locale:Ljava/util/Locale;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v8       #useCountry:Z
    :catch_2
    move-exception v9

    goto/16 :goto_0

    :catch_3
    move-exception v10

    goto :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 540
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 542
    .local v1, enable:Z
    if-eqz v1, :cond_2

    .line 543
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 545
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, appDetails:[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 551
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    invoke-virtual {v4, v7}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 563
    .end local v0           #appDetails:[Ljava/lang/String;
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v6

    .line 553
    .restart local v0       #appDetails:[Ljava/lang/String;
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v2, intent:Landroid/content/Intent;
    aget-object v4, v0, v6

    aget-object v5, v0, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, v2, v6}, Lcom/android/OriginalSettings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 558
    .end local v0           #appDetails:[Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/TetherSettings;->showDialog(I)V

    goto :goto_0

    .line 561
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    invoke-virtual {v4, v6}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 577
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 580
    .local v3, cm:Landroid/net/ConnectivityManager;
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_2

    .line 581
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    .line 583
    .local v5, newState:Z
    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v8

    if-eqz v8, :cond_0

    .line 584
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 585
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v9, 0x7f0b03f7

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 628
    .end local v5           #newState:Z
    :goto_0
    return v7

    .line 588
    .restart local v5       #newState:Z
    :cond_0
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 628
    .end local v5           #newState:Z
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_0

    .line 589
    :cond_2
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_7

    .line 590
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 592
    .local v2, bluetoothTetherState:Z
    if-eqz v2, :cond_4

    .line 594
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 595
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    .line 596
    iput-boolean v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 597
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 598
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0b010d

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 599
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 601
    :cond_3
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v8, v7}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 602
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0b03f9

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 605
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_4
    const/4 v4, 0x0

    .line 607
    .local v4, errored:Z
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 608
    .local v6, tethered:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/OriginalSettings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, bluetoothIface:Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5

    .line 611
    const/4 v4, 0x1

    .line 614
    :cond_5
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v7, v10}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 615
    if-eqz v4, :cond_6

    .line 616
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0b03fd

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 618
    :cond_6
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0b03fc

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 621
    .end local v1           #bluetoothIface:Ljava/lang/String;
    .end local v2           #bluetoothTetherState:Z
    .end local v4           #errored:Z
    .end local v6           #tethered:[Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v8, :cond_8

    .line 622
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->showDialog(I)V

    goto :goto_0

    .line 624
    :cond_8
    iget-object v7, p0, Lcom/android/OriginalSettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v7, :cond_1

    .line 625
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/TetherSettings;->showDialog(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 371
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 372
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->updateState()V

    .line 373
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 326
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStart()V

    .line 328
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 330
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mMassStorageActive:Z

    .line 331
    new-instance v4, Lcom/android/OriginalSettings/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/OriginalSettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/OriginalSettings/TetherSettings;Lcom/android/OriginalSettings/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 333
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 335
    .local v3, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 343
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 352
    :cond_0
    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 353
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 354
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v4, :cond_1

    .line 355
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 360
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v4, :cond_2

    .line 361
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    iget-object v4, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->resume()V

    .line 365
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/TetherSettings;->updateState()V

    .line 366
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 379
    invoke-virtual {p0}, Lcom/android/OriginalSettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    iput-object v2, p0, Lcom/android/OriginalSettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 381
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 383
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mWifiApEnabler:Lcom/android/OriginalSettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiApEnabler;->pause()V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getSecuritySpinner()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 390
    :cond_1
    return-void
.end method
