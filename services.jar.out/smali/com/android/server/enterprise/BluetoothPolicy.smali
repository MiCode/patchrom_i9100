.class public Lcom/android/server/enterprise/BluetoothPolicy;
.super Landroid/app/enterprise/IBluetoothPolicy$Stub;
.source "BluetoothPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;,
        Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;,
        Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;
    }
.end annotation


# static fields
.field private static final EDM_AVRCP_BLOCK_CONF:Ljava/lang/String; = "avrcpBlocked"

.field private static final TAG:Ljava/lang/String; = "BluetoothPolicyService"


# instance fields
.field private isCacheUpdated:Z

.field private mCacheIsBluetoothLogEnabled:Z

.field private mContext:Landroid/content/Context;

.field mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mLogQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z

.field private mThread:Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;-><init>()V

    .line 92
    iput-boolean v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 93
    iput-boolean v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    .line 94
    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 95
    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    .line 121
    new-instance v1, Lcom/android/server/enterprise/BluetoothPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/BluetoothPolicy$1;-><init>(Lcom/android/server/enterprise/BluetoothPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 103
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 104
    iput-boolean v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 111
    new-instance v1, Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;-><init>(Lcom/android/server/enterprise/BluetoothPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;

    .line 112
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;->start()V

    .line 115
    new-instance v1, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v3, "BLUETOOTH_PROFILE_BWLIST"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;-><init>(Lcom/android/server/enterprise/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    .line 117
    new-instance v1, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v3, "BLUETOOTH_DEVICE_BWLIST"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;-><init>(Lcom/android/server/enterprise/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    .line 118
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->initProfileMap()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/BluetoothPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/BluetoothPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/BluetoothPolicy;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/BluetoothPolicy;)Lcom/android/server/enterprise/EdmStorageProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    return-object v0
.end method

.method private applyDevicePolicy()V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyBlackList(Ljava/util/List;)V

    .line 1157
    return-void
.end method

.method private applyProfilePolicy()V
    .locals 3

    .prologue
    .line 1147
    const-string v1, "avrcpBlocked"

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1151
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->restartBluetooth()V

    .line 1152
    return-void

    .line 1147
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method private enforceBluetoothPermission()I
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getBluetoothLogEnabled(Z)Z
    .locals 12
    .parameter "allAdmins"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 659
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBluetoothLogEnabled("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v6, -0x1

    .line 661
    .local v6, uid:I
    if-nez p1, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v6

    .line 664
    :cond_0
    new-array v0, v11, [Ljava/lang/String;

    .line 665
    .local v0, columns:[Ljava/lang/String;
    const-string v7, "bluetoothLogEnabled"

    aput-object v7, v0, v10

    .line 666
    const/4 v5, 0x0

    .line 668
    .local v5, ret:Z
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBluetoothLogEnabled - uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-lez v6, :cond_3

    .line 670
    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8, v6, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 673
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 674
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v11, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 675
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 676
    const/4 v5, 0x1

    .line 679
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 699
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_0
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBluetoothLogEnabled - ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return v5

    .line 682
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 684
    .local v3, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_2

    .line 685
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBluetoothLogEnabled - cvList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v2, 0x0

    .line 687
    .local v2, cv:Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 689
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 690
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cv:Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 691
    .restart local v2       #cv:Landroid/content/ContentValues;
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBluetoothLogEnabled - cv: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v7, "bluetoothLogEnabled"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 693
    const/4 v5, 0x1

    .line 694
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private initProfileMap()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 1187
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001103-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    return-void
.end method

.method private restartBluetooth()V
    .locals 2

    .prologue
    .line 1160
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1161
    .local v0, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    .line 1164
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1166
    :cond_0
    return-void
.end method


# virtual methods
.method public activateBluetoothDeviceRestriction(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    .line 1030
    const-string v4, "BluetoothPolicyService"

    const-string v5, "activateBluetoothDeviceRestriction"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 1032
    .local v0, adminUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1034
    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eq p1, v4, :cond_0

    .line 1035
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "devicePolicyEnabled"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1037
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1038
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1045
    const/4 v4, 0x1

    return v4

    .line 1040
    :catch_0
    move-exception v1

    .line 1041
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public activateBluetoothUUIDRestriction(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 884
    const-string v5, "BluetoothPolicyService"

    const-string v6, "activateBluetoothUUIDRestriction"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const/4 v2, 0x0

    .line 886
    .local v2, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 887
    .local v0, adminUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 889
    .local v3, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v5

    if-eq p1, v5, :cond_0

    .line 890
    iget-object v5, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string v7, "profilePolicyEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 892
    iget-object v5, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 893
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    return v2

    .line 895
    :catch_0
    move-exception v1

    .line 896
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addBluetoothDevicesToBlackList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 904
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "addDevicesToBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 906
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 907
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 908
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result v1

    .line 909
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 910
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    .line 911
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 912
    return v1
.end method

.method public addBluetoothDevicesToWhiteList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 961
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "addDevicesToWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 963
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 964
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 965
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 966
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 967
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    .line 968
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    return v1
.end method

.method public addBluetoothUUIDsToBlackList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, profileUUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "addProfilesToBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 773
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 774
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 775
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result v1

    .line 776
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    .line 778
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    return v1
.end method

.method public addBluetoothUUIDsToWhiteList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, profileUUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "addProfilesToWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 830
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 831
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 832
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 833
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    .line 835
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    return v1
.end method

.method public allowBluetooth(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 212
    .local v0, adminUid:I
    const/4 v3, 0x1

    .line 213
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 215
    .local v4, token:J
    if-nez p1, :cond_0

    .line 216
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 217
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 220
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

    .line 227
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    return v3

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 225
    :try_start_1
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
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
    .line 318
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

    .line 319
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 320
    .local v0, adminUid:I
    const/4 v3, 0x0

    .line 321
    .local v3, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 323
    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "allowOutgoingCalls"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 325
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 326
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 328
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    .line 329
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    return v3

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method applyBlackList(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p1, blacklist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1172
    .local v0, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 1173
    .local v1, btSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1174
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1175
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1176
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "*"

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1178
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1181
    .end local v0           #ba:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #btSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v3

    .line 1182
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 733
    const/4 v0, 0x0

    .line 737
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    const-string v1, "BluetoothPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on server bluetoothLoglogConnectionChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 741
    :cond_0
    return v0
.end method

.method public clearBluetoothDevicesFromBlackList()Z
    .locals 6

    .prologue
    .line 928
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearDevicesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 930
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 931
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 932
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromBlackList(I)Z

    move-result v1

    .line 933
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 934
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    .line 935
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    return v1
.end method

.method public clearBluetoothDevicesFromWhiteList()Z
    .locals 6

    .prologue
    .line 985
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearDevicesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 987
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 988
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 989
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromWhiteList(I)Z

    move-result v1

    .line 990
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 991
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    .line 992
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    return v1
.end method

.method public clearBluetoothUUIDsFromBlackList()Z
    .locals 6

    .prologue
    .line 795
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearProfilesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 797
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 798
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 799
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->clearObjectsFromBlackList(I)Z

    move-result v1

    .line 800
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 801
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    .line 802
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 803
    return v1
.end method

.method public clearBluetoothUUIDsFromWhiteList()Z
    .locals 6

    .prologue
    .line 852
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearProfilesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 854
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 855
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 856
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->clearObjectsFromWhiteList(I)Z

    move-result v1

    .line 857
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    .line 859
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    return v1
.end method

.method public getAllBluetoothDevicesBlackLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 940
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getAllDevicesBlackLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    .line 942
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 943
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 945
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 946
    return-object v0
.end method

.method public getAllBluetoothDevicesWhiteLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1011
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getAllDevicesWhiteLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    .line 1013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1014
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1016
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1017
    return-object v0
.end method

.method public getAllBluetoothUUIDsBlackLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 807
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getAllProfilesBlackLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    .line 809
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 810
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 813
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    return-object v0
.end method

.method public getAllBluetoothUUIDsWhiteLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getAllProfilesWhiteLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    .line 866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 867
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 869
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 870
    return-object v0
.end method

.method public getAllowBluetoothDataTransfer()Z
    .locals 7

    .prologue
    .line 261
    const-string v4, "BluetoothPolicyService"

    const-string v5, "getBluetoothDataTransferAllowed "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v1, 0x1

    .line 263
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowDataTransfer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 265
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 266
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

    .line 267
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 268
    move v1, v2

    .line 273
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getBluetoothLog()Ljava/util/List;
    .locals 9
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
    .line 704
    const-string v6, "BluetoothPolicyService"

    const-string v7, "getBluetoothLog()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    .line 706
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    .line 707
    .local v0, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "time"

    aput-object v7, v0, v6

    .line 708
    const/4 v6, 0x1

    const-string v7, "log"

    aput-object v7, v0, v6

    .line 709
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v5, reportList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BluetoothLogTable"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 712
    .local v2, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_0

    .line 713
    const-string v6, "BluetoothPolicyService"

    const-string v7, "getBluetoothLog - cvList is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v5, 0x0

    .line 729
    .end local v5           #reportList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v5

    .line 716
    .restart local v5       #reportList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBluetoothLog() - cvList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v1, 0x0

    .line 718
    .local v1, cv:Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 720
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 721
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cv:Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 722
    .restart local v1       #cv:Landroid/content/ContentValues;
    const-string v6, "time"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, report:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 724
    const-string v6, "log"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 725
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBluetoothLog() - report: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 728
    .end local v4           #report:Ljava/lang/String;
    :cond_1
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBluetoothLog() - reportList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEffectiveBluetoothDevicesBlackLists()Ljava/util/List;
    .locals 5
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
    .line 951
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getEffectiveBluetoothDevicesBlackLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    .line 953
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 954
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .line 955
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    return-object v0
.end method

.method public getEffectiveBluetoothDevicesWhiteLists()Ljava/util/List;
    .locals 5
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
    .line 1021
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getEffectiveBluetoothDevicesWhiteLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    .line 1023
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1024
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .line 1025
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1026
    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsBlackLists()Ljava/util/List;
    .locals 5
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
    .line 818
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getEffectiveBluetoothUUIDsBlackLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    .line 820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 821
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .line 822
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsWhiteLists()Ljava/util/List;
    .locals 5
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
    .line 874
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getEffectiveBluetoothUUIDsWhiteLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    .line 876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 877
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .line 878
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 879
    return-object v0
.end method

.method getProfileFromUUID(Ljava/lang/String;)I
    .locals 5
    .parameter "profileUUID"

    .prologue
    .line 1071
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1072
    .local v3, profileItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1073
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1074
    .local v2, profile:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1075
    .local v0, UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1076
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1077
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1080
    .end local v0           #UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #profile:Ljava/lang/Integer;
    :goto_1
    return v4

    .line 1075
    .restart local v0       #UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #i:I
    .restart local v2       #profile:Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1080
    .end local v0           #UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #profile:Ljava/lang/Integer;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "deviceAddress"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothDeviceRestrictionActive()Z
    .locals 6

    .prologue
    .line 1058
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isBluetoothDeviceRestrictionActive"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 1060
    .local v0, adminUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1061
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v1

    .line 1062
    .local v1, ret:Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    return v1
.end method

.method public isBluetoothEnabled()Z
    .locals 7

    .prologue
    .line 146
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isBluetoothEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x1

    .line 148
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 150
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 151
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

    .line 152
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 153
    move v1, v2

    .line 158
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isBluetoothLogEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 651
    iget-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    if-nez v0, :cond_0

    .line 652
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/BluetoothPolicy;->getBluetoothLogEnabled(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 653
    iput-boolean v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    .line 655
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    return v0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "profileUUID"

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothUUIDAllowedInternal(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileUUID"

    .prologue
    const/4 v1, 0x0

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return v1

    .line 1087
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/BluetoothPolicy;->getProfileFromUUID(Ljava/lang/String;)I

    move-result v0

    .line 1088
    .local v0, profile:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1092
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBluetoothUUIDRestrictionActive()Z
    .locals 6

    .prologue
    .line 1049
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isBluetoothUUIDRestrictionActive"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 1051
    .local v0, adminUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1052
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v1

    .line 1053
    .local v1, ret:Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1054
    return v1
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 7

    .prologue
    .line 611
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isLimitedDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v1, 0x1

    .line 613
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "desktopConnectivityEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 616
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 617
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

    .line 618
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 619
    move v1, v2

    .line 624
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isDiscoverableEnabled()Z
    .locals 7

    .prologue
    .line 548
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const/4 v1, 0x1

    .line 550
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "discoverableModeEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 552
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 553
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

    .line 554
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 555
    move v1, v2

    .line 560
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

    .line 561
    return v1
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 7

    .prologue
    .line 402
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isLimitedDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v1, 0x1

    .line 404
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "limitedDiscoverableEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 407
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 408
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

    .line 409
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 410
    move v1, v2

    .line 415
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

    .line 416
    return v1
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 7

    .prologue
    .line 345
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x1

    .line 347
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowOutgoingCalls"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 349
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 350
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

    .line 351
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 352
    move v1, v2

    .line 357
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isPairingEnabled()Z
    .locals 7

    .prologue
    .line 296
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x1

    .line 298
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "pairingEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 300
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 301
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

    .line 302
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 303
    move v1, v2

    .line 308
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isProfileEnabled(I)Z
    .locals 8
    .parameter "profile"

    .prologue
    .line 463
    const/4 v2, 0x1

    .line 465
    .local v2, lEnabled:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string v7, "profileSettings"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 467
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 468
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

    .line 469
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    .line 470
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v5, p1

    if-eq p1, v5, :cond_0

    .line 471
    const/4 v2, 0x0

    .line 481
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Integer;
    .end local v4           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return v2

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isProfileEnabledInternal(I)Z
    .locals 7
    .parameter "profile"

    .prologue
    .line 486
    const/4 v3, 0x0

    .line 488
    .local v3, lEnabled:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 489
    const/4 v4, 0x0

    .line 502
    :goto_0
    return v4

    .line 491
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 492
    .local v0, UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 493
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    const/4 v3, 0x1

    .line 492
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 497
    :cond_2
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MDM: isProfileEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 498
    goto :goto_0

    .line 499
    .end local v0           #UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 500
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 502
    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1102
    return-void
.end method

.method onAdminRemoved()V
    .locals 3

    .prologue
    .line 162
    const-string v1, "avrcpBlocked"

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    .line 167
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 169
    return-void

    .line 162
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 1104
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdminRemoved - uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1106
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    .line 1111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->getBluetoothLogEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    const-string v0, "BluetoothPolicyService"

    const-string v1, "onAdminRemoved - Clean log"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "BluetoothLogTable"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 1116
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1126
    return-void
.end method

.method public removeBluetoothDevicesFromBlackList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 916
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "removeDevicesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 918
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 919
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 920
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result v1

    .line 921
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 922
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    .line 923
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 924
    return v1
.end method

.method public removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "removeDevicesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 975
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 976
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 977
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 978
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 979
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    .line 980
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    return v1
.end method

.method public removeBluetoothUUIDsFromBlackList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, profileUUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "removeProfilesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 785
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 786
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 787
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result v1

    .line 788
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    .line 790
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    return v1
.end method

.method public removeBluetoothUUIDsFromWhiteList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 840
    .local p1, profileUUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "removeProfilesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 842
    .local v0, adminUid:I
    const/4 v1, 0x0

    .line 843
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 844
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 845
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 846
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    .line 847
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    return v1
.end method

.method public setAllowBluetoothDataTransfer(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 249
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

    .line 250
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 251
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
    .line 180
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 181
    .local v0, adminUid:I
    const/4 v3, 0x1

    .line 182
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 184
    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "bluetoothEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 187
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

    .line 188
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 189
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    return v3

    .line 192
    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v2

    .line 194
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 195
    :try_start_2
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 197
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setBluetoothLogEnabled(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    .line 629
    const-string v3, "BluetoothPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBluetoothLogEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v2

    .line 633
    .local v2, uid:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 634
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "bluetoothLogEnabled"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "BLUETOOTH"

    invoke-virtual {v3, v2, v4, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .line 638
    .local v1, ret:Z
    if-nez p1, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->getBluetoothLogEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 639
    const-string v3, "BluetoothPolicyService"

    const-string v4, "setBluetoothLogEnabled - Clean log"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "BluetoothLogTable"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 641
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 643
    :cond_0
    const-string v3, "BluetoothPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBluetoothLogEnabled - return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    if-eqz v1, :cond_1

    .line 645
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    .line 647
    :cond_1
    return v1
.end method

.method public setDesktopConnectivityState(Z)Z
    .locals 12
    .parameter "enable"

    .prologue
    .line 575
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

    .line 576
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 577
    .local v0, adminUid:I
    const/4 v6, 0x0

    .line 578
    .local v6, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 580
    .local v7, token:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "BLUETOOTH"

    const-string v11, "desktopConnectivityEnabled"

    invoke-virtual {v9, v0, v10, v11, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 582
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 583
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez p1, :cond_1

    .line 585
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 587
    .local v2, btSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 588
    .local v5, itr:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 589
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 590
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v9

    const/16 v10, 0x100

    if-ne v9, v10, :cond_0

    .line 593
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 597
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    .end local v2           #btSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #itr:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 598
    .local v4, e:Ljava/lang/Exception;
    const-string v9, "BluetoothPolicyService"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    return v6
.end method

.method public setDiscoverableState(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 518
    .local v0, adminUid:I
    const/4 v3, 0x0

    .line 519
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 521
    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "discoverableModeEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 523
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

    .line 524
    if-eqz v3, :cond_0

    .line 525
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 526
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isDiscoverableEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 528
    const/16 v6, 0x15

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    return v3

    .line 529
    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 530
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 531
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 534
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v2

    .line 535
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 536
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLimitedDiscoverableState(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 368
    .local v0, adminUid:I
    const/4 v3, 0x0

    .line 369
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 371
    .local v5, token:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string v9, "limitedDiscoverableEnabled"

    invoke-virtual {v7, v0, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 373
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

    .line 374
    if-eqz v3, :cond_0

    .line 375
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 376
    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 378
    const/16 v7, 0x17

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 379
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    return v3

    .line 381
    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_1
    const-string v7, "debug.bt.discoverable_time"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 382
    .local v4, timeout:I
    const/16 v7, 0x15

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 383
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

    .line 384
    if-ltz v4, :cond_2

    .end local v4           #timeout:I
    :goto_1
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 387
    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v2

    .line 388
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 389
    const-string v7, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
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
    .line 283
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

    .line 284
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 285
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "BLUETOOTH"

    const-string v3, "pairingEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setProfileState(ZI)Z
    .locals 9
    .parameter "enable"
    .parameter "profile"

    .prologue
    .line 430
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProfileState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .line 432
    .local v0, callingUid:I
    const/4 v3, 0x0

    .line 433
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 438
    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "profileSettings"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 443
    .local v2, lValue:I
    :goto_0
    const/4 v6, 0x1

    if-ne v6, p1, :cond_0

    or-int/2addr v2, p2

    .line 444
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "profileSettings"

    invoke-virtual {v6, v0, v7, v8, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 446
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 450
    .end local v2           #lValue:I
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    return v3

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const v2, 0xffff

    .restart local v2       #lValue:I
    goto :goto_0

    .line 443
    .end local v1           #e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :cond_0
    xor-int/lit8 v6, p2, -0x1

    and-int/2addr v2, v6

    goto :goto_1

    .line 447
    .end local v2           #lValue:I
    :catch_1
    move-exception v1

    .line 448
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1120
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1121
    return-void
.end method

.method public translateList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ControlInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 997
    .local p1, clist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ControlInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 998
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/ControlInfo;

    .line 999
    .local v3, obj:Landroid/app/enterprise/ControlInfo;
    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1001
    new-instance v1, Landroid/app/enterprise/BluetoothControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/BluetoothControlInfo;-><init>()V

    .line 1002
    .local v1, info:Landroid/app/enterprise/BluetoothControlInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->entries:Ljava/util/List;

    .line 1003
    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->adminPackageName:Ljava/lang/String;

    iput-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->adminPackageName:Ljava/lang/String;

    .line 1004
    iget-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->entries:Ljava/util/List;

    iget-object v5, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1005
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1007
    .end local v1           #info:Landroid/app/enterprise/BluetoothControlInfo;
    .end local v3           #obj:Landroid/app/enterprise/ControlInfo;
    :cond_1
    return-object v2
.end method
