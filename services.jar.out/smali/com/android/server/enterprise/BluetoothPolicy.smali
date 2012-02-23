.class public Lcom/android/server/enterprise/BluetoothPolicy;
.super Landroid/app/enterprise/IBluetoothPolicy$Stub;
.source "BluetoothPolicy.java"


# static fields
.field private static final EDM_AVRCP_BLOCK_CONF:Ljava/lang/String; = "avrcpBlocked"

.field private static final TAG:Ljava/lang/String; = "BluetoothPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;-><init>()V

    .line 52
    new-instance v1, Lcom/android/server/enterprise/BluetoothPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/BluetoothPolicy$1;-><init>(Lcom/android/server/enterprise/BluetoothPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    iput-object p1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 45
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/BluetoothPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/BluetoothPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    return p1
.end method

.method private enforceBluetoothPermission()I
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public allowBluetooth(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 141
    .local v0, adminUid:I
    const/4 v3, 0x1

    .line 142
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 144
    .local v4, token:J
    if-nez p1, :cond_0

    .line 145
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 146
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 149
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "bluetoothEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 155
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    return v3

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0

    .line 155
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public allowOutgoingCalls(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    .line 246
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBluetoothDataTransferAllowed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 248
    .local v0, adminUid:I
    const/4 v3, 0x0

    .line 249
    .local v3, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 251
    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "allowOutgoingCalls"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 253
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 254
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    .line 257
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 263
    return v3

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllowBluetoothDataTransfer()Z
    .locals 7

    .prologue
    .line 189
    const-string v4, "BluetoothPolicyService"

    const-string v5, "getBluetoothDataTransferAllowed "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x1

    .line 191
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowDataTransfer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 193
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 194
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

    .line 195
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 196
    move v1, v2

    .line 201
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isBluetoothEnabled()Z
    .locals 7

    .prologue
    .line 77
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isBluetoothEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x1

    .line 79
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 81
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 82
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

    .line 83
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 84
    move v1, v2

    .line 89
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 7

    .prologue
    .line 525
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isLimitedDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v1, 0x1

    .line 527
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "desktopConnectivityEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 530
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 531
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

    .line 532
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 533
    move v1, v2

    .line 538
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isDiscoverableEnabled()Z
    .locals 7

    .prologue
    .line 462
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v1, 0x1

    .line 464
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "discoverableModeEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 466
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 467
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

    .line 468
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 469
    move v1, v2

    .line 474
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDiscoverableEnabled ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return v1
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 7

    .prologue
    .line 329
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isLimitedDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v1, 0x1

    .line 331
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "limitedDiscoverableEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 334
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 335
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

    .line 336
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 337
    move v1, v2

    .line 342
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLimitedDiscoverableEnabled ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return v1
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 7

    .prologue
    .line 273
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x1

    .line 275
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowOutgoingCalls"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 277
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 278
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

    .line 279
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 280
    move v1, v2

    .line 285
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isPairingEnabled()Z
    .locals 7

    .prologue
    .line 224
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v1, 0x1

    .line 226
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "pairingEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 228
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 229
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

    .line 230
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 231
    move v1, v2

    .line 236
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isProfileEnabled(I)Z
    .locals 8
    .parameter "profile"

    .prologue
    .line 400
    const/4 v2, 0x1

    .line 402
    .local v2, lEnabled:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string v7, "profileSettings"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 404
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 405
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 406
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    .line 407
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v5, p1

    if-eq p1, v5, :cond_0

    .line 408
    const/4 v2, 0x0

    .line 418
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Integer;
    .end local v4           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return v2

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onAdminRemoved()V
    .locals 3

    .prologue
    .line 93
    const-string v1, "avrcpBlocked"

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    return-void

    .line 93
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public setAllowBluetoothDataTransfer(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 177
    const-string v1, "BluetoothPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothDataTransferAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 179
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "BLUETOOTH"

    const-string v3, "allowDataTransfer"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setBluetooth(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 109
    .local v0, adminUid:I
    const/4 v3, 0x1

    .line 110
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 112
    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "bluetoothEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 115
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBluetooth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 117
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    return v3

    .line 120
    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 121
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v2

    .line 122
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 123
    :try_start_2
    const-string v6, "BluetoothPolicyService"

    const-string v7, "could not write bt database"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 126
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setDesktopConnectivityState(Z)Z
    .locals 12
    .parameter "enable"

    .prologue
    .line 489
    const-string v9, "BluetoothPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDesktopConnectivityState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 491
    .local v0, adminUid:I
    const/4 v6, 0x0

    .line 492
    .local v6, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 494
    .local v7, token:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "BLUETOOTH"

    const-string v11, "desktopConnectivityEnabled"

    invoke-virtual {v9, v0, v10, v11, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 496
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 497
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez p1, :cond_1

    .line 499
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 501
    .local v2, btSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 502
    .local v5, itr:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 503
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 504
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v9

    const/16 v10, 0x100

    if-ne v9, v10, :cond_0

    .line 507
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    .end local v2           #btSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #itr:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 512
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    return v6
.end method

.method public setDiscoverableState(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 433
    .local v0, adminUid:I
    const/4 v3, 0x0

    .line 434
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 436
    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "discoverableModeEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 438
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDiscoverableState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-eqz v3, :cond_0

    .line 440
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 441
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isDiscoverableEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 442
    const/16 v6, 0x15

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 453
    return v3

    .line 443
    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 444
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 445
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 448
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v2

    .line 449
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 450
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLimitedDiscoverableState(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 296
    .local v0, adminUid:I
    const/4 v3, 0x0

    .line 297
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 299
    .local v5, token:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string v9, "limitedDiscoverableEnabled"

    invoke-virtual {v7, v0, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 301
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setLimitedDiscoverableState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-eqz v3, :cond_0

    .line 303
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 304
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 305
    const/16 v7, 0x17

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 306
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    return v3

    .line 308
    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_1
    const-string v7, "debug.bt.discoverable_time"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 309
    .local v4, timeout:I
    const/16 v7, 0x15

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 310
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default discoverable_time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-ltz v4, :cond_2

    .end local v4           #timeout:I
    :goto_1
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 314
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v2

    .line 315
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 316
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    .restart local v4       #timeout:I
    :cond_2
    const/16 v4, 0x78

    goto :goto_1
.end method

.method public setPairingState(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 211
    const-string v1, "BluetoothPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothDataTransferAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 213
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "BLUETOOTH"

    const-string v3, "pairingEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setProfileState(ZI)Z
    .locals 12
    .parameter "enable"
    .parameter "profile"

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x1

    .line 354
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setProfileState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v1

    .line 356
    .local v1, callingUid:I
    const/4 v4, 0x0

    .line 357
    .local v4, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 362
    .local v5, token:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string v9, "profileSettings"

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 368
    .local v3, lValue:I
    :goto_0
    if-ne v10, p1, :cond_2

    or-int/2addr v3, p2

    .line 369
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string v9, "profileSettings"

    invoke-virtual {v7, v1, v8, v9, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 372
    if-eqz v4, :cond_0

    if-ne p2, v11, :cond_0

    .line 374
    const-string v8, "avrcpBlocked"

    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "0"

    :goto_2
    const-string v9, "/data/system/enterprise.conf"

    invoke-static {v8, v7, v9}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 381
    .local v0, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 383
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    .line 384
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    .end local v0           #ba:Landroid/bluetooth/BluetoothAdapter;
    .end local v3           #lValue:I
    :cond_1
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    return v4

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const v3, 0xffff

    .restart local v3       #lValue:I
    goto :goto_0

    .line 368
    .end local v2           #e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :cond_2
    xor-int/lit8 v7, p2, -0x1

    and-int/2addr v3, v7

    goto :goto_1

    .line 374
    :cond_3
    :try_start_2
    const-string v7, "1"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 386
    .end local v3           #lValue:I
    :catch_1
    move-exception v2

    .line 387
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
