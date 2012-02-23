.class public Lcom/android/server/enterprise/DeviceInfo;
.super Landroid/app/enterprise/IDeviceInfo$Stub;
.source "DeviceInfo.java"


# static fields
.field private static final DATA_USAGE_MILISECS_HIGH:I = 0x3c

.field private static final DATA_USAGE_MILISECS_LOW:I = 0x1

.field private static final DATA_USAGE_TO_STORAGE_COUNTER:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCallConnected:Z

.field private mDataCallLogLastNetType:Ljava/lang/String;

.field private mDataCallLogLastStatus:Ljava/lang/String;

.field private mDataCallLogLastTime:J

.field private mDataCallLogLastValue:J

.field private mDataLogEnabled:Z

.field mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

.field private mDataStatisticsUpdateRun:Ljava/lang/Runnable;

.field private mDataStatsCounter:I

.field private mDataStatsEnabled:Z

.field private mDataUsageEventsHandler:Landroid/os/Handler;

.field private mDataUsageTimer:I

.field private mDataUsageTimerActivated:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mLastUpdateMobileRx:J

.field private mLastUpdateMobileTx:J

.field private mLastUpdateWifiRx:J

.field private mLastUpdateWifiTx:J

.field private mStorageMobileRx:J

.field private mStorageMobileTx:J

.field private mStorageWifiRx:J

.field private mStorageWifiTx:J

.field mTelMgr:Landroid/telephony/TelephonyManager;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStatsEnabled:Z

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;-><init>()V

    .line 46
    iput-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 51
    iput-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    .line 56
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    .line 57
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    .line 58
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    .line 59
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    .line 60
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    .line 61
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    .line 62
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    .line 63
    iput v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    .line 64
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    .line 65
    iput-boolean v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 66
    iput-boolean v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    .line 67
    iput-boolean v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    .line 68
    iput-boolean v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 70
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 71
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 72
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 73
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    .line 74
    iput-boolean v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z

    .line 640
    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$1;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    .line 657
    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$2;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 676
    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$3;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    .line 1002
    iput-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 77
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    .line 78
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 87
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->registerCarrierNetworkListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageValuesInit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->deregisterCarrierNetworkListener()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/DeviceInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/DeviceInfo;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/DeviceInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/DeviceInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/DeviceInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->updateDataStatisticsUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/DeviceInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    return v0
.end method

.method private dataUsageValuesInit()V
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x0

    .line 687
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageValuesUpdate()V

    .line 688
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v3

    .line 689
    .local v3, i:I
    if-eqz v3, :cond_1

    .end local v3           #i:I
    :goto_0
    mul-int/lit16 v6, v3, 0x3e8

    iput v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    .line 690
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    .line 691
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    .line 692
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    .line 693
    const/4 v6, 0x4

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "deviceWifiSent"

    aput-object v6, v0, v8

    const/4 v6, 0x1

    const-string v7, "deviceWifiReceived"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "deviceNetworkSent"

    aput-object v7, v0, v6

    const-string v6, "deviceNetworkReceived"

    aput-object v6, v0, v5

    .line 697
    .local v0, columns:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "DEVICE"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 699
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 700
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 701
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 703
    :try_start_0
    const-string v5, "deviceWifiSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    .line 704
    const-string v5, "deviceWifiReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    .line 705
    const-string v5, "deviceNetworkSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    .line 706
    const-string v5, "deviceNetworkReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .end local v0           #columns:[Ljava/lang/String;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v3       #i:I
    :cond_1
    move v3, v5

    .line 689
    goto :goto_0

    .line 707
    .end local v3           #i:I
    .restart local v0       #columns:[Ljava/lang/String;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 708
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v5, "DeviceInfo"

    const-string v6, "initializeStorageValues - Error reading from Device Storage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->resetDataUsage()V

    goto :goto_1
.end method

.method private dataUsageValuesUpdate()V
    .locals 2

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    .line 718
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    .line 719
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    .line 720
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    .line 721
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 722
    return-void
.end method

.method private deregisterCarrierNetworkListener()V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 674
    return-void
.end method

.method private enforceDeviceInventoryPermission()I
    .locals 2

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforcePhone()V
    .locals 2

    .prologue
    .line 1029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 1030
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_0
    return-void
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1024
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1026
    :cond_0
    return-void
