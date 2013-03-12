.class public Lcom/android/server/enterprise/EdmBackupTransport;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "EdmBackupTransport.java"


# static fields
.field private static final RESTORE_TOKEN:J = 0x1L

.field private static final TAG:Ljava/lang/String; = "EdmBackupTransport"

.field private static final TRANSPORT_DESTINATION_STRING:Ljava/lang/String; = "Backing up to temporary edm cache"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.server.enterprise.EdmBackupTransport"


# instance fields
.field private mBackupData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEdm:Landroid/sec/enterprise/EnterpriseDeviceManager;

.field private mEdmRestoreDataReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    .line 81
    iput-object v2, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackage:I

    .line 83
    iput-object v2, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestoreData:Ljava/util/Map;

    .line 84
    iput-object v2, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mBackupData:Ljava/util/Map;

    .line 265
    new-instance v1, Lcom/android/server/enterprise/EdmBackupTransport$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EdmBackupTransport$1;-><init>(Lcom/android/server/enterprise/EdmBackupTransport;)V

    iput-object v1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mEdmRestoreDataReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.do.restore"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mEdmRestoreDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mEdm:Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 93
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/EdmBackupTransport;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestoreData:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/EdmBackupTransport;)Landroid/sec/enterprise/EnterpriseDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mEdm:Landroid/sec/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 2
    .parameter "packageInfo"

    .prologue
    .line 184
    const-string v0, "EdmBackupTransport"

    const-string v1, "clearBackupData"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mBackupData:Ljava/util/Map;

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "Backing up to temporary edm cache"

    return-object v0
.end method

