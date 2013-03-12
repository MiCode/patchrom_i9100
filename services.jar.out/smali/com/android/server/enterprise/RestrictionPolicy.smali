.class public Lcom/android/server/enterprise/RestrictionPolicy;
.super Landroid/app/enterprise/IRestrictionPolicy$Stub;
.source "RestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final BROADCAST_DELAY:I = 0x1388

.field public static final DEFAULT_NETWORK_POLICY_APPLIED:Ljava/lang/String; = "android.intent.action.sec.DEFAULT_NETWORK_POLICY_APPLIED"

.field private static final EDM_SDCARD_WRITEACCESS_BLOCKED:Ljava/lang/String; = "sdCardWriteAccessBlocked"

.field private static final MESSAGE_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RestrictionPolicy"

.field private static final USB_MODE_NONE:I = 0x5

.field private static final UsbProperty:Ljava/lang/String; = "persist.service.usb.setting"

.field private static mHomekeyPolicySet:I


# instance fields
.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsbMassStorageAvailable:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private preAdminRemoval_SDCardWrite:Z

.field private statusBar:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;-><init>()V

    .line 122
    iput-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 130
    iput-boolean v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    .line 152
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$1;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 162
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    iput-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 320
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    .line 1615
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$4;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 135
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 136
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, filterBoot:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/RestrictionPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/RestrictionPolicy;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceStatusBarExpansion(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/RestrictionPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->mountSdCard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/os/storage/StorageEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method private applySdCardWriteAccessPolicy()V
    .locals 3

    .prologue
    .line 1593
    const-string v1, "sdCardWriteAccessBlocked"

    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    :goto_0
    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1594
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isExternalSdCardPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 1596
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/RestrictionPolicy;->unmountSdCard(Z)Z

    .line 1598
    :cond_0
    return-void

    .line 1593
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method private disableNFC()V
    .locals 4

    .prologue
    .line 853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 855
    .local v2, token:J
    :try_start_0
    invoke-static {}, Landroid/nfc/NfcAdapter;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 856
    .local v1, nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .end local v1           #nfcAdapter:Landroid/nfc/NfcAdapter;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    return-void

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private enforceHwPermission()I
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceLocationPermission()I
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceRestrictionPermission()I
    .locals 2

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceStatusBarExpansion(Z)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    if-nez v0, :cond_1

    .line 1852
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed to get StatusBar Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :goto_0
    return-void

    .line 1854
    :cond_1
    if-nez p1, :cond_2

    .line 1855
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 1857
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private enforceTetheringPermission()I
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getExternalSdCardPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1668
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1669
    .local v0, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 5

    .prologue
    .line 1601
    monitor-enter p0

    const/4 v1, 0x0

    .line 1603
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1604
    .local v2, service:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1605
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1612
    .end local v2           #service:Landroid/os/IBinder;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1607
    .restart local v2       #service:Landroid/os/IBinder;
    :cond_0
    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string v4, "Can\'t get mount service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1609
    .end local v2           #service:Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 1610
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1601
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private isExternalSdCardPresent()Z
    .locals 3

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1661
    .local v0, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 1662
    const/4 v1, 0x1

    .line 1664
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private matchRegex([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "tetherableRegexs"
    .parameter "iface"

    .prologue
    .line 363
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 364
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    const/4 v4, 0x1

    .line 367
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 363
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private mountSdCard()Z
    .locals 7

    .prologue
    .line 1673
    const/4 v3, 0x0

    .line 1674
    .local v3, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1675
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1677
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    move-result v2

    .line 1678
    .local v2, result:I
    if-nez v2, :cond_1

    .line 1679
    const/4 v3, 0x1

    .line 1688
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    .end local v2           #result:I
    :cond_0
    :goto_0
    return v3

    .line 1681
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    .restart local v2       #result:I
    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Oops!!! Unable to mount media - error code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1684
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1685
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unmountSdCard(Z)Z
    .locals 5
    .parameter "force"

    .prologue
    .line 1642
    const/4 v3, 0x0

    .line 1643
    .local v3, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1644
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1645
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v1

    .line 1647
    .local v1, extStoragePath:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v1, p1, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1649
    const/4 v3, 0x1

    .line 1656
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return v3

    .line 1650
    .restart local v1       #extStoragePath:Ljava/lang/String;
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 1652
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1653
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCameraState()V
    .locals 6

    .prologue
    .line 1742
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1744
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1746
    .local v2, token:J
    :try_start_0
    const-string v5, "sys.secpolicy.camera.disabled"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "1"

    :goto_0
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1753
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1754
    return-void

    .line 1746
    :cond_1
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1750
    :catch_0
    move-exception v1

    .line 1751
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "RestrictionPolicy"

    const-string v5, "updateCameraState error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateHomeKeyPolicySet()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 1393
    const/4 v1, 0x0

    .line 1395
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "homeKeyEnabled"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1397
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

    .line 1398
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1399
    const/4 v1, 0x1

    .line 1403
    .end local v2           #value:Z
    :cond_1
    if-ne v1, v5, :cond_2

    move v4, v5

    :goto_0
    sput v4, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    .line 1404
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHomeKeyPolicySet():mHomekeyPolicySet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return-void

    .line 1403
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateUSBMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1208
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1214
    :cond_0
    return-void
.end method


# virtual methods
.method public allowFactoryReset(Z)Z
    .locals 5
    .parameter "allow"

    .prologue
    .line 1364
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1365
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 1367
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "factoryresetallowed"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1369
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowFactoryReset():set :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return v1
.end method

.method public allowGoogleCrashReport(Z)Z
    .locals 5
    .parameter "allow"

    .prologue
    .line 1527
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1529
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "googleCrashReportEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1532
    .local v1, result:Z
    return v1
.end method

.method public allowOTAUpgrade(Z)Z
    .locals 7
    .parameter "allow"

    .prologue
    .line 1487
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v1

    .line 1488
    .local v1, callingUid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isOTAUpgradeAllowed()Z

    move-result v3

    .line 1489
    .local v3, oldState:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "OTAUpgradeEnabled"

    invoke-virtual {v4, v1, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1492
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isOTAUpgradeAllowed()Z

    move-result v2

    .line 1493
    .local v2, newState:Z
    if-eq v2, v3, :cond_0

    .line 1494
    const-string v4, "application_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    .line 1496
    .local v0, ap:Lcom/android/server/enterprise/ApplicationPolicy;
    const-string v4, "com.sec.android.fotaclient"

    invoke-virtual {v0, v4, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1497
    const-string v4, "com.wssyncmldm"

    invoke-virtual {v0, v4, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1499
    .end local v0           #ap:Lcom/android/server/enterprise/ApplicationPolicy;
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public allowPowerOff(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    .line 1863
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 1865
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "powerOffAllowed"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowSDCardWrite(Z)Z
    .locals 8
    .parameter "allow"

    .prologue
    .line 1564
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1565
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1566
    .local v3, token:J
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v2

    .line 1567
    .local v2, oldState:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "sdCardWriteEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v1

    .line 1571
    .local v1, newState:Z
    if-eq v1, v2, :cond_0

    .line 1572
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    .line 1574
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1575
    const/4 v5, 0x1

    return v5
.end method

.method public allowSettingsChanges(Z)Z
    .locals 16
    .parameter "allow"

    .prologue
    .line 940
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v2

    .line 941
    .local v2, callingUid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "RESTRICTION"

    const-string v15, "allowSettingsChanges"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 943
    .local v8, ret:Z
    if-eqz v8, :cond_2

    .line 944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 945
    .local v11, token:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 947
    .local v1, am:Landroid/app/ActivityManager;
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 948
    .local v7, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v9, "com.android.settings"

    .line 949
    .local v9, settingsPkg:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 950
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 951
    .local v10, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 952
    .local v5, origInt:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 953
    .local v3, cmp:Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 954
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 955
    .local v6, packageName:Ljava/lang/String;
    const-string v13, "RestrictionPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "packageName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    if-eqz v6, :cond_0

    const-string v13, "com.android.settings"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 958
    const-string v13, "com.android.settings"

    invoke-virtual {v1, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 964
    .end local v3           #cmp:Landroid/content/ComponentName;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #origInt:Landroid/content/Intent;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v10           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "edm.intent.action.allow.settings"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 966
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 968
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v7           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v9           #settingsPkg:Ljava/lang/String;
    .end local v11           #token:J
    :cond_2
    return v8
.end method

.method public allowStatusBarExpansion(Z)Z
    .locals 8
    .parameter "allow"

    .prologue
    const/4 v5, 0x0

    .line 1786
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1787
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1788
    .local v2, token:J
    const/4 v1, 0x1

    .line 1790
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "statusBarExpansionEnabled"

    invoke-virtual {v4, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    and-int/2addr v1, v4

    .line 1793
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    if-nez v4, :cond_0

    .line 1794
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v6, "statusbar"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    .line 1797
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    if-nez v4, :cond_1

    .line 1798
    const-string v4, "RestrictionPolicy"

    const-string v6, "Failed to get StatusBar Manager"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 1807
    .end local v1           #ret:Z
    :goto_0
    return v1

    .line 1801
    .restart local v1       #ret:Z
    :cond_1
    if-nez p1, :cond_2

    .line 1802
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    const/high16 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1806
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1804
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->statusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1
.end method

.method public allowVpn(Z)Z
    .locals 5
    .parameter "allow"

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1451
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 1453
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "nativeVpnAllowed"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1455
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 1456
    const-string v2, "vpn_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->disconnectActiveVpnConnections()V

    .line 1459
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowVpn():set :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return v1
.end method

.method public allowWallpaperChange(Z)Z
    .locals 5
    .parameter "allow"

    .prologue
    .line 1758
    const/4 v1, 0x1

    .line 1759
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1760
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "wallpaperEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1762
    return v1
.end method

.method public applyBackgroundDataRestriction()V
    .locals 23

    .prologue
    .line 1267
    :try_start_0
    const-string v19, "RestrictionPolicy"

    const-string v20, "Applying Background Data Policy"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "background_data"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1274
    const-string v19, "netpolicy"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v15

    .line 1277
    .local v15, networkPolicyService:Landroid/net/INetworkPolicyManager;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1280
    const-wide/16 v5, 0x400

    .line 1281
    .local v5, KB_IN_BYTES:J
    const-wide/32 v9, 0x100000

    .line 1282
    .local v9, MB_IN_BYTES:J
    const-wide/32 v3, 0x40000000

    .line 1283
    .local v3, GB_IN_BYTES:J
    const-wide/16 v7, 0x64

    .line 1285
    .local v7, MAXIMUM_SETABLE_GB_VALUE:J
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v18, setPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    invoke-interface {v15}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v16

    .line 1289
    .local v16, policies:[Landroid/net/NetworkPolicy;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 1290
    move-object/from16 v11, v16

    .local v11, arr$:[Landroid/net/NetworkPolicy;
    array-length v14, v11

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v17, v11, v13

    .line 1291
    .local v17, policy:Landroid/net/NetworkPolicy;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 1315
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1293
    :pswitch_0
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_0

    .line 1294
    const-wide v19, 0x1900000000L

    move-wide/from16 v0, v19

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 1296
    :cond_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1326
    .end local v3           #GB_IN_BYTES:J
    .end local v5           #KB_IN_BYTES:J
    .end local v7           #MAXIMUM_SETABLE_GB_VALUE:J
    .end local v9           #MB_IN_BYTES:J
    .end local v11           #arr$:[Landroid/net/NetworkPolicy;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #networkPolicyService:Landroid/net/INetworkPolicyManager;
    .end local v16           #policies:[Landroid/net/NetworkPolicy;
    .end local v17           #policy:Landroid/net/NetworkPolicy;
    .end local v18           #setPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    :catch_0
    move-exception v12

    .line 1327
    .local v12, e:Ljava/lang/Exception;
    const-string v19, "RestrictionPolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setBackgroundData EX: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    .end local v12           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1300
    .restart local v3       #GB_IN_BYTES:J
    .restart local v5       #KB_IN_BYTES:J
    .restart local v7       #MAXIMUM_SETABLE_GB_VALUE:J
    .restart local v9       #MB_IN_BYTES:J
    .restart local v11       #arr$:[Landroid/net/NetworkPolicy;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #networkPolicyService:Landroid/net/INetworkPolicyManager;
    .restart local v16       #policies:[Landroid/net/NetworkPolicy;
    .restart local v17       #policy:Landroid/net/NetworkPolicy;
    .restart local v18       #setPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    :pswitch_1
    :try_start_1
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_1

    .line 1301
    const-wide v19, 0x1900000000L

    move-wide/from16 v0, v19

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 1303
    :cond_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1307
    :pswitch_2
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_2

    .line 1308
    const-wide v19, 0x1900000000L

    move-wide/from16 v0, v19

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 1310
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1321
    .end local v11           #arr$:[Landroid/net/NetworkPolicy;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v17           #policy:Landroid/net/NetworkPolicy;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 1322
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/NetworkPolicy;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/net/NetworkPolicy;

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 1325
    :cond_4
    const-string v19, "RestrictionPolicy"

    const-string v20, "Applied Background Data Policy"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPowerOffAllowed(Z)Z
    .locals 9
    .parameter "allAdmins"

    .prologue
    .line 1870
    const/4 v2, 0x1

    .line 1871
    .local v2, ret:Z
    if-nez p1, :cond_1

    .line 1873
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 1874
    .local v0, callingUid:I
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "powerOffAllowed"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1889
    .end local v0           #callingUid:I
    :cond_0
    :goto_0
    return v2

    .line 1876
    :catch_0
    move-exception v3

    .line 1877
    .local v3, snfe:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const-string v6, "RestrictionPolicy"

    const-string v7, "getPowerOffAllowed() -> Settings Not Found - default true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1880
    .end local v3           #snfe:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "powerOffAllowed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1882
    .local v5, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1883
    .local v4, value:Z
    if-nez v4, :cond_2

    .line 1884
    move v2, v4

    .line 1885
    goto :goto_0
.end method

.method public getSDCardState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1038
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarExpansionAllowed(Z)Z
    .locals 7
    .parameter "allAdmins"

    .prologue
    .line 1811
    const/4 v2, 0x1

    .line 1812
    .local v2, ret:Z
    if-eqz p1, :cond_0

    .line 1813
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result v2

    :goto_0
    move v3, v2

    .line 1824
    .end local v2           #ret:Z
    .local v3, ret:I
    :goto_1
    return v3

    .line 1815
    .end local v3           #ret:I
    .restart local v2       #ret:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1817
    .local v0, callingUid:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "statusBarExpansionEnabled"

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1819
    :catch_0
    move-exception v1

    .line 1820
    .local v1, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const-string v4, "RestrictionPolicy"

    const-string v5, "Admin not found on database "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1821
    .restart local v3       #ret:I
    goto :goto_1
.end method

.method getStorageManager()Landroid/os/storage/StorageManager;
    .locals 2

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 7

    .prologue
    .line 1339
    const/4 v1, 0x1

    .line 1345
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "backgroundDataEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1347
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

    .line 1348
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1349
    move v1, v2

    .line 1353
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isBackupAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 819
    const/4 v2, 0x1

    .line 820
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "backupEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 822
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 823
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 824
    move v2, v3

    .line 828
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 829
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401ef

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 833
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isBluetoothTetheringEnabled()Z
    .locals 7

    .prologue
    .line 514
    const/4 v1, 0x1

    .line 515
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "bluetoothTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 518
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

    .line 519
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 520
    move v1, v2

    .line 524
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isCameraEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 280
    const/4 v2, 0x1

    .line 281
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "cameraEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 283
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 284
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 285
    move v2, v3

    .line 289
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401eb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isCellularDataAllowed()Z
    .locals 7

    .prologue
    .line 921
    const/4 v1, 0x1

    .line 922
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "cellularDataEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 924
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

    .line 925
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 926
    move v1, v2

    .line 930
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isClipboardAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1078
    const/4 v2, 0x1

    .line 1079
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "clipboardEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1081
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1082
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 1083
    move v2, v3

    .line 1087
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 1088
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1093
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isFactoryResetAllowed()Z
    .locals 7

    .prologue
    .line 1379
    const/4 v1, 0x1

    .line 1380
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "factoryresetallowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1382
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

    .line 1383
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1384
    move v1, v2

    .line 1388
    .end local v2           #value:Z
    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFactoryResetAllowed():ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return v1
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 7

    .prologue
    .line 1541
    const/4 v1, 0x1

    .line 1543
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "googleCrashReportEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1547
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

    .line 1548
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1549
    move v1, v2

    .line 1553
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isHomeKeyEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1434
    const/4 v0, 0x1

    .line 1436
    .local v0, ret:Z
    sget v2, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1437
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateHomeKeyPolicySet()V

    .line 1439
    :cond_0
    sget v2, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    if-ne v2, v1, :cond_1

    const/4 v0, 0x0

    .line 1441
    :goto_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHomeKeyEnabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    return v0

    :cond_1
    move v0, v1

    .line 1439
    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 9
    .parameter "showMsg"

    .prologue
    .line 340
    const/4 v2, 0x1

    .line 341
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "microphoneEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 343
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 344
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 345
    move v2, v3

    .line 349
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401ec

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 357
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isMockLocationEnabled()Z
    .locals 7

    .prologue
    .line 767
    const/4 v1, 0x1

    .line 768
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "mockLocationEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 770
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

    .line 771
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 772
    move v1, v2

    .line 776
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isNFCEnabled()Z
    .locals 7

    .prologue
    .line 869
    const/4 v1, 0x1

    .line 870
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "nfcEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 872
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

    .line 873
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 874
    move v1, v2

    .line 878
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isNonMarketAppAllowed()Z
    .locals 7

    .prologue
    .line 1221
    const-string v4, "RestrictionPolicy"

    const-string v5, "MiscPolicy.isNonMarketAppAllowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "allowNonMarketApp"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1224
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v2, 0x1

    .line 1225
    .local v2, ret:Z
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1226
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1227
    .local v3, value:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1228
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1233
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Boolean;
    :cond_1
    return v2
.end method

.method public isOTAUpgradeAllowed()Z
    .locals 7

    .prologue
    .line 1507
    const/4 v1, 0x1

    .line 1508
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "OTAUpgradeEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1511
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

    .line 1512
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1513
    move v1, v2

    .line 1517
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 5
    .parameter "showMsg"

    .prologue
    .line 1894
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->getPowerOffAllowed(Z)Z

    move-result v0

    .line 1896
    .local v0, allowed:Z
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 1897
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1898
    .local v1, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v4, 0x10401fc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1900
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1903
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    return v0
.end method

.method public isSDCardWriteAllowed()Z
    .locals 7

    .prologue
    .line 1579
    const/4 v1, 0x1

    .line 1580
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "sdCardWriteEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1583
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

    .line 1584
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1585
    move v1, v2

    .line 1589
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 608
    const/4 v2, 0x1

    .line 609
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "screenCaptureEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 611
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 612
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 613
    move v2, v3

    .line 617
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401ed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 623
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isSdCardEnabled()Z
    .locals 7

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1046
    const/4 v1, 0x0

    .line 1057
    :cond_0
    :goto_0
    return v1

    .line 1048
    :cond_1
    const/4 v1, 0x1

    .line 1049
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "sdCardEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1051
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1052
    .local v2, value:Z
    if-nez v2, :cond_2

    .line 1053
    move v1, v2

    .line 1054
    goto :goto_0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 978
    const/4 v2, 0x1

    .line 984
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowSettingsChanges"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 986
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 987
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 988
    move v2, v3

    .line 992
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 993
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401f4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 998
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isStatusBarExpansionAllowed(Z)Z
    .locals 7
    .parameter "showMsg"

    .prologue
    .line 1828
    const/4 v1, 0x1

    .line 1829
    .local v1, allowed:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "statusBarExpansionEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1831
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1832
    .local v0, adminValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1833
    const/4 v1, 0x0

    goto :goto_0

    .line 1844
    .end local v0           #adminValue:Ljava/lang/Boolean;
    :cond_1
    return v1
.end method

.method public isTetheringEnabled()Z
    .locals 4

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isUsbTetheringEnabled()Z

    move-result v0

    .line 389
    .local v0, ret1:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v1

    .line 390
    .local v1, ret2:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isBluetoothTetheringEnabled()Z

    move-result v2

    .line 391
    .local v2, ret3:Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUsbDebuggingEnabled()Z
    .locals 7

    .prologue
    .line 657
    const/4 v1, 0x1

    .line 658
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbDebuggingEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 660
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

    .line 661
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 662
    move v1, v2

    .line 666
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isUsbKiesAvailable(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 1127
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 713
    iget-boolean v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    if-nez v5, :cond_1

    .line 714
    const-string v5, "RestrictionPolicy"

    const-string v6, "Usb mass storage not available on device "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v2, 0x0

    .line 732
    :cond_0
    :goto_0
    return v2

    .line 717
    :cond_1
    const/4 v2, 0x1

    .line 718
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "massStorageEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 720
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 721
    .local v3, value:Z
    if-nez v3, :cond_2

    .line 722
    move v2, v3

    .line 726
    .end local v3           #value:Z
    :cond_3
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    .line 727
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401ea

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isUsbMediaPlayerAvailable(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1167
    const/4 v2, 0x1

    .line 1168
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "usbMediaPlayerEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1170
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1171
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 1172
    move v2, v3

    .line 1176
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 1177
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401f2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1182
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isUsbTetheringEnabled()Z
    .locals 7

    .prologue
    .line 426
    const/4 v1, 0x1

    .line 427
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 429
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

    .line 430
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 431
    move v1, v2

    .line 435
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isVpnAllowed()Z
    .locals 7

    .prologue
    .line 1467
    const/4 v1, 0x1

    .line 1468
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "nativeVpnAllowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1470
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

    .line 1471
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1472
    move v1, v2

    .line 1476
    .end local v2           #value:Z
    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVpnAllowed():ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    return v1
.end method

.method public isWallpaperChangeAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1766
    const/4 v1, 0x1

    .line 1767
    .local v1, allowed:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "wallpaperEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1769
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1770
    .local v0, adminValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1771
    const/4 v1, 0x0

    goto :goto_0

    .line 1774
    .end local v0           #adminValue:Ljava/lang/Boolean;
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 1775
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1776
    .local v2, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401f7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1778
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1780
    .end local v2           #i:Landroid/content/Intent;
    :cond_2
    return v1
.end method

.method public isWifiTetheringEnabled()Z
    .locals 7

    .prologue
    .line 472
    const/4 v1, 0x1

    .line 473
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "wifiTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 475
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

    .line 476
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 477
    move v1, v2

    .line 481
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1694
    return-void
.end method

.method onAdminRemoved()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 145
    const/4 v1, -0x1

    sput v1, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    .line 146
    const-string v1, "screenCaptureEnabled"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1698
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    .line 1699
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateCameraState()V

    .line 1700
    const-string v3, "microphoneEnabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1703
    const-string v0, "screenCaptureEnabled"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/data/system/enterprise.conf"

    invoke-static {v0, v1, v3}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1706
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    if-eq v0, v1, :cond_0

    .line 1707
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    .line 1708
    iput-boolean v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 1712
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceStatusBarExpansion(Z)V

    .line 1715
    return-void

    :cond_1
    move v0, v2

    .line 1700
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1703
    goto :goto_1
.end method

.method public onPreAdminRemoval(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 1738
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 1739
    return-void
.end method

.method public setAllowNonMarketApps(Z)Z
    .locals 7
    .parameter "allow"

    .prologue
    .line 1101
    const-string v4, "RestrictionPolicy"

    const-string v5, "MiscPolicy.setAllowNonMarketApps"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1103
    .local v0, callingUid:I
    const/4 v1, 0x1

    .line 1104
    .local v1, ret:Z
    if-nez p1, :cond_0

    .line 1105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1106
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "install_non_market_apps"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 1108
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    .end local v2           #token:J
    :cond_0
    if-eqz v1, :cond_1

    .line 1111
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "allowNonMarketApp"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    and-int/2addr v1, v4

    .line 1114
    :cond_1
    return v1
.end method

.method public setBackgroundData(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 1243
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1244
    .local v0, callingUid:I
    const/4 v2, 0x0

    .line 1245
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1247
    .local v3, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "backgroundDataEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1249
    if-nez p1, :cond_0

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :cond_0
    const/4 v2, 0x1

    .line 1257
    :goto_0
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBackgroundData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1259
    return v2

    .line 1253
    :catch_0
    move-exception v1

    .line 1254
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBackup(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 786
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v1

    .line 787
    .local v1, callingUid:I
    const/4 v3, 0x1

    .line 788
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 791
    .local v4, token:J
    if-nez p1, :cond_1

    .line 792
    :try_start_0
    const-string v7, "backup"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 794
    .local v0, backupManager:Landroid/app/backup/IBackupManager;
    if-nez v0, :cond_0

    .line 795
    const-string v7, "RestrictionPolicy"

    const-string v8, "Failed to get BackupManager"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v0           #backupManager:Landroid/app/backup/IBackupManager;
    :goto_0
    return v6

    .line 798
    .restart local v0       #backupManager:Landroid/app/backup/IBackupManager;
    :cond_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 799
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .end local v0           #backupManager:Landroid/app/backup/IBackupManager;
    :cond_1
    const/4 v3, 0x1

    .line 806
    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "backupEnabled"

    invoke-virtual {v6, v1, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 808
    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBackup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 810
    goto :goto_0

    .line 802
    :catch_0
    move-exception v2

    .line 803
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 804
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setBluetoothTethering(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v0

    .line 491
    .local v0, callingUid:I
    const/4 v2, 0x0

    .line 492
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 495
    .local v3, token:J
    if-nez p1, :cond_0

    .line 496
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 498
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "bluetoothTetheringEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 500
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBluetoothTethering : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    return v2

    .line 501
    :catch_0
    move-exception v1

    .line 502
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    const-string v6, "is EDMStorageProvider running?"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCamera(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 260
    .local v0, callingUid:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "cameraEnabled"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 263
    .local v2, ret:Z
    if-eqz v2, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateCameraState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v2           #ret:Z
    :cond_0
    :goto_0
    return v2

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "RestrictionPolicy"

    const-string v4, "is EDMStorageProvider running?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCellularData(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 888
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 889
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 890
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 893
    .local v4, token:J
    if-nez p1, :cond_1

    .line 894
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 896
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 897
    const-string v7, "RestrictionPolicy"

    const-string v8, "Failed to get Connectivity Manager"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    :goto_0
    return v6

    .line 900
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 901
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v3, 0x1

    .line 908
    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "cellularDataEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 910
    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCellularData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 912
    goto :goto_0

    .line 904
    :catch_0
    move-exception v2

    .line 905
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 906
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setClipboardEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1068
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "clipboardEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setEnableNFC(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 843
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 845
    .local v0, callingUid:I
    if-nez p1, :cond_0

    .line 846
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->disableNFC()V

    .line 848
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "nfcEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setHomeKeyState(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1419
    const/4 v1, 0x1

    .line 1420
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1421
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "homeKeyEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1423
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateHomeKeyPolicySet()V

    .line 1424
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHomeKeyState:ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mHomekeyPolicySet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return v1
.end method

.method public setMicrophoneState(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 305
    .local v0, callingUid:I
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "microphoneEnabled"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 308
    .local v1, ret:Z
    if-eqz v1, :cond_1

    .line 309
    const-string v3, "microphoneEnabled"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v2, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    :cond_1
    return v1
.end method

.method public setMockLocation(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceLocationPermission()I

    move-result v0

    .line 743
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 744
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 746
    .local v3, token:J
    if-nez p1, :cond_0

    .line 747
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mock_location"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :cond_0
    const/4 v2, 0x1

    .line 754
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "mockLocationEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 756
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMockLocationState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    return v2

    .line 750
    :catch_0
    move-exception v1

    .line 751
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 752
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setScreenCapture(Z)Z
    .locals 14
    .parameter "enable"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 533
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 534
    .local v0, callingUid:I
    const/4 v5, 0x0

    .line 535
    .local v5, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 539
    .local v6, token:J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v12, "RESTRICTION"

    const-string v13, "screenCaptureEnabled"

    invoke-virtual {v11, v0, v12, v13, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 541
    const-string v11, "RestrictionPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setScreenCapture : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    if-eqz v5, :cond_1

    .line 545
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v2

    .line 547
    .local v2, current:Z
    const-string v11, "screenCaptureEnabled"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v2, :cond_0

    move v10, v8

    :cond_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "/data/system/enterprise.conf"

    invoke-static {v11, v10, v12}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 549
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 552
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.screencapture"

    const-string v11, "com.sec.android.app.screencapture.ScreenCaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .local v1, comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    move v10, v8

    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 562
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_1
    :try_start_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.diotek.screen_capture"

    const-string v11, "com.diotek.screen_capture.CaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_3

    move v10, v8

    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 573
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_3
    :try_start_3
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.diotek.screen_capture2"

    const-string v11, "com.sec.android.app.screencapture.capture.CaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_4

    move v10, v8

    :goto_4
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 584
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_5
    :try_start_4
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.android.systemui"

    const-string v11, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_5

    :goto_6
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 598
    .end local v1           #comName:Landroid/content/ComponentName;
    .end local v2           #current:Z
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    return v5

    .restart local v1       #comName:Landroid/content/ComponentName;
    .restart local v2       #current:Z
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    move v10, v9

    .line 554
    goto :goto_0

    .line 557
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 558
    .local v3, e:Ljava/lang/Exception;
    :try_start_5
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 595
    .end local v2           #current:Z
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    .line 596
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "RestrictionPolicy"

    const-string v9, "setScreenCapture error"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    .restart local v2       #current:Z
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    move v10, v9

    .line 565
    goto :goto_2

    .line 568
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_2
    move-exception v3

    .line 569
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    :cond_4
    move v10, v9

    .line 576
    goto :goto_4

    .line 579
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_3
    move-exception v3

    .line 580
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    :cond_5
    move v8, v9

    .line 587
    goto :goto_6

    .line 590
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_4
    move-exception v3

    .line 591
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "RestrictionPolicy"

    const-string v9, "is component enabled?"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7
.end method

.method public setSdCardState(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 1006
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 1007
    .local v0, callingUid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1030
    :goto_0
    return v3

    .line 1010
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1011
    .local v4, token:J
    const/4 v3, 0x1

    .line 1012
    .local v3, ret:Z
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1015
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "sdCardEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 1017
    if-nez p1, :cond_1

    .line 1018
    const-string v6, "/storage/extSdCard"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1022
    :cond_1
    :try_start_1
    const-string v6, "/storage/extSdCard"

    invoke-interface {v2, v6}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1026
    :catch_0
    move-exception v1

    .line 1027
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setTethering(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setUsbTethering(Z)Z

    move-result v0

    .line 377
    .local v0, ret1:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setWifiTethering(Z)Z

    move-result v1

    .line 378
    .local v1, ret2:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setBluetoothTethering(Z)Z

    move-result v2

    .line 379
    .local v2, ret3:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setUsbDebuggingEnabled(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 634
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 635
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 637
    .local v3, token:J
    if-nez p1, :cond_0

    .line 638
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :cond_0
    const/4 v2, 0x1

    .line 644
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "usbDebuggingEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 646
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUSBDebugging : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    return v2

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setUsbKiesAvailability(Z)Z
    .locals 2
    .parameter "allow"

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1121
    .local v0, callingUid:I
    const/4 v1, 0x0

    return v1
.end method

.method public setUsbMassStorage(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 676
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 677
    .local v0, callingUid:I
    iget-boolean v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    if-nez v7, :cond_0

    .line 678
    const-string v7, "RestrictionPolicy"

    const-string v8, "Usb mass storage not available on device "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 704
    :goto_0
    return v2

    .line 681
    :cond_0
    const/4 v2, 0x1

    .line 682
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 683
    .local v4, token:J
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "RESTRICTION"

    const-string v9, "massStorageEnabled"

    invoke-virtual {v7, v0, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v2, v7

    .line 686
    if-nez p1, :cond_3

    .line 687
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 689
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    if-nez v3, :cond_1

    .line 690
    const-string v7, "RestrictionPolicy"

    const-string v8, "Failed to get StorageManager"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 691
    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 695
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 696
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    :cond_3
    const/4 v2, 0x1

    .line 703
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 699
    :catch_0
    move-exception v1

    .line 700
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 701
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setUsbMediaPlayerAvailability(Z)Z
    .locals 10
    .parameter "allow"

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1137
    .local v0, callingUid:I
    const/4 v4, 0x1

    .line 1138
    .local v4, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1139
    .local v5, token:J
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "RESTRICTION"

    const-string v9, "usbMediaPlayerEnabled"

    invoke-virtual {v7, v0, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v4, v7

    .line 1142
    if-nez p1, :cond_0

    .line 1144
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.disable.mtp"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v2, intent1:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1146
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1148
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v3, intent2:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1150
    const-string v7, "mtp"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1151
    const-string v7, "ptp"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1152
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    .end local v2           #intent1:Landroid/content/Intent;
    .end local v3           #intent2:Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUSBMediaPlayerAvailability: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1159
    return v4

    .line 1154
    :catch_0
    move-exception v1

    .line 1155
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)Z
    .locals 13
    .parameter "enable"

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v1

    .line 401
    .local v1, callingUid:I
    const/4 v6, 0x1

    .local v6, ret1:Z
    const/4 v7, 0x1

    .line 402
    .local v7, ret2:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 403
    .local v8, token:J
    if-nez p1, :cond_1

    .line 405
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 407
    .local v5, mConnManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 408
    .local v3, iface:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v3}, Lcom/android/server/enterprise/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 409
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 410
    const/4 v6, 0x0

    .line 407
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #mConnManager:Landroid/net/ConnectivityManager;
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "RESTRICTION"

    const-string v12, "usbTetheringEnabled"

    invoke-virtual {v10, v1, v11, v12, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 416
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    const/4 v10, 0x1

    :goto_1
    return v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public setWifiTethering(Z)Z
    .locals 16
    .parameter "enable"

    .prologue
    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v2

    .line 445
    .local v2, callingUid:I
    const/4 v8, 0x1

    .local v8, ret1:Z
    const/4 v9, 0x1

    .local v9, ret2:Z
    const/4 v10, 0x1

    .line 446
    .local v10, ret3:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 447
    .local v11, token:J
    if-nez p1, :cond_2

    .line 448
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 450
    .local v6, mConnManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v1, v3

    .line 451
    .local v4, iface:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/server/enterprise/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 452
    invoke-virtual {v6, v4}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 453
    const/4 v8, 0x0

    .line 450
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 456
    .end local v4           #iface:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 458
    .local v7, mWifiManager:Landroid/net/wifi/WifiManager;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v9

    .line 460
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #mConnManager:Landroid/net/ConnectivityManager;
    .end local v7           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "RESTRICTION"

    const-string v15, "wifiTetheringEnabled"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 462
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 463
    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    const/4 v13, 0x1

    :goto_1
    return v13

    :cond_3
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public systemReady()V
    .locals 9

    .prologue
    .line 1720
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 1722
    .local v6, storageManager:Landroid/os/storage/StorageManager;
    if-eqz v6, :cond_0

    .line 1723
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v4

    .line 1724
    .local v4, paths:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1725
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1726
    .local v3, path:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 1727
    .local v5, storage:Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1728
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    .line 1734
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #paths:[Ljava/lang/String;
    .end local v5           #storage:Landroid/os/storage/StorageVolume;
    :cond_0
    return-void

    .line 1725
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #paths:[Ljava/lang/String;
    .restart local v5       #storage:Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