.end method

.method private getCallsCount(Ljava/lang/String;)I
    .locals 5
    .parameter "callType"

    .prologue
    .line 272
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    const/4 v0, -0x1

    .line 287
    :goto_0
    return v0

    .line 276
    :cond_0
    const/4 v0, -0x1

    .line 277
    .local v0, count:I
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 279
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 4
    .parameter "property"

    .prologue
    .line 463
    const/4 v1, -0x1

    .line 465
    .local v1, value:I
    const/4 v2, -0x1

    :try_start_0
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 471
    :goto_0
    return v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 468
    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStrictDataUsageTimer()I
    .locals 7

    .prologue
    .line 603
    const/4 v1, 0x0

    .line 604
    .local v1, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "miscDataStatisticTimer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 605
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 606
    .local v2, value:I
    if-eqz v1, :cond_1

    if-ge v2, v1, :cond_0

    .line 607
    :cond_1
    move v1, v2

    goto :goto_0

    .line 610
    .end local v2           #value:I
    :cond_2
    if-nez v1, :cond_3

    .line 611
    const/4 v1, 0x3

    .line 613
    :cond_3
    return v1
.end method

.method private getString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "fromVM"

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 445
    .local v1, value:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 446
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    :goto_0
    return-object v1

    .line 448
    :cond_0
    const-string v2, "unknown"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 453
    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTrafficMobileRx()J
    .locals 4

    .prologue
    .line 636
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 637
    .local v0, mobileValue:J
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    .end local v0           #mobileValue:J
    :cond_0
    return-wide v0
.end method

.method private getTrafficMobileTx()J
    .locals 4

    .prologue
    .line 631
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 632
    .local v0, mobileValue:J
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    .end local v0           #mobileValue:J
    :cond_0
    return-wide v0
.end method

.method private getTrafficWifiRx()J
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v7, -0x1

    .line 624
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 625
    .local v0, mobileValue:J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    .line 626
    .local v2, totalValue:J
    cmp-long v6, v7, v2

    if-nez v6, :cond_0

    move-wide v2, v4

    .end local v2           #totalValue:J
    :cond_0
    cmp-long v6, v7, v0

    if-nez v6, :cond_1

    move-wide v0, v4

    .end local v0           #mobileValue:J
    :cond_1
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private getTrafficWifiTx()J
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v7, -0x1

    .line 617
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 618
    .local v0, mobileValue:J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    .line 619
    .local v2, totalValue:J
    cmp-long v6, v7, v2

    if-nez v6, :cond_0

    move-wide v2, v4

    .end local v2           #totalValue:J
    :cond_0
    cmp-long v6, v7, v0

    if-nez v6, :cond_1

    move-wide v0, v4

    .end local v0           #mobileValue:J
    :cond_1
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private isWifiStateEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 725
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 732
    :goto_0
    return v0

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 732
    .local v0, ret:Z
    :cond_2
    goto :goto_0
.end method

.method private logDataCall(J)Z
    .locals 8
    .parameter "bytes"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 938
    iget-boolean v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    if-nez v5, :cond_0

    .line 939
    const-string v5, "DeviceInfo"

    const-string v6, "Logging disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_0
    return v4

    .line 942
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z

    if-nez v5, :cond_1

    .line 943
    const-string v5, "DeviceInfo"

    const-string v6, "Data Disconnected, don\'t log"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 946
    :cond_1
    cmp-long v5, p1, v6

    if-gtz v5, :cond_2

    .line 947
    const-string v5, "DeviceInfo"

    const-string v6, "No bytes to log"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 953
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_3

    .line 954
    const-string v5, "DeviceInfo"

    const-string v6, "failed logDataCall because mTelMgr is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 958
    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 959
    const-string v3, "ROAMING"

    .line 965
    .local v3, status:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    .line 970
    .local v2, netType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 971
    :cond_4
    iput-wide v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 972
    iput-wide v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    .line 976
    :cond_5
    iput-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 977
    const-string v4, "UNKNOWN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 978
    iput-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 981
    :cond_6
    iget-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    .line 984
    const/4 v1, 0x0

    .line 985
    .local v1, cvWhere:Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #cvWhere:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 986
    .restart local v1       #cvWhere:Landroid/content/ContentValues;
    const-string v4, "dataCallDate"

    iget-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 987
    const-string v4, "dataCallStatus"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v4, "dataCallNetType"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 992
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 993
    .local v0, cvUpdate:Landroid/content/ContentValues;
    const-string v4, "dataCallDate"

    iget-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 994
    const-string v4, "dataCallStatus"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v4, "dataCallNetType"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v4, "dataCallBytes"

    iget-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 997
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "DATACALLLOG"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    goto/16 :goto_0

    .line 961
    .end local v0           #cvUpdate:Landroid/content/ContentValues;
    .end local v1           #cvWhere:Landroid/content/ContentValues;
    .end local v2           #netType:Ljava/lang/String;
    .end local v3           #status:Ljava/lang/String;
    :cond_7
    const-string v3, "NORMAL"

    .restart local v3       #status:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private registerCarrierNetworkListener()V
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 670
    return-void