.method public finishBackup()I
    .locals 2

    .prologue
    .line 190
    const-string v0, "EdmBackupTransport"

    const-string v1, "finishBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public finishRestore()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "EdmBackupTransport"

    const-string v1, "finishRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Landroid/app/backup/RestoreSet;

    const-string v2, "Edm cache"

    const-string v3, "cache"

    const-wide/16 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 198
    .local v1, set:Landroid/app/backup/RestoreSet;
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/app/backup/RestoreSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 199
    .local v0, array:[Landroid/app/backup/RestoreSet;
    return-object v0
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    .prologue
    .line 204
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 11
    .parameter "outFd"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 229
    const-string v7, "EdmBackupTransport"

    const-string v9, "getRestoreData"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v7, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v7, :cond_0

    .line 231
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "startRestore not called"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 232
    :cond_0
    iget v7, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackage:I

    if-gez v7, :cond_1

    .line 233
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "nextRestorePackage not called"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 235
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestoreData:Ljava/util/Map;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestoreData:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 236
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 237
    .local v5, out:Landroid/app/backup/BackupDataOutput;
    iget-object v7, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestoreData:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 239
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 241
    .local v4, mEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 242
    .local v3, key:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    .line 243
    .local v0, buf:[B
    array-length v6, v0

    .line 245
    .local v6, size:I
    :try_start_0
    invoke-virtual {v5, v3, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 246
    invoke-virtual {v5, v0, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, e:Ljava/io/IOException;
    const-string v7, "EdmBackupTransport"

    const-string v9, "failed to write to backup output "

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    iput-object v10, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestoreData:Ljava/util/Map;

    move v7, v8

    .line 257
    .end local v0           #buf:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #mEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v5           #out:Landroid/app/backup/BackupDataOutput;
    .end local v6           #size:I
    :goto_1
    return v7

    .line 253
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .restart local v5       #out:Landroid/app/backup/BackupDataOutput;
    :cond_2
    iput-object v10, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestoreData:Ljava/util/Map;

    .line 254
    const/4 v7, 0x0

    goto :goto_1

    .line 256
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .end local v5           #out:Landroid/app/backup/BackupDataOutput;
    :cond_3
    iput-object v10, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestoreData:Ljava/util/Map;

    move v7, v8

    .line 257
    goto :goto_1
.end method

.method public initializeDevice()I
    .locals 2

    .prologue
    .line 114
    const-string v0, "EdmBackupTransport"

    const-string v1, "initializeDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public nextRestorePackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    const-string v1, "EdmBackupTransport"

    const-string v2, "nextRestorePackage"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "startRestore not called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_0
    iget v1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackage:I

    iget-object v2, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v2, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackage:I

    aget-object v1, v1, v2

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 220
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestoreData:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 225
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 224
    :cond_1
    const-string v1, "EdmBackupTransport"

    const-string v2, "  no more packages to restore"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, ""

    goto :goto_0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 21
    .parameter "packageInfo"
    .parameter "data"

    .prologue
    .line 119
    const-string v18, "EdmBackupTransport"

    const-string v19, "performBackup()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v12, Landroid/content/Intent;

    const-string v18, "edm.intent.action.backup.result"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v12, intent:Landroid/content/Intent;
    new-instance v7, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 123
    .local v7, changeSet:Landroid/app/backup/BackupDataInput;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/EdmBackupTransport;->mBackupData:Ljava/util/Map;

    .line 125
    const/16 v6, 0x200

    .line 126
    .local v6, bufSize:I
    :try_start_0
    new-array v5, v6, [B

    .line 127
    .local v5, buf:[B
    :cond_0
    :goto_0
    invoke-virtual {v7}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 128
    invoke-virtual {v7}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, key:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v8

    .line 130
    .local v8, dataSize:I
    if-ltz v8, :cond_0

    .line 131
    if-eq v8, v6, :cond_1

    .line 132
    move v6, v8

    .line 133
    new-array v5, v6, [B

    .line 135
    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v5, v0, v8}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EdmBackupTransport;->mBackupData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v5           #buf:[B
    .end local v8           #dataSize:I
    .end local v13           #key:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 173
    .local v9, e:Ljava/io/IOException;
    const-string v18, "EdmBackupTransport"

    const-string v19, "Exception reading backup input:"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/EdmBackupTransport;->mBackupData:Ljava/util/Map;

    .line 175
    const-string v18, "backupResult"

    const/16 v19, -0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EdmBackupTransport;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    const/16 v18, 0x1

    .line 180
    .end local v9           #e:Ljava/io/IOException;
    :goto_1
    return v18

    .line 140
    .restart local v5       #buf:[B
    :cond_2
    const/4 v14, 0x0

    .line 142
    .local v14, pkg:Landroid/content/pm/PackageInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EdmBackupTransport;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 143
    .local v15, pkgMng:Landroid/content/pm/PackageManager;
    const/16 v10, 0x40

    .line 144
    .local v10, flags:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .line 149
    .end local v10           #flags:I
    .end local v15           #pkgMng:Landroid/content/pm/PackageManager;
    :goto_2
    if-nez v14, :cond_3

    .line 150
    const/16 v18, 0x1

    goto :goto_1

    .line 145
    :catch_1
    move-exception v9

    .line 146
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v18, "EdmBackupTransport"

    const-string v19, "something wrong here, invalid package name"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 153
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget v3, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 154
    .local v3, appVersion:I
    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 155
    .local v4, appVersionArray:[B
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    .line 156
    .local v16, sig:[Landroid/content/pm/Signature;
    if-eqz v16, :cond_4

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EdmBackupTransport;->mBackupData:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "packageAppVersionCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_5

    .line 159
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_5

    .line 160
    aget-object v18, v16, v11

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v17

    .line 161
    .local v17, sigs:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EdmBackupTransport;->mBackupData:Ljava/util/Map;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "packageAppSignature"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 165
    .end local v11           #i:I
    .end local v17           #sigs:[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EdmBackupTransport;->mBackupData:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "packageAppSignature0"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EdmBackupTransport;->mEdm:Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EdmBackupTransport;->mBackupData:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/sec/enterprise/ApplicationPolicy;->setBackupData(Ljava/util/Map;)Z

    .line 168
    const-string v18, "backupResult"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EdmBackupTransport;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method public requestBackupTime()J
    .locals 2

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 2
    .parameter "token"
    .parameter "packages"

    .prologue
    .line 208
    const-string v0, "EdmBackupTransport"

    const-string v1, "startRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-object p3, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/EdmBackupTransport;->mRestorePackage:I

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "com.android.server.enterprise.EdmBackupTransport"

    return-object v0
.end method
