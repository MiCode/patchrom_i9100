.class public Lcom/android/OriginalSettings/deviceinfo/Status;
.super Lmiui/preference/BasePreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 168
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$2;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    .line 552
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 553
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 554
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 556
    .local v0, h:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 544
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 545
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 354
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 492
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 493
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 495
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 503
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, address:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 500
    .restart local v0       #address:Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b037d

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setFipsStatus()V
    .locals 9

    .prologue
    const v8, 0x7f0b0365

    .line 507
    const-string v6, "fips_status"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 509
    .local v4, pref:Landroid/preference/Preference;
    const-string v6, "ro.fipsui"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, fipsui:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 530
    :goto_0
    return-void

    .line 513
    :cond_0
    const/4 v2, 0x0

    .line 514
    .local v2, kc_status:Ljava/lang/String;
    const/4 v3, 0x0

    .line 517
    .local v3, km_status:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/OriginalSettings/fips/FipsStatus;->getFipsStatus()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const v6, 0x7f0b081c

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 519
    :goto_1
    const-string v6, "rw.km_fips_status"

    const-string v7, "undefined"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ready"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f0b081c

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 526
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b081b

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 528
    .local v5, status:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 517
    .end local v5           #status:Ljava/lang/String;
    :cond_1
    const v6, 0x7f0b081d

    :try_start_1
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 519
    :cond_2
    const v6, 0x7f0b081d

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private setRssiNoti(I)V
    .locals 7
    .parameter "onOff"

    .prologue
    .line 189
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 193
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 194
    .local v3, fileSize:I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 195
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 196
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 197
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    if-eqz v1, :cond_0

    .line 203
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 210
    return-void

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 199
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    if-eqz v1, :cond_0

    .line 203
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 204
    :catch_2
    move-exception v2

    .line 205
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 202
    if-eqz v1, :cond_1

    .line 203
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 206
    :cond_1
    :goto_1
    throw v4

    .line 204
    :catch_3
    move-exception v2

    .line 205
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 366
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 374
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    sget-object p2, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 378
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 8

    .prologue
    const v7, 0x7f0b037d

    .line 474
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 475
    .local v5, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 477
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v6, "wifi_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 478
    .local v4, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 479
    .local v1, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .end local v1           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 483
    .local v3, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/OriginalSettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 489
    :goto_2
    return-void

    .line 478
    .end local v0           #ipAddress:Ljava/lang/String;
    .end local v3           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 479
    .restart local v1       #macAddress:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 487
    .end local v1           #macAddress:Ljava/lang/String;
    .restart local v0       #ipAddress:Ljava/lang/String;
    .restart local v3       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 390
    .local v1, state:I
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 407
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void

    .line 394
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    goto :goto_0

    .line 397
    :pswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    goto :goto_0

    .line 403
    :pswitch_3
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 3

    .prologue
    .line 385
    const-string v0, "network_type"

    const-string v1, "gsm.network.type"

    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "serviceState"

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 412
    .local v2, state:I
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b00af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, display:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 427
    :goto_0
    const-string v3, "service_state"

    invoke-direct {p0, v3, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    const-string v3, "roaming_state"

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b00a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_1
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, salesCode:Ljava/lang/String;
    const-string v3, "NEE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    const-string v3, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_2
    return-void

    .line 416
    .end local v1           #salesCode:Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b00a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    goto :goto_0

    .line 420
    :pswitch_1
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b00a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    goto :goto_0

    .line 423
    :pswitch_2
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b00a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 432
    :cond_0
    const-string v3, "roaming_state"

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b00a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 440
    .restart local v1       #salesCode:Ljava/lang/String;
    :cond_1
    const-string v3, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    new-instance v6, Lcom/android/OriginalSettings/deviceinfo/Status$MyHandler;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 219
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 221
    const v6, 0x7f05000e

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 222
    const-string v6, "battery_level"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 223
    const-string v6, "battery_status"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 225
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 226
    sget-object v6, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 227
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0090

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/OriginalSettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 230
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 232
    const-string v6, "signal_strength"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 233
    const-string v6, "up_time"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    sget-object v0, Lcom/android/OriginalSettings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .line 237
    .local v3, key:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CDMA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 243
    const-string v6, "meid_number"

    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v6, "min_number"

    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    const-string v6, "min_number"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    const v7, 0x7f0b0370

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 248
    :cond_2
    const-string v6, "prl_version"

    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v6, "imei_sv"

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 251
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 253
    const-string v6, "icc_id"

    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v6, "imei"

    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_1
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, rawNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 278
    .local v1, formattedNumber:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 279
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    :cond_3
    const-string v6, "number"

    invoke-direct {p0, v6, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v6, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 285
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 286
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v7, 0x12c

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 289
    .end local v1           #formattedNumber:Ljava/lang/String;
    .end local v5           #rawNumber:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setWifiStatus()V

    .line 290
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setBtStatus()V

    .line 291
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setFipsStatus()V

    .line 293
    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 294
    const-string v6, "serial_number"

    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_2
    return-void

    .line 258
    :cond_5
    const-string v6, "imei"

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 259
    const-string v6, "icc_id"

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_6
    const-string v6, "imei"

    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v7, "imei_sv"

    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v6, "prl_version"

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 271
    const-string v6, "meid_number"

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 272
    const-string v6, "min_number"

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 273
    const-string v6, "icc_id"

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 296
    :cond_7
    const-string v6, "serial_number"

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 338
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Status;->setRssiNoti(I)V

    .line 341
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 342
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 345
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 318
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->setRssiNoti(I)V

    .line 321
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 323
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateSignalStrength()V

    .line 324
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 325
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->updateDataState()V

    .line 327
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 448
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 449
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 451
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 453
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 455
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 458
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 460
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 462
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 464
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 466
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b00b2

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b00b3

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 471
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #signalAsu:I
    .end local v2           #signalDbm:I
    .end local v3           #state:I
    :cond_4
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 533
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 534
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 536
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 537
    const-wide/16 v2, 0x1

    .line 540
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 541
    return-void
.end method