.end method

.method private declared-synchronized updateDataStatisticsUsage()J
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 736
    monitor-enter p0

    const-wide/16 v7, 0x0

    .line 737
    .local v7, wifiUsage:J
    const-wide/16 v3, 0x0

    .line 738
    .local v3, mobileUsage:J
    const-wide/16 v1, 0x0

    .line 739
    .local v1, delta:J
    const-wide/16 v5, 0x0

    .line 740
    .local v5, valueNow:J
    :try_start_0
    iget v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    .line 743
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v5

    .line 744
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    cmp-long v9, v5, v9

    if-lez v9, :cond_0

    .line 745
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    sub-long v1, v5, v9

    .line 746
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->isWifiStateEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v9, :cond_0

    .line 747
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    .line 750
    :cond_0
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    .line 751
    add-long/2addr v7, v1

    .line 752
    const-wide/16 v1, 0x0

    .line 755
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v5

    .line 756
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    cmp-long v9, v5, v9

    if-lez v9, :cond_1

    .line 757
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    sub-long v1, v5, v9

    .line 758
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->isWifiStateEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v9, :cond_1

    .line 759
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    .line 762
    :cond_1
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    .line 763
    add-long/2addr v7, v1

    .line 764
    const-wide/16 v1, 0x0

    .line 767
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v5

    .line 768
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    cmp-long v9, v5, v9

    if-ltz v9, :cond_6

    .line 769
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    sub-long v1, v5, v9

    .line 770
    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v9, :cond_2

    .line 771
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    .line 777
    :cond_2
    :goto_0
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    .line 778
    add-long/2addr v3, v1

    .line 779
    const-wide/16 v1, 0x0

    .line 782
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v5

    .line 783
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    cmp-long v9, v5, v9

    if-ltz v9, :cond_7

    .line 784
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    sub-long v1, v5, v9

    .line 785
    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v9, :cond_3

    .line 786
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    .line 792
    :cond_3
    :goto_1
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    .line 793
    add-long/2addr v3, v1

    .line 794
    const-wide/16 v1, 0x0

    .line 796
    cmp-long v9, v3, v11

    if-lez v9, :cond_4

    .line 797
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/DeviceInfo;->logDataCall(J)Z

    .line 799
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 802
    iget v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    const/16 v10, 0xa

    if-lt v9, v10, :cond_5

    .line 803
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 804
    .local v0, cv:Landroid/content/ContentValues;
    const-string v9, "deviceWifiSent"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 805
    const-string v9, "deviceWifiReceived"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 806
    const-string v9, "deviceNetworkSent"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 807
    const-string v9, "deviceNetworkReceived"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 808
    iget-object v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "DEVICE"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 809
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_5
    add-long v9, v7, v3

    monitor-exit p0

    return-wide v9

    .line 774
    :cond_6
    const-wide/16 v9, 0x0

    :try_start_1
    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 775
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 789
    :cond_7
    const-wide/16 v9, 0x0

    :try_start_2
    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 790
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .locals 5
    .parameter "callType"

    .prologue
    .line 315
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 317
    .local v0, count:I
    if-eqz v2, :cond_0

    .line 319
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 320
    if-gez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 328
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    return-void

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearCallingLog()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 921
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 923
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    :goto_0
    return v1

    .line 928
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "CallingLog"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not clear call log "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearSMSLog()Z
    .locals 3

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "SMS"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1122
    :goto_0
    return v1

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeviceInfo"

    const-string v2, "could not write log edm database"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dataUsageTimerActivation()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 815
    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 817
    .local v0, policiesActive:Z
    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-nez v3, :cond_3

    .line 819
    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 820
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageValuesUpdate()V

    .line 821
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 827
    :cond_1
    :goto_1
    return-void

    .end local v0           #policiesActive:Z
    :cond_2
    move v0, v1

    .line 815
    goto :goto_0

    .line 822
    .restart local v0       #policiesActive:Z
    :cond_3
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v2, :cond_1

    .line 824
    iput-boolean v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 825
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public enableCallingCapture(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 1131
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 1133
    .local v0, uid:I
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1134
    const/4 v1, 0x0

    .line 1137
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "MISC"

    const-string v3, "CallingLogEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public enableSMSCapture(Z)Z
    .locals 5
    .parameter "status"

    .prologue
    .line 1035
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v1

    .line 1037
    .local v1, uId:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "smsLogEnabled"

    invoke-virtual {v2, v1, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1043
    :goto_0
    return v2

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not enable sms capture"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAvailableCapacityExternal()J
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getAvailableCapacityInternal()J
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getAvailableRamMemory()J
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 422
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemFree:"

    aput-object v3, v1, v7

    const-string v3, "Cached:"

    aput-object v3, v1, v8

    .line 425
    .local v1, memInfoFields:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 426
    .local v2, memInfoSizes:[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 428
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 429
    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    aget-wide v3, v2, v7

    aget-wide v5, v2, v8

    add-long/2addr v3, v5

    return-wide v3
.end method

.method public getBytesReceivedNetwork()J
    .locals 2

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 542
    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    return-wide v0
.end method

.method public getBytesReceivedWiFi()J
    .locals 2

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 532
    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    return-wide v0
.end method

.method public getBytesSentNetwork()J
    .locals 2

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 537
    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    return-wide v0
.end method

.method public getBytesSentWiFi()J
    .locals 2

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 527
    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    return-wide v0
.end method

.method public getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 887
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "dataCallDate"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "dataCallStatus"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "dataCallNetType"

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-string v8, "dataCallBytes"

    aput-object v8, v0, v7

    .line 891
    .local v0, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 892
    .local v6, where:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 893
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #where:Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .restart local v6       #where:Landroid/content/ContentValues;
    const-string v7, "dataCallDate"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "DATACALLLOG"

    invoke-virtual {v7, v8, v0, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 899
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v5, :cond_2

    .line 900
    const/4 v4, 0x0

    .line 917
    :cond_1
    return-object v4

    .line 903
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 906
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 907
    .local v1, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataCallDate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallStatus"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallNetType"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallBytes"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, line:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDataCallLoggingEnabled()Z
    .locals 7

    .prologue
    .line 852
    const/4 v1, 0x0

    .line 853
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableDataCallLogging"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 856
    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 857
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 858
    move v1, v2

    .line 862
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getDataCallStatisticsEnabled()Z
    .locals 7

    .prologue
    .line 512
    const/4 v1, 0x0

    .line 513
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableWifiDataCallDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 516
    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 517
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 518
    move v1, v2

    .line 522
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getDataUsageTimer()I
    .locals 6

    .prologue
    .line 588
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 591
    .local v0, callingUid:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "MISC"

    const-string v5, "miscDataStatisticTimer"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 597
    .local v2, i:I
    :goto_0
    return v2

    .line 593
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 594
    .local v1, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const-string v3, "DeviceInfo"

    const-string v4, "getDataUsageTimer could not read database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v2, -0x1

    .restart local v2       #i:I
    goto :goto_0
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    const-string v0, "ro.product.manufacturer"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    const-string v0, "ro.product.device"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    const-string v0, "os.name"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    const-string v0, "os.version"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    const-string v1, "ro.build.version.release"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceProcessorSpeed()Ljava/lang/String;
    .locals 7

    .prologue
    .line 370
    const-string v3, ""

    .line 371
    .local v3, s:Ljava/lang/String;
    const/4 v0, 0x0

    .line 375
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 382
    if-eqz v1, :cond_0

    .line 386
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v3

    .line 392
    .end local v3           #s:Ljava/lang/String;
    .local v4, s:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 379
    .end local v4           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 380
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 382
    if-eqz v0, :cond_1

    .line 386
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    move-object v4, v3

    .line 392
    .end local v3           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    goto :goto_1

    .line 382
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_2

    .line 386
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 382
    :cond_2
    :goto_5
    throw v5

    .line 387
    :catch_1
    move-exception v2

    .line 388
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 387
    :catch_2
    move-exception v2

    .line 388
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 387
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 388
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 382
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 379
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public getDeviceProcessorType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 338
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 345
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v3

    .line 355
    if-eqz v1, :cond_0

    .line 357
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .line 364
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    return-object v3

    .line 355
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 357
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_2
    move-object v0, v1

    .line 364
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_3
    :goto_3
    const-string v3, ""

    goto :goto_1

    .line 351
    :catch_0
    move-exception v2

    .line 352
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 355
    if-eqz v0, :cond_3

    .line 357
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 359
    :catch_1
    move-exception v2

    .line 360
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 355
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v0, :cond_4

    .line 357
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 355
    :cond_4
    :goto_6
    throw v4

    .line 359
    :catch_2
    move-exception v2

    .line 360
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 359
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 360
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 359
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 360
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 355
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #s:Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 351
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public getDroppedCallsCount()I
    .locals 1

    .prologue
    .line 291
    const-string v0, "dropped"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInboundSMSCaptured()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1081
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "smsType"

    aput-object v8, v5, v7

    .line 1084
    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1085
    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1087
    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1088
    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1091
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1092
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public getIncomingCallingCaptured()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1221
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1223
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1224
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    :cond_0
    :goto_0
    return-object v4

    .line 1227
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .line 1230
    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1231
    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1232
    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1233
    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1236
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1237
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getMissedCallsCount()I
    .locals 1

    .prologue
    .line 295
    const-string v0, "missed"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    const-string v0, "ro.product.name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    const-string v0, "ro.product.model"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutboundSMSCaptured()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1062
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1063
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "smsType"

    aput-object v8, v5, v7

    .line 1066
    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1067
    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1068
    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1069
    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1072
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1073
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public getOutgoingCallingCaptured()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1196
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1197
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    :cond_0
    :goto_0
    return-object v4

    .line 1200
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .line 1203
    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1204
    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1205
    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1206
    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1209
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1210
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not log edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getPlatformSDK()I
    .locals 1

    .prologue
    .line 232
    const-string v0, "ro.build.version.sdk"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    const-string v0, "ro.build.version.release"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    const-string v0, "UNKNOWN"

    .line 211
    .local v0, platformName:Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    .line 212
    const-string v0, "GINGERBREAD"

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 213
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-gt v1, v2, :cond_2

    .line 214
    const-string v0, "HONEYCOMB"

    goto :goto_0

    .line 215
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 216
    const-string v0, "ICECREAM_SANDWICH"

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    const-string v0, "ril.serialnumber"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessCallsCount()I
    .locals 1

    .prologue
    .line 299
    const-string v0, "success"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalCapacityExternal()J
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getTotalCapacityInternal()J
    .locals 3

    .prologue
    .line 164
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getTotalRamMemory()J
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 402
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemTotal:"

    aput-object v3, v1, v7

    .line 405
    .local v1, memInfoFields:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 406
    .local v2, memInfoSizes:[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 408
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 409
    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    aget-wide v3, v2, v7

    return-wide v3
.end method

.method public getWifiStatisticEnabled()Z
    .locals 7

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "enableWifiDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 490
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 491
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 492
    move v1, v2

    .line 496
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isCallingCaptureEnabled()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1145
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 1161
    :goto_0
    return v4

    .line 1150
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "MISC"

    const-string v7, "CallingLogEnabled"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1152
    .local v3, isEnabledList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1153
    .local v2, isEnabled:Z
    if-eqz v2, :cond_1

    .line 1154
    const/4 v4, 0x1

    goto :goto_0

    .line 1157
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isEnabled:Z
    .end local v3           #isEnabledList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v0

    .line 1158
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v6, "could not open edm database"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v4, v5

    .line 1161
    goto :goto_0
.end method

.method public isDeviceCompromised()Z
    .locals 2

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, ret:Z
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/DeviceShell;->isSuAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 135
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 5

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, isLocked:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 116
    .local v2, km:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    .end local v2           #km:Landroid/app/KeyguardManager;
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceSecure()Z
    .locals 4

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, isSecure:Z
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 98
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 99
    :cond_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 100
    .local v2, lu:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    .end local v2           #lu:Lcom/android/internal/widget/LockPatternUtils;
    :goto_0
    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isSMSCaptureEnabled()Z
    .locals 7

    .prologue
    .line 1048
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "smsLogEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1049
    .local v3, policyStatusList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1050
    .local v2, policyStatus:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1051
    const/4 v4, 0x1

    .line 1058
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #policyStatus:Ljava/lang/Boolean;
    .end local v3           #policyStatusList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_0
    return v4

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v5, "could not open edm database"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public resetCallsCount()Z
    .locals 4

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 307
    :cond_0
    const/4 v0, 0x1

    .line 308
    .local v0, status:Z
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "success"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 309
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "missed"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 310
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dropped"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 311
    goto :goto_0
.end method

.method public resetDataCallLogging(Ljava/lang/String;)Z
    .locals 3
    .parameter "time"

    .prologue
    const-wide/16 v1, 0x0

    .line 866
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 869
    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 870
    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    .line 873
    const/4 v0, 0x0

    .line 875
    .local v0, where:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 876
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #where:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 877
    .restart local v0       #where:Landroid/content/ContentValues;
    const-string v1, "dataCallDate"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "DATACALLLOG"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public resetDataUsage()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 546
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 547
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 549
    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    .line 550
    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    .line 551
    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    .line 552
    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    .line 553
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 554
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "deviceWifiSent"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    const-string v1, "deviceWifiReceived"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    const-string v1, "deviceNetworkSent"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 557
    const-string v1, "deviceNetworkReceived"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 558
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "DEVICE"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 560
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    .line 561
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    .line 562
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    .line 563
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    .line 564
    iget-boolean v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 567
    :cond_0
    return-void
.end method

.method public setDataCallLoggingEnabled(Z)Z
    .locals 5
    .parameter "status"

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 841
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 842
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableDataCallLogging"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 844
    if-eqz v1, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    .line 846
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    .line 848
    :cond_0
    return v1
.end method

.method public setDataCallStatisticsEnabled(Z)Z
    .locals 5
    .parameter "status"

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 501
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 502
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableWifiDataCallDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 504
    if-eqz v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    .line 506
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    .line 508
    :cond_0
    return v1
.end method

.method public setDataUsageTimer(I)Z
    .locals 6
    .parameter "seconds"

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 571
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, ret:Z
    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    const/16 v2, 0x3c

    if-le p1, v2, :cond_1

    .line 574
    :cond_0
    const/4 p1, 0x3

    .line 576
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "miscDataStatisticTimer"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 578
    if-eqz v1, :cond_2

    .line 579
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    .line 581
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v2, :cond_3

    .line 582
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    :cond_3
    return v1
.end method

.method public setWifiStatisticEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 477
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 478
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "enableWifiDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 480
    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    .line 482
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    .line 484
    :cond_0
    return v1
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "address"
    .parameter "timeStamp"
    .parameter "duration"
    .parameter "status"
    .parameter "isIncoming"

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhone()V

    .line 1176
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1180
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1181
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "callingType"

    if-eqz p5, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v1, "callingStatus"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v1, "callingAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v1, "callingTimeStamp"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v1, "callingDuration"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "CallingLog"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1181
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "address"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isInbound"

    .prologue
    .line 1099
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhone()V

    .line 1100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1101
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "SMS"

    .line 1103
    .local v2, sTableName:Ljava/lang/String;
    :try_start_0
    const-string v4, "smsType"

    if-eqz p4, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v3, "smsAddress"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v3, "smsTimeStamp"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const-string v3, "smsBody"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1112
    :goto_1
    return-void

    .line 1103
    :cond_0
    const-string v3, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v1

    .line 1109
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DeviceInfo"

    const-string v4, "could not write log edm database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateDataUsageState()V
    .locals 1

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceSystemUser()V

    .line 831
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    .line 832
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    .line 833
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    .line 834
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    .line 835
    return-void
.end method
