.class final Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMapPermissionChoice:I

.field private mName:Ljava/lang/String;

.field private mPhonebookPermissionChoice:I

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "context"
    .parameter "adapter"
    .parameter "profileManager"
    .parameter "device"

    .prologue
    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 159
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 161
    iput-object p3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 162
    iput-object p4, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 164
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 165
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 228
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    :cond_0
    return-void

    .line 232
    :cond_1
    iput-boolean v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 234
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 235
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 237
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private connectInt(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Command sent successfully:CONNECT "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_1
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Failed to connect "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 6
    .parameter "connectAllProfiles"

    .prologue
    .line 199
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, preferredProfiles:I
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 213
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    if-eqz p1, :cond_3

    invoke-interface {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    add-int/lit8 v1, v1, 0x1

    .line 216
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 213
    :cond_3
    invoke-interface {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 220
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_4
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred profiles = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-nez v1, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    goto :goto_0
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 568
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 569
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;

    .line 570
    .local v0, callback:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 572
    .end local v0           #callback:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 449
    return-void
.end method

.method private fetchMapPermissionChoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 662
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_map_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 664
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mMapPermissionChoice:I

    .line 666
    return-void
.end method

.method private fetchName()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 381
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Device has no name (yet), use address: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    return-void
.end method

.method private fetchPhonebookPermissionChoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 643
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 645
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 647
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 340
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 341
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 342
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchPhonebookPermissionChoice()V

    .line 343
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchMapPermissionChoice()V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 346
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 347
    return-void
.end method

.method private updateProfiles()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 452
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 453
    .local v6, uuids:[Landroid/os/ParcelUuid;
    if-nez v6, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v7

    .line 455
    :cond_1
    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 456
    .local v4, localUuids:[Landroid/os/ParcelUuid;
    if-eqz v4, :cond_0

    .line 458
    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    iget-object v8, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v9, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-virtual {v7, v6, v4, v8, v9}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 461
    const-string v7, "CachedBluetoothDevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updating profiles for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 464
    .local v1, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_2

    const-string v7, "CachedBluetoothDevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_2
    const-string v7, "CachedBluetoothDevice"

    const-string v8, "UUID:"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move-object v0, v6

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 467
    .local v5, uuid:Landroid/os/ParcelUuid;
    const-string v7, "CachedBluetoothDevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 470
    .end local v5           #uuid:Landroid/os/ParcelUuid;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .parameter "another"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 598
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 599
    .local v0, comparison:I
    if-eqz v0, :cond_2

    move v1, v0

    .line 615
    :goto_2
    return v1

    .end local v0           #comparison:I
    :cond_0
    move v1, v3

    .line 598
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 602
    .restart local v0       #comparison:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_4
    sub-int v0, v1, v4

    .line 604
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 602
    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    .line 607
    :cond_5
    iget-boolean v1, p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iget-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_7

    :goto_6
    sub-int v0, v1, v2

    .line 608
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 607
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 611
    :cond_8
    iget-short v1, p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 612
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 615
    :cond_9
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method connect(Z)V
    .locals 2
    .parameter "connectAllProfiles"

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 188
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_0
.end method

.method connectProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 251
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 252
    return-void
.end method

.method disconnect()V
    .locals 3

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 169
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 171
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method disconnect(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Command sent successfully:DISCONNECT "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 582
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 583
    :cond_0
    const/4 v0, 0x0

    .line 585
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .end local p1
    iget-object v1, p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getBondState()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, connectableProfiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 544
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_1
    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getMapPermissionChoice()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mMapPermissionChoice:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPhonebookPermissionChoice()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    return v0
.end method

.method getProfileConnectionState(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)I
    .locals 3
    .parameter "profile"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 332
    .local v0, state:I
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .end local v0           #state:I
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isBusy()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 434
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 435
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 436
    .local v2, status:I
    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 441
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 4

    .prologue
    .line 417
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 418
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 419
    .local v2, status:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 420
    const/4 v3, 0x1

    .line 424
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isConnectedProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Z
    .locals 2
    .parameter "profile"

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 429
    .local v0, status:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 195
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 2
    .parameter "bondState"

    .prologue
    const/4 v1, 0x0

    .line 506
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 508
    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 509
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 510
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setMapPermissionChoice(I)V

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 515
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 521
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 523
    :cond_2
    return-void

    .line 518
    :cond_3
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method

.method onProfileStateChanged(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;I)V
    .locals 3
    .parameter "profile"
    .parameter "newProfileState"

    .prologue
    .line 130
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/OriginalSettings/bluetooth/PanProfile;

    .end local p1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/OriginalSettings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 145
    .restart local p1
    :cond_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/OriginalSettings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 148
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0
.end method

.method onUuidChanged()V
    .locals 6

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 489
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUuidChanged: Time since last connect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 503
    return-void
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 387
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 479
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 480
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 372
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 373
    return-void
.end method

.method registerCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 558
    monitor-exit v1

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .parameter "btClass"

    .prologue
    .line 526
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 527
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 528
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 530
    :cond_0
    return-void
.end method

.method setMapPermissionChoice(I)V
    .locals 4
    .parameter "permissionChoice"

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_map_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 652
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 658
    iput p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mMapPermissionChoice:I

    .line 659
    return-void

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 366
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 368
    :cond_0
    return-void

    .line 363
    :cond_1
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method setPhonebookPermissionChoice(I)V
    .locals 4
    .parameter "permissionChoice"

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 633
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 638
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    iput p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 640
    return-void

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method setRssi(S)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 405
    iget-short v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 406
    iput-short p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 407
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 409
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 395
    iput-boolean p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 396
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 398
    :cond_0
    return-void
.end method

.method startPairing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 280
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0

    .line 288
    :cond_1
    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpair()V
    .locals 5

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 303
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 305
    .local v1, state:I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 309
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 311
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 313
    .local v2, successful:Z
    if-eqz v2, :cond_2

    .line 316
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "Command sent successfully:REMOVE_BOND "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #successful:Z
    :cond_1
    :goto_0
    return-void

    .line 321
    .restart local v0       #dev:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #successful:Z
    :cond_2
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "Framework rejected command immediately:REMOVE_BOND "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method unregisterCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 564
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
