.class public Lcom/android/server/enterprise/ApplicationPolicy;
.super Landroid/app/enterprise/IApplicationPolicy$Stub;
.source "ApplicationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ApplicationPolicy$4;,
        Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;,
        Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;,
        Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;
    }
.end annotation


# static fields
.field private static ALL_PACKAGES:Ljava/lang/String; = null

.field private static final BACKUP_RESTORE_TIMEOUT:J = 0x7530L

.field private static final CPU_ELAPSED_TIME:I = 0x3e8

.field private static final CPU_IDLE_TIME:I = 0x4

.field private static final CPU_IO_WAIT_TIME:I = 0x5

.field private static final CPU_IRQ_TIME:I = 0x6

.field private static final CPU_NICE_TIME:I = 0x2

.field private static final CPU_SOFT_IRQ_TIME:I = 0x7

.field private static final CPU_SYSTEM_TIME:I = 0x3

.field private static final CPU_USER_TIME:I = 0x1

.field private static final EXTRA_APPSTATE:Ljava/lang/String; = "application_state_disable_enable"

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final PERMISSION_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PermissionInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PackageNameInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_WHITELIST:Ljava/lang/String; = "PackageNameInstallationWhitelist"

.field private static final PKGNAME_NOTIFICATION_BLACKLIST:Ljava/lang/String; = "PackageNameNotificationBlacklist"

.field private static final PKGNAME_NOTIFICATION_WHITELIST:Ljava/lang/String; = "PackageNameNotificationWhitelist"

.field private static final PKGNAME_STOP_BLACKLIST:Ljava/lang/String; = "PackageNameStopBlacklist"

.field private static final PKGNAME_STOP_WHITELIST:Ljava/lang/String; = "PackageNameStopWhitelist"

.field private static final PKGNAME_WIDGET_BLACKLIST:Ljava/lang/String; = "PackageNameWidgetBlacklist"

.field private static final PKGNAME_WIDGET_WHITELIST:Ljava/lang/String; = "PackageNameWidgetWhitelist"

.field private static final PROCESS_SYSTEM_TIME:I = 0xe

.field private static final PROCESS_USER_TIME:I = 0xd

.field private static final SIGNATURE_INSTALLATION_BLACKLIST:Ljava/lang/String; = "SignatureInstallationBlacklist"

.field private static final TAG:Ljava/lang/String; = "ApplicationPolicy"

.field private static final UNINSTALLATION_BLACKLIST:Ljava/lang/String; = "UninstallationBlacklist"

.field private static final UNINSTALLATION_WHITELIST:Ljava/lang/String; = "UninstallationWhitelist"

.field private static final UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static mAppControlState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mAppIconChangedPkgNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mBackupRestoreReceiver:Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;

.field private static volatile packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private volatile isBackupRunning:Z

.field private volatile isRestoreRunning:Z

.field private mAppControlPolicy:Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;

.field private mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

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

.field final mBackupLock:Ljava/lang/Object;

.field private mBackupReturnCode:I

.field mContext:Landroid/content/Context;

.field private mCurrentBackupPackage:Ljava/lang/String;

.field private mCurrentRestorePackage:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mNotificationMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

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

.field final mRestoreLock:Ljava/lang/Object;

.field private mRestoreReturnCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 157
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 213
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 245
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;

    .line 253
    const-string v0, "*"

    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->ALL_PACKAGES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 277
    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;-><init>()V

    .line 159
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlPolicy:Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;

    .line 207
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 209
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 239
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 240
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    .line 241
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    .line 242
    iput-boolean v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 243
    iput-boolean v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 246
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupData:Ljava/util/Map;

    .line 247
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    .line 250
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    .line 251
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    .line 252
    iput-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    .line 278
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 279
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 280
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 281
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->registerPackageChangeReceiver()V

    .line 282
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationIconDb;->getApplicationIconChangedList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 283
    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 286
    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    sput-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.backup.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v1, "edm.intent.action.restore.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->registerWidgetChangedListener()V

    .line 293
    return-void
.end method

.method private _installApplication(ILjava/lang/String;Z)Z
    .locals 12
    .parameter "callingUid"
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 1369
    const/4 v4, 0x0

    .line 1371
    .local v4, success:Z
    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1372
    const-string v7, "installApplication : External Storage Emulated"

    invoke-static {v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1373
    const/4 v7, 0x0

    .line 1428
    :goto_0
    return v7

    .line 1376
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1378
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    move v7, v4

    .line 1379
    goto :goto_0

    .line 1381
    :cond_2
    const/4 v2, 0x2

    .line 1383
    .local v2, installFlags:I
    if-eqz p3, :cond_4

    .line 1384
    or-int/lit8 v2, v2, 0x8

    .line 1388
    :goto_1
    new-instance v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 1390
    .local v3, obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1393
    .local v5, token:J
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1395
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ApplicationPolicy: Not a valid file \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    .end local v0           #apkFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1417
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1420
    if-eqz v4, :cond_3

    if-eq p1, v11, :cond_3

    .line 1423
    iget-object v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1424
    iget-object v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setInstallSoureMDM(ILjava/lang/String;Z)V

    .line 1426
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v4

    .line 1428
    goto :goto_0

    .line 1386
    .end local v3           #obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    .end local v5           #token:J
    :cond_4
    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 1397
    .restart local v0       #apkFile:Ljava/io/File;
    .restart local v3       #obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    .restart local v5       #token:J
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/ApplicationPolicy;->canRead(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1398
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ApplicationPolicy: Permission denied - Unable to open file \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1420
    .end local v0           #apkFile:Ljava/io/File;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_6

    if-eq p1, v11, :cond_6

    .line 1423
    iget-object v8, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1424
    iget-object v8, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setInstallSoureMDM(ILjava/lang/String;Z)V

    .line 1426
    :cond_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1420
    throw v7

    .line 1401
    .restart local v0       #apkFile:Ljava/io/File;
    :cond_7
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v3, v2, v9}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 1403
    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1404
    :goto_3
    :try_start_4
    iget-boolean v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->finished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v7, :cond_8

    .line 1406
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 1407
    :catch_1
    move-exception v7

    goto :goto_3

    .line 1410
    :cond_8
    :try_start_6
    iget v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->result:I

    if-ne v7, v10, :cond_9

    .line 1411
    const/4 v4, 0x1

    .line 1415
    :goto_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1420
    if-eqz v4, :cond_3

    if-eq p1, v11, :cond_3

    .line 1423
    iget-object v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1424
    iget-object v7, v3, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->setInstallSoureMDM(ILjava/lang/String;Z)V

    goto :goto_2

    .line 1413
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 1415
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method private _setApplicationInstallationDisabled(ILjava/lang/String;Z)V
    .locals 3
    .parameter "callingUid"
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 1664
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1665
    if-eqz p2, :cond_0

    .line 1667
    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, p2, p1, v1, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1670
    const/16 v2, 0x8

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    :cond_0
    :goto_1
    return-void

    .line 1670
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1681
    :catch_0
    move-exception v0

    .line 1682
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private _setApplicationUninstallationDisabled(ILjava/lang/String;Z)V
    .locals 3
    .parameter "callingUid"
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    const/4 v1, 0x1

    .line 1855
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1856
    if-eqz p2, :cond_0

    .line 1858
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p1, v2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1860
    const/16 v2, 0x400

    if-nez p3, :cond_1

    :goto_0
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    :cond_0
    :goto_1
    return-void

    .line 1860
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1862
    :catch_0
    move-exception v0

    .line 1863
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private _uninstallApplication(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 1512
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1513
    if-nez p1, :cond_0

    .line 1514
    const/4 v5, 0x0

    .line 1544
    :goto_0
    return v5

    .line 1515
    :cond_0
    const/4 v4, 0x0

    .line 1516
    .local v4, unInstallFlags:I
    if-eqz p2, :cond_1

    .line 1517
    const/4 v4, 0x1

    .line 1520
    :cond_1
    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 1522
    .local v1, obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1525
    .local v2, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v1, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1527
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1528
    :goto_1
    :try_start_1
    iget-boolean v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    .line 1530
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1531
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1534
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1542
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1544
    iget-boolean v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->result:Z

    goto :goto_0

    .line 1534
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1535
    :catch_1
    move-exception v0

    .line 1536
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 1542
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/ApplicationPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/enterprise/ApplicationPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput p1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupReturnCode:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/enterprise/ApplicationPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput p1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreReturnCode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/ApplicationPolicy;)Lcom/android/server/enterprise/EdmStorageProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z
    .locals 6
    .parameter "key"
    .parameter "bitMask"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3873
    .local p3, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3874
    .local v0, callingUid:I
    const/4 v4, 0x1

    .line 3876
    .local v4, result:Z
    if-eqz p3, :cond_1

    .line 3877
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3878
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3879
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3880
    .local v3, pkg:Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->ALL_PACKAGES:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3881
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3873
    .end local v0           #callingUid:I
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 3886
    .restart local v0       #callingUid:I
    .restart local v4       #result:Z
    :cond_1
    if-eqz p3, :cond_2

    .line 3887
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3888
    .restart local v3       #pkg:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-direct {p0, v3, v0, p2, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    and-int/2addr v4, v5

    goto :goto_1

    .line 3892
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return v4
.end method

.method private canRead(Ljava/lang/String;)Z
    .locals 5
    .parameter "filepath"

    .prologue
    .line 1447
    const/4 v0, 0x0

    .line 1449
    .local v0, canread:Z
    :try_start_0
    const-string v3, "\\\\"

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1450
    const-string v3, "/"

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1451
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1452
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1453
    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [I

    .line 1454
    .local v2, mOutPermissions:[I
    invoke-static {p1, v2}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 1455
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1456
    const/4 v0, 0x1

    .line 1461
    .end local v2           #mOutPermissions:[I
    :cond_1
    :goto_0
    return v0

    .line 1458
    :catch_0
    move-exception v1

    .line 1459
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .locals 2
    .parameter "regex"

    .prologue
    .line 2911
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2916
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2912
    :catch_0
    move-exception v0

    .line 2913
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2914
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cleanCmdline(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "aRawData"

    .prologue
    .line 3633
    if-nez p1, :cond_1

    .line 3634
    const-string p1, "<invalid>"

    .line 3641
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 3636
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3637
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3638
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3636
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private clearApplicationCacheFiles(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    .line 1161
    const/4 v2, 0x0

    .line 1162
    .local v2, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1163
    if-eqz p1, :cond_1

    .line 1164
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    .line 1166
    .local v0, clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1168
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1169
    :goto_0
    :try_start_1
    iget-boolean v3, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 1171
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1172
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1175
    :cond_0
    const/4 v3, 0x1

    :try_start_3
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->success:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1177
    const/4 v2, 0x1

    .line 1181
    :goto_1
    monitor-exit v0

    .line 1187
    .end local v0           #clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :cond_1
    :goto_2
    return v2

    .line 1179
    .restart local v0       #clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1181
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1182
    :catch_1
    move-exception v1

    .line 1183
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1184
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private clearUserData(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    .line 1206
    const/4 v4, 0x0

    .line 1207
    .local v4, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1208
    if-eqz p1, :cond_0

    .line 1209
    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    .line 1211
    .local v1, clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1213
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    .line 1214
    .local v3, res:Z
    if-nez v3, :cond_1

    .line 1217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear application user data for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1240
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    .end local v3           #res:Z
    :cond_0
    :goto_0
    return v4

    .line 1220
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    .restart local v3       #res:Z
    :cond_1
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1221
    :goto_1
    :try_start_1
    iget-boolean v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    .line 1223
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1224
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1227
    :cond_2
    const/4 v5, 0x1

    :try_start_3
    iget-boolean v6, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->success:Z

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1229
    const/4 v4, 0x1

    .line 1233
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1235
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #res:Z
    :catch_1
    move-exception v2

    .line 1236
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 1237
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1231
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v3       #res:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private declared-synchronized createAdminMap(I)V
    .locals 3
    .parameter "adminUid"

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 469
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 470
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "PackageNameInstallationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v1, "PackageNameInstallationWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v1, "PermissionInstallationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v1, "SignatureInstallationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v1, "UninstallationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v1, "UninstallationWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v1, "PackageNameStopBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v1, "PackageNameStopWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v1, "PackageNameWidgetBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v1, "PackageNameWidgetWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v1, "PackageNameNotificationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v1, "PackageNameNotificationWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enforceAppPermission()I
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getActualApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 1081
    const/4 v1, 0x0

    .line 1082
    .local v1, enabled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1097
    :goto_0
    return v3

    .line 1087
    :cond_0
    if-eqz p1, :cond_1

    .line 1089
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1090
    .local v2, value:I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    move v1, v3

    .line 1096
    .end local v2           #value:I
    :cond_1
    :goto_1
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualApplicationStateEnabled() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    .line 1097
    goto :goto_0

    .line 1090
    .restart local v2       #value:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1091
    .end local v2           #value:I
    :catch_0
    move-exception v0

    .line 1092
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 3082
    const/4 v1, 0x0

    .line 3083
    .local v1, mAppInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3084
    if-eqz p1, :cond_0

    .line 3086
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3093
    :cond_0
    :goto_0
    return-object v1

    .line 3088
    :catch_0
    move-exception v0

    .line 3089
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo() : Exception when retrieving package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized getApplicationControlState(Ljava/lang/String;II)Z
    .locals 7
    .parameter "pkgName"
    .parameter "callingUid"
    .parameter "controlStateMask"

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 673
    .local v6, controlState:I
    and-int v0, v6, p3

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 666
    .end local v6           #controlState:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    .locals 11
    .parameter "packageName"
    .parameter "packageUri"

    .prologue
    .line 2144
    new-instance v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 2146
    .local v4, pkg:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    if-eqz p2, :cond_2

    .line 2148
    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 2149
    .local v6, pkgInst:Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 2150
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 2151
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 2152
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 2153
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    .line 2154
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_1

    .line 2155
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 2156
    .local v7, sig:Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2159
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #pkgInst:Landroid/content/pm/PackageParser$Package;
    .end local v7           #sig:Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 2160
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "ApplicationPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v4

    .line 2165
    :cond_2
    if-nez p1, :cond_4

    const-string p1, ""

    .line 2166
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 2168
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x1040

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2170
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    .line 2171
    iput-object p1, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 2172
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v8, :cond_3

    .line 2173
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 2174
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    .line 2175
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0       #arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 2176
    .restart local v7       #sig:Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2175
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2165
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #sig:Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 2179
    :catch_1
    move-exception v1

    .line 2180
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2181
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 6
    .parameter "packageName"

    .prologue
    .line 2629
    const/4 v1, 0x0

    .line 2630
    .local v1, pkgst:Landroid/content/pm/PackageStats;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2631
    if-eqz p1, :cond_1

    .line 2632
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 2633
    .local v0, obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2635
    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 2636
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2637
    :goto_0
    :try_start_1
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 2639
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2640
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2643
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2645
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_1

    .line 2647
    iget-object v1, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 2651
    .end local v0           #obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .end local v2           #token:J
    :cond_1
    return-object v1

    .line 2643
    .restart local v0       #obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .restart local v2       #token:J
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2645
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    iget-boolean v5, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_2

    .line 2647
    iget-object v1, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 2645
    :cond_2
    throw v4
.end method

.method private declared-synchronized getApplicationStateList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "key"
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
    .line 3920
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3921
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3922
    .local v5, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v8, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 3924
    .local v7, uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_1

    .line 3925
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3926
    .local v6, uid:I
    sget-object v8, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3927
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 3928
    sget-object v8, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 3929
    .local v3, packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3930
    .local v4, pkg:Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3920
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #packages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #pkg:Ljava/lang/String;
    .end local v5           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #uid:I
    .end local v7           #uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 3936
    .restart local v5       #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7       #uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8
.end method

.method private getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 11
    .parameter "pkg"
    .parameter "callingUid"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2021
    const/4 v7, 0x0

    .line 2022
    .local v7, appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2023
    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "packageName"

    aput-object v0, v5, v9

    const-string v0, "applicationInstallationCount"

    aput-object v0, v5, v10

    const/4 v0, 0x2

    const-string v1, "applicationUninstallationCount"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "managedApp"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "install_sourceMDM"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "controlState"

    aput-object v1, v5, v0

    .line 2028
    .local v5, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2031
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 2032
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2033
    .restart local v7       #appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2034
    new-instance v6, Landroid/app/enterprise/ManagedAppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/ManagedAppInfo;-><init>()V

    .line 2035
    .local v6, appInfo:Landroid/app/enterprise/ManagedAppInfo;
    const-string v0, "packageName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    .line 2037
    const-string v0, "applicationInstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    .line 2039
    const-string v0, "applicationUninstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    .line 2041
    const-string v0, "managedApp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 2043
    const-string v0, "install_sourceMDM"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    .line 2045
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    :goto_1
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    .line 2048
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v9

    :goto_2
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 2050
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v9

    :goto_3
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    .line 2052
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v10

    .line 2045
    goto :goto_1

    :cond_1
    move v0, v9

    goto :goto_1

    :cond_2
    move v0, v10

    .line 2048
    goto :goto_2

    :cond_3
    move v0, v10

    .line 2050
    goto :goto_3

    .line 2054
    .end local v6           #appInfo:Landroid/app/enterprise/ManagedAppInfo;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2057
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2058
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/enterprise/ManagedAppInfo;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    .line 2060
    :goto_4
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private getBackupAgentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    .line 4625
    const/16 v1, 0x40

    .line 4626
    .local v1, flags:I
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 4627
    .local v4, pkgInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 4628
    .local v3, pgkInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4629
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4631
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 4639
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pgkInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return-object v5

    .line 4635
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #pgkInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    goto :goto_0
.end method

.method private final getDebugMemoryInfo(ILandroid/app/ActivityManager;)J
    .locals 4
    .parameter "pid"
    .parameter "am"

    .prologue
    const/4 v3, 0x0

    .line 2581
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 2582
    .local v1, pidArray:[I
    aput p1, v1, v3

    .line 2583
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 2584
    .local v0, memInfoArray:[Landroid/os/Debug$MemoryInfo;
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    return-wide v2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .parameter "packageURI"

    .prologue
    const/4 v5, 0x0

    .line 2191
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2192
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 2193
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2194
    .local v4, sourceFile:Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2195
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 2196
    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2198
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_0

    .line 2199
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    .line 2203
    :cond_0
    const/4 v2, 0x0

    .line 2204
    return-object v3
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1101
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1102
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, pkg:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1102
    .end local v0           #pkg:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    .line 3863
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3865
    .local v1, pkgName:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3866
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPidList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3650
    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3651
    .local v3, lProcDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 3652
    .local v1, lFiles:[Ljava/lang/String;
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPidList: process count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3654
    .local v2, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 3656
    const/4 v4, 0x1

    aget-object v5, v1, v0

    const-string v6, "[0-9]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 3657
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3654
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3661
    :cond_1
    return-object v2
.end method

.method private getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 3100
    const/4 v1, 0x0

    .line 3101
    .local v1, mpkgInfo:Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3102
    if-eqz p1, :cond_0

    .line 3104
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3111
    :cond_0
    :goto_0
    return-object v1

    .line 3106
    :catch_0
    move-exception v0

    .line 3107
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getProvidersFromPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4137
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4138
    .local v4, ret:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4139
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4140
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4143
    .local v1, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 4144
    .local v0, N:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 4145
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 4146
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4143
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 4149
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    return-object v4
.end method

.method private getSamsungWidgets()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4171
    .local v4, retList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4172
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4173
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4174
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4175
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4176
    .local v3, r:Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4178
    .end local v3           #r:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 3131
    if-nez p0, :cond_1

    .line 3135
    :cond_0
    :goto_0
    return-object v1

    .line 3131
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 3132
    :catch_0
    move-exception v0

    .line 3133
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWidgetProviderDisabledList()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4262
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 4263
    .local v6, ret:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "disabledWidgetComponents"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4265
    .local v5, list:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 4266
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4267
    .local v2, components:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 4268
    .local v1, component:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4269
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4267
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4273
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #component:Ljava/lang/String;
    .end local v2           #components:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-object v6
.end method

.method private isActiveAdmin(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3851
    if-nez p1, :cond_1

    .line 3859
    :cond_0
    :goto_0
    return v0

    .line 3855
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 3856
    goto :goto_0
.end method

.method private declared-synchronized isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "keyBlack"
    .parameter "keyWhite"
    .parameter "packageName"

    .prologue
    .line 3951
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 3952
    const/4 v0, 0x0

    .line 3978
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 3954
    :cond_1
    :try_start_1
    sget-object v9, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 3955
    .local v8, uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 3956
    .local v0, blocked:Z
    if-eqz v8, :cond_0

    .line 3959
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3960
    .local v7, uid:I
    sget-object v9, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 3961
    .local v3, packagesBlack:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 3962
    .local v4, packagesWhite:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3963
    .local v5, pkgB:Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/ApplicationPolicy;->ALL_PACKAGES:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3965
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3966
    .local v6, pkgW:Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/ApplicationPolicy;->ALL_PACKAGES:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_5

    .line 3967
    :cond_6
    const/4 v0, 0x0

    .line 3968
    goto :goto_1

    .line 3972
    .end local v6           #pkgW:Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    .line 3973
    goto/16 :goto_0

    .line 3951
    .end local v0           #blocked:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #packagesBlack:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #packagesWhite:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #pkgB:Ljava/lang/String;
    .end local v7           #uid:I
    .end local v8           #uids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private declared-synchronized loadApplicationBlacklistWhitelist()V
    .locals 17

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "ADMIN"

    const-string v14, "adminUid"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 333
    .local v11, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "packageName"

    aput-object v13, v2, v12

    const/4 v12, 0x1

    const-string v13, "controlState"

    aput-object v13, v2, v12

    .line 338
    .local v2, columns:[Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    .line 341
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 343
    .local v10, storedUid:I
    const/4 v8, 0x1

    .line 347
    .local v8, isAdminUsesAppPolicy:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "ADMIN"

    const-string v14, "adminName"

    invoke-virtual {v12, v10, v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 349
    .local v9, pkgName:Ljava/lang/String;
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 351
    .local v3, compName:Landroid/content/ComponentName;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    const/16 v13, 0x15

    invoke-virtual {v12, v3, v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 356
    .end local v3           #compName:Landroid/content/ComponentName;
    .end local v9           #pkgName:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_0

    .line 358
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 359
    .local v1, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v12, "PackageNameInstallationBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v12, "PackageNameInstallationWhitelist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v12, "PermissionInstallationBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v12, "SignatureInstallationBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v12, "UninstallationBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v12, "UninstallationWhitelist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v12, "PackageNameStopBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v12, "PackageNameStopWhitelist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v12, "PackageNameWidgetWhitelist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v12, "PackageNameWidgetBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v12, "PackageNameNotificationWhitelist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v12, "PackageNameNotificationBlacklist"

    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "APPLICATION"

    invoke-virtual {v12, v13, v10, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 377
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_c

    .line 378
    :cond_1
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 379
    const-string v12, "packageName"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 381
    .restart local v9       #pkgName:Ljava/lang/String;
    const-string v12, "controlState"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 384
    .local v4, controlState:I
    const/4 v12, 0x4

    and-int/lit8 v13, v4, 0x4

    if-ne v12, v13, :cond_2

    .line 385
    const-string v12, "PackageNameInstallationBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_2
    const/16 v12, 0x8

    and-int/lit8 v13, v4, 0x8

    if-ne v12, v13, :cond_3

    .line 388
    const-string v12, "PackageNameInstallationWhitelist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_3
    const/4 v12, 0x1

    and-int/lit8 v13, v4, 0x1

    if-ne v12, v13, :cond_4

    .line 391
    const-string v12, "UninstallationBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_4
    const/16 v12, 0x400

    and-int/lit16 v13, v4, 0x400

    if-ne v12, v13, :cond_5

    .line 394
    const-string v12, "UninstallationWhitelist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_5
    const/16 v12, 0x10

    and-int/lit8 v13, v4, 0x10

    if-ne v12, v13, :cond_6

    .line 399
    const-string v12, "PackageNameStopBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_6
    const/16 v12, 0x20

    and-int/lit8 v13, v4, 0x20

    if-ne v12, v13, :cond_7

    .line 402
    const-string v12, "PackageNameStopWhitelist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_7
    const/16 v12, 0x40

    and-int/lit8 v13, v4, 0x40

    if-ne v12, v13, :cond_8

    .line 405
    const-string v12, "PackageNameWidgetBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_8
    const/16 v12, 0x80

    and-int/lit16 v13, v4, 0x80

    if-ne v12, v13, :cond_9

    .line 409
    const-string v12, "PackageNameWidgetWhitelist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_9
    const/16 v12, 0x100

    and-int/lit16 v13, v4, 0x100

    if-ne v12, v13, :cond_a

    .line 413
    const-string v12, "PackageNameNotificationBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_a
    const/16 v12, 0x200

    and-int/lit16 v13, v4, 0x200

    if-ne v12, v13, :cond_1

    .line 417
    const-string v12, "PackageNameNotificationWhitelist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 326
    .end local v1           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2           #columns:[Ljava/lang/String;
    .end local v4           #controlState:I
    .end local v5           #cursor:Landroid/database/Cursor;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #isAdminUsesAppPolicy:Z
    .end local v9           #pkgName:Ljava/lang/String;
    .end local v10           #storedUid:I
    .end local v11           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 421
    .restart local v1       #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v5       #cursor:Landroid/database/Cursor;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #isAdminUsesAppPolicy:Z
    .restart local v10       #storedUid:I
    .restart local v11       #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "APPLICATION_PERMISSION"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "permission"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v10, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 429
    if-eqz v5, :cond_e

    .line 430
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 431
    const-string v12, "PermissionInstallationBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "permission"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 434
    :cond_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 438
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "APPLICATION_SIGNATURE"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "signature"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v10, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 442
    if-eqz v5, :cond_10

    .line 443
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 444
    const-string v12, "SignatureInstallationBlacklist"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "signature"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 447
    :cond_f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    :cond_10
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "APPLICATION_MISC"

    const-string v16, "appNotificationMode"

    move-object/from16 v0, v16

    invoke-virtual {v14, v10, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 460
    :goto_5
    :try_start_5
    sget-object v12, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 455
    :catch_0
    move-exception v7

    .line 456
    .local v7, ignore:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 464
    .end local v1           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5           #cursor:Landroid/database/Cursor;
    .end local v7           #ignore:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    .end local v8           #isAdminUsesAppPolicy:Z
    .end local v10           #storedUid:I
    :cond_11
    monitor-exit p0

    return-void

    .line 354
    .restart local v8       #isAdminUsesAppPolicy:Z
    .restart local v10       #storedUid:I
    :catch_1
    move-exception v12

    goto/16 :goto_1
.end method

.method private manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .parameter "pkgName"
    .parameter "homePkgName"
    .parameter "action"

    .prologue
    .line 4388
    const/16 v16, 0x0

    .line 4390
    .local v16, ret:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 4391
    .local v12, pMgr:Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4392
    .local v13, pickAppShortcut:Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4393
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 4394
    .local v15, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v15, :cond_1

    .line 4395
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 4396
    .local v9, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 4397
    const/16 v16, 0x1

    .line 4404
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v16, :cond_6

    .line 4405
    const/4 v2, 0x0

    .line 4407
    .local v2, app:Landroid/content/pm/ApplicationInfo;
    const/16 v18, 0x80

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4408
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    .line 4409
    .local v17, shortcutIntent:Landroid/content/Intent;
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4410
    .local v10, installAppShorcut:Landroid/content/Intent;
    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4411
    const-string v18, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 4413
    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4414
    .local v4, d:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 4415
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4416
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const-string v18, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4418
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const-string v18, "duplicate"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4419
    if-eqz p2, :cond_5

    .line 4420
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4421
    .local v7, homeIntent:Landroid/content/Intent;
    const-string v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 4423
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 4424
    .local v6, flag:Z
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 4425
    .local v14, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 4426
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4427
    const/4 v6, 0x1

    .line 4431
    .end local v14           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    if-nez v6, :cond_5

    .line 4432
    const/16 v18, 0x0

    .line 4440
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    .end local v6           #flag:Z
    .end local v7           #homeIntent:Landroid/content/Intent;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #installAppShorcut:Landroid/content/Intent;
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17           #shortcutIntent:Landroid/content/Intent;
    :goto_0
    return v18

    .line 4434
    .restart local v2       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #installAppShorcut:Landroid/content/Intent;
    .restart local v17       #shortcutIntent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    .end local v10           #installAppShorcut:Landroid/content/Intent;
    .end local v17           #shortcutIntent:Landroid/content/Intent;
    :cond_6
    :goto_1
    move/from16 v18, v16

    .line 4440
    goto :goto_0

    .line 4435
    .restart local v2       #app:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    .line 4436
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "ApplicationPolicy"

    const-string v19, "something wrong here , package name not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    const/16 v16, 0x0

    goto :goto_1
.end method

.method private parseTopCommand(Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 28
    .parameter "aOutput"
    .parameter "aAppCount"
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3350
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_1

    .line 3351
    :cond_0
    const-string v25, "ApplicationPolicy"

    const-string v26, "parseTopCommand: not a valid output "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    const/4 v13, 0x0

    .line 3438
    :goto_0
    return-object v13

    .line 3357
    :cond_1
    const-string v18, "\n"

    .line 3358
    .local v18, lNewLineDelim:Ljava/lang/String;
    new-instance v23, Ljava/util/StringTokenizer;

    const-string v25, "\n"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    .local v23, lSTokenizer:Ljava/util/StringTokenizer;
    const/4 v13, 0x0

    .line 3363
    .local v13, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v9, v0, :cond_2

    .line 3364
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 3363
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3368
    :cond_2
    if-lez p2, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 3369
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    .line 3372
    :cond_4
    const/4 v4, 0x0

    .line 3378
    .local v4, PID_INDEX:I
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    .line 3379
    const-string v25, "ApplicationPolicy"

    const-string v26, "HoneyComb : Set top parameters"

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    const/4 v3, 0x2

    .line 3381
    .local v3, CPU_USAGE_INDEX:I
    const/16 v6, 0xa

    .line 3382
    .local v6, TOTAL_TOKEN_COUNT_PER_LINE:I
    const/16 v5, 0x9

    .line 3389
    .local v5, PROCESS_NAME_INDEX:I
    :goto_2
    const/4 v11, 0x0

    .line 3390
    .local v11, lAppCount:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3392
    .end local v13           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .local v14, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const/16 v16, 0x0

    .line 3393
    .local v16, lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_6

    .line 3394
    :try_start_1
    const-string v25, "ApplicationPolicy"

    const-string v26, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "activity"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 3397
    .local v7, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v7}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v22

    .line 3399
    .local v22, lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3400
    .restart local v16       #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3401
    .local v21, lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 3432
    .end local v7           #activityManager:Landroid/app/ActivityManager;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v16           #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v21           #lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v22           #lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v8

    move-object v13, v14

    .line 3433
    .end local v3           #CPU_USAGE_INDEX:I
    .end local v4           #PID_INDEX:I
    .end local v5           #PROCESS_NAME_INDEX:I
    .end local v6           #TOTAL_TOKEN_COUNT_PER_LINE:I
    .end local v11           #lAppCount:I
    .end local v14           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .local v8, e:Ljava/lang/Exception;
    .restart local v13       #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    :goto_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 3436
    .end local v8           #e:Ljava/lang/Exception;
    :goto_5
    const-string v25, "ApplicationPolicy"

    const-string v26, "parseTopCommand : cpu info"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3384
    .restart local v4       #PID_INDEX:I
    :cond_5
    const/4 v3, 0x1

    .line 3385
    .restart local v3       #CPU_USAGE_INDEX:I
    const/16 v6, 0x9

    .line 3386
    .restart local v6       #TOTAL_TOKEN_COUNT_PER_LINE:I
    const/16 v5, 0x8

    .restart local v5       #PROCESS_NAME_INDEX:I
    goto :goto_2

    .line 3405
    .end local v13           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .restart local v11       #lAppCount:I
    .restart local v14       #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .restart local v16       #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_6
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v25

    if-eqz v25, :cond_b

    move/from16 v0, p2

    if-ge v11, v0, :cond_b

    .line 3406
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 3407
    .local v17, lLine:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, "\\s+"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 3413
    .local v24, lVaues:[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    .line 3414
    const/16 v25, 0x0

    aget-object v19, v24, v25

    .line 3415
    .local v19, lPid:Ljava/lang/String;
    aget-object v20, v24, v5

    .line 3416
    .local v20, lProcessName:Ljava/lang/String;
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    :cond_7
    if-nez v16, :cond_9

    .line 3418
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 3419
    aget-object v25, v24, v3

    const-string v26, "%"

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    .line 3420
    .local v15, lCpuUsage:Ljava/lang/Float;
    new-instance v12, Landroid/app/enterprise/AppInfo;

    invoke-direct {v12}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3421
    .local v12, lAppInfo:Landroid/app/enterprise/AppInfo;
    move-object/from16 v0, v20

    iput-object v0, v12, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3422
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v12, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3423
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3425
    .end local v12           #lAppInfo:Landroid/app/enterprise/AppInfo;
    .end local v15           #lCpuUsage:Ljava/lang/Float;
    :cond_9
    const-string v25, "ApplicationPolicy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "parseTopCommand : package not included pid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "name :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3429
    .end local v19           #lPid:Ljava/lang/String;
    .end local v20           #lProcessName:Ljava/lang/String;
    :cond_a
    const-string v25, "ApplicationPolicy"

    const-string v26, "some problem with top command output"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .end local v17           #lLine:Ljava/lang/String;
    .end local v24           #lVaues:[Ljava/lang/String;
    :cond_b
    move-object v13, v14

    .line 3434
    .end local v14           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .restart local v13       #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    goto/16 :goto_5

    .line 3432
    .end local v3           #CPU_USAGE_INDEX:I
    .end local v4           #PID_INDEX:I
    .end local v5           #PROCESS_NAME_INDEX:I
    .end local v6           #TOTAL_TOKEN_COUNT_PER_LINE:I
    .end local v11           #lAppCount:I
    .end local v16           #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    goto/16 :goto_4
.end method

.method private putWidgetProviderDisabledList(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4252
    .local p1, componentNames:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4253
    .local v2, list:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 4254
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4256
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "disabledWidgetComponents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4258
    return-void
.end method

.method private readAppMemoryInfo(Z)Ljava/util/List;
    .locals 25
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3183
    const-string v22, "ApplicationPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "readAppMemoryInfo start bShowAllProcess:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3187
    .local v21, lStats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 3189
    .local v4, activityManager:Landroid/app/ActivityManager;
    const/4 v14, 0x0

    .line 3191
    .local v14, lPidArray:[I
    if-nez p1, :cond_2

    .line 3192
    const-string v22, "ApplicationPolicy"

    const-string v23, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v20

    .line 3195
    .local v20, lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v14, v0, [I

    .line 3196
    const/4 v8, 0x0

    .line 3197
    .local v8, k:I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    move v9, v8

    .end local v8           #k:I
    .local v9, k:I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3198
    .local v19, lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    add-int/lit8 v8, v9, 0x1

    .end local v9           #k:I
    .restart local v8       #k:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    aput v22, v14, v9

    move v9, v8

    .end local v8           #k:I
    .restart local v9       #k:I
    goto :goto_0

    .end local v19           #lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    move v8, v9

    .line 3209
    .end local v9           #k:I
    .end local v20           #lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v8       #k:I
    :goto_1
    invoke-virtual {v4, v14}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    .line 3210
    .local v12, lMemInfoArray:[Landroid/os/Debug$MemoryInfo;
    const-string v22, "ApplicationPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "memory length : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v12

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "pids length"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v14

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_3

    .line 3213
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/proc/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v14, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/cmdline"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3214
    .local v16, lPkgName:Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 3215
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3216
    .local v10, lCmdLine:Ljava/lang/String;
    aget-object v11, v12, v6

    .line 3217
    .local v11, lMemInfo:Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 3218
    .local v17, lRamSize:J
    new-instance v22, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3212
    .end local v10           #lCmdLine:Ljava/lang/String;
    .end local v11           #lMemInfo:Landroid/os/Debug$MemoryInfo;
    .end local v17           #lRamSize:J
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3201
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #k:I
    .end local v12           #lMemInfoArray:[Landroid/os/Debug$MemoryInfo;
    .end local v16           #lPkgName:Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getPidList()Ljava/util/ArrayList;

    move-result-object v15

    .line 3202
    .local v15, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v14, v0, [I

    .line 3203
    const/4 v8, 0x0

    .line 3204
    .restart local v8       #k:I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    move v9, v8

    .end local v8           #k:I
    .restart local v9       #k:I
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3205
    .local v13, lPid:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #k:I
    .restart local v8       #k:I
    aput v13, v14, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v8

    .end local v8           #k:I
    .restart local v9       #k:I
    goto :goto_3

    .line 3221
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #k:I
    .end local v13           #lPid:I
    .end local v14           #lPidArray:[I
    .end local v15           #lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v5

    .line 3222
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3225
    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    const-string v22, "ApplicationPolicy"

    const-string v23, "readAppMemoryInfo end"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    return-object v21

    .restart local v4       #activityManager:Landroid/app/ActivityManager;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #k:I
    .restart local v14       #lPidArray:[I
    .restart local v15       #lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    move v8, v9

    .end local v9           #k:I
    .restart local v8       #k:I
    goto/16 :goto_1
.end method

.method private readAppSizeInfo()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3271
    const-string v11, "ApplicationPolicy"

    const-string v12, "readAppSizeInfo start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    iget-object v11, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 3274
    .local v3, lPkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3275
    .local v6, lStats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3277
    .local v9, token:J
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 3278
    .local v2, lPkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3279
    .local v4, lPkgName:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3280
    new-instance v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 3281
    .local v5, lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    iget-object v11, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 3282
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3283
    :goto_1
    :try_start_1
    iget-boolean v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_1

    .line 3285
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3286
    :catch_0
    move-exception v11

    goto :goto_1

    .line 3289
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3290
    :try_start_4
    iget-boolean v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v11, :cond_0

    .line 3291
    iget-object v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v11, :cond_0

    .line 3292
    iget-object v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v13, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v11, v13

    iget-object v13, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v7, v11, v13

    .line 3296
    .local v7, lTotalSize:J
    new-instance v11, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-direct {v11, p0, v4, v7, v8}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3301
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .end local v7           #lTotalSize:J
    :catch_1
    move-exception v0

    .line 3302
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3304
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3307
    const-string v11, "ApplicationPolicy"

    const-string v12, "readAppSizeInfo end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    return-object v6

    .line 3289
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #lPkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #lPkgName:Ljava/lang/String;
    .restart local v5       #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    :catchall_0
    move-exception v11

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 3304
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    :catchall_1
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method private readCpuTime()J
    .locals 6

    .prologue
    .line 3573
    const-string v2, "ApplicationPolicy"

    const-string v3, "readCpuTime start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    const-string v2, "proc/stat"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3575
    .local v0, lCpuStat:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3576
    const-wide/16 v2, 0x0

    .line 3580
    :goto_0
    return-wide v2

    .line 3578
    :cond_0
    const-string v2, "[ ]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3579
    .local v1, segs:[Ljava/lang/String;
    const-string v2, "ApplicationPolicy"

    const-string v3, "readCpuTime end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x4

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x5

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x6

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x7

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "aFileName"

    .prologue
    const/4 v3, 0x0

    .line 3595
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3602
    .local v2, lFstream:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x1f4

    invoke-direct {v1, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 3604
    .local v1, lBufReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 3611
    if-eqz v2, :cond_0

    .line 3612
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 3613
    const/4 v2, 0x0

    .line 3615
    :cond_0
    if-eqz v1, :cond_1

    .line 3616
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 3617
    :goto_0
    const/4 v1, 0x0

    .line 3608
    .end local v1           #lBufReader:Ljava/io/BufferedReader;
    .end local v2           #lFstream:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-object v3

    .line 3596
    :catch_0
    move-exception v0

    .line 3597
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3598
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File access error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3605
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #lBufReader:Ljava/io/BufferedReader;
    .restart local v2       #lFstream:Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 3606
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3607
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read error on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3611
    if-eqz v2, :cond_2

    .line 3612
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 3613
    const/4 v2, 0x0

    .line 3615
    :cond_2
    if-eqz v1, :cond_1

    .line 3616
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 3619
    :catch_2
    move-exception v0

    .line 3620
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3610
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 3611
    if-eqz v2, :cond_3

    .line 3612
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 3613
    const/4 v2, 0x0

    .line 3615
    :cond_3
    if-eqz v1, :cond_4

    .line 3616
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3617
    const/4 v1, 0x0

    .line 3610
    :cond_4
    :goto_3
    throw v3

    .line 3619
    :catch_3
    move-exception v0

    .line 3620
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3619
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method private readProcInfo()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3538
    const-string v10, "ApplicationPolicy"

    const-string v11, "readProcInfo start"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3541
    .local v9, lStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getPidList()Ljava/util/ArrayList;

    move-result-object v3

    .line 3542
    .local v3, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_1

    .line 3543
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3544
    .local v2, lPid:Ljava/lang/Integer;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/stat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3545
    .local v8, lStat:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 3549
    const-string v10, "[ ]+"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3550
    .local v7, lSegs:[Ljava/lang/String;
    const/16 v10, 0xd

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/16 v12, 0xe

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long v5, v10, v12

    .line 3553
    .local v5, lRunTime:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3554
    .local v4, lPkgName:Ljava/lang/String;
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "package name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    if-eqz v4, :cond_0

    .line 3556
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3557
    .local v1, lCmdLine:Ljava/lang/String;
    new-instance v10, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-direct {v10, p0, v1, v5, v6}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3561
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lCmdLine:Ljava/lang/String;
    .end local v2           #lPid:Ljava/lang/Integer;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lRunTime:J
    .end local v7           #lSegs:[Ljava/lang/String;
    .end local v8           #lStat:Ljava/lang/String;
    :cond_1
    const-string v10, "ApplicationPolicy"

    const-string v11, "cannot open file "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    :cond_2
    const-string v10, "ApplicationPolicy"

    const-string v11, "readProcInfo end"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    return-object v9
.end method

.method private declared-synchronized refreshWidgetStatus()V
    .locals 20

    .prologue
    .line 4187
    monitor-enter p0

    :try_start_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4190
    .local v16, widgetProviders:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4192
    .local v12, providerInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v17, "appwidget"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v4

    .line 4193
    .local v4, aws:Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v4, :cond_1

    .line 4194
    invoke-interface {v4}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 4201
    .end local v4           #aws:Lcom/android/internal/appwidget/IAppWidgetService;
    :goto_0
    if-nez v12, :cond_2

    .line 4202
    :try_start_2
    const-string v17, "ApplicationPolicy"

    const-string v18, "providerInfoList == null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4248
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 4196
    .restart local v4       #aws:Lcom/android/internal/appwidget/IAppWidgetService;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 4198
    .end local v4           #aws:Lcom/android/internal/appwidget/IAppWidgetService;
    :catch_0
    move-exception v7

    .line 4199
    .local v7, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v17, "ApplicationPolicy"

    const-string v18, "error in getInstalledProviders"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4187
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v12           #providerInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v16           #widgetProviders:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 4206
    .restart local v12       #providerInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v16       #widgetProviders:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2
    :try_start_4
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 4207
    .local v3, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4210
    .end local v3           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getSamsungWidgets()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4213
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getWidgetProviderDisabledList()Ljava/util/Set;

    move-result-object v6

    .line 4214
    .local v6, disabledList:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 4215
    .local v13, toRemove:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4216
    .local v5, cn:Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 4217
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4218
    .local v14, token:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4220
    invoke-interface {v13, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4221
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 4224
    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v14           #token:J
    :cond_5
    invoke-interface {v6, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4226
    const/4 v8, 0x0

    .line 4228
    .local v8, hasDisabled:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 4229
    .local v11, p:Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 4230
    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4231
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4232
    .restart local v14       #token:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4234
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4235
    if-nez v8, :cond_6

    .line 4236
    const/4 v8, 0x1

    goto :goto_4

    .line 4241
    .end local v11           #p:Landroid/content/ComponentName;
    .end local v14           #token:J
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;)V

    .line 4244
    if-eqz v8, :cond_0

    .line 4245
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4246
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private declared-synchronized refreshWidgetStatus(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4154
    .local p1, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4156
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getWidgetProviderDisabledList()Ljava/util/Set;

    move-result-object v0

    .line 4157
    .local v0, disabledList:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4158
    .local v2, p:Landroid/content/ComponentName;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4160
    .local v3, token:J
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4162
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4154
    .end local v0           #disabledList:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Landroid/content/ComponentName;
    .end local v3           #token:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 4164
    .restart local v0       #disabledList:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4166
    .end local v0           #disabledList:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private registerPackageChangeReceiver()V
    .locals 4

    .prologue
    .line 1012
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1013
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1016
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1017
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1019
    new-instance v2, Lcom/android/server/enterprise/ApplicationPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/ApplicationPolicy$1;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    sput-object v2, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1063
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1064
    const-string v2, "ApplicationPolicy"

    const-string v3, "registerPackageChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerWidgetChangedListener()V
    .locals 5

    .prologue
    .line 4107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4108
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4109
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4110
    const-string v4, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4111
    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4113
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 4114
    .local v1, filter2:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4116
    new-instance v2, Lcom/android/server/enterprise/ApplicationPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/ApplicationPolicy$2;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 4125
    .local v2, receiver:Landroid/content/BroadcastReceiver;
    new-instance v3, Lcom/android/server/enterprise/ApplicationPolicy$3;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/ApplicationPolicy$3;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 4131
    .local v3, receiver2:Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4132
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4133
    return-void
.end method

.method private declared-synchronized removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z
    .locals 6
    .parameter "key"
    .parameter "bitMask"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3897
    .local p3, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3898
    .local v0, callingUid:I
    const/4 v4, 0x1

    .line 3900
    .local v4, result:Z
    if-eqz p3, :cond_1

    .line 3901
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3902
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3903
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3904
    .local v3, pkg:Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->ALL_PACKAGES:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3905
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3897
    .end local v0           #callingUid:I
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 3910
    .restart local v0       #callingUid:I
    .restart local v4       #result:Z
    :cond_1
    if-eqz p3, :cond_2

    .line 3911
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3912
    .restart local v3       #pkg:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v3, v0, p2, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    and-int/2addr v4, v5

    goto :goto_1

    .line 3916
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return v4
.end method

.method private declared-synchronized setApplicationPermissionControlState(Ljava/lang/String;IZ)Z
    .locals 4
    .parameter "permission"
    .parameter "callingUid"
    .parameter "add"

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->createAdminMap(I)V

    .line 620
    if-eqz p3, :cond_0

    .line 621
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "PermissionInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 622
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "permission"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSION"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 629
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return v1

    .line 627
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "PermissionInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 629
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSION"

    const-string v3, "permission"

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    .locals 7
    .parameter "pkgName"
    .parameter "callingUid"
    .parameter "controlStateMask"
    .parameter "enableMask"

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 500
    .local v6, controlState:I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    .line 501
    const/4 v6, 0x0

    .line 507
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->createAdminMap(I)V

    .line 510
    sparse-switch p3, :sswitch_data_0

    .line 588
    :goto_0
    if-eqz p4, :cond_b

    .line 589
    or-int/2addr v6, p3

    .line 601
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 602
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "controlState"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 513
    .end local v5           #cv:Landroid/content/ContentValues;
    :sswitch_0
    if-eqz p4, :cond_1

    .line 514
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 495
    .end local v6           #controlState:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 517
    .restart local v6       #controlState:I
    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :sswitch_1
    if-eqz p4, :cond_2

    .line 523
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    :cond_2
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 531
    :sswitch_2
    if-eqz p4, :cond_3

    .line 532
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 535
    :cond_3
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 540
    :sswitch_3
    if-eqz p4, :cond_4

    .line 541
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 544
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UninstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 549
    :sswitch_4
    if-eqz p4, :cond_5

    .line 550
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 552
    :cond_5
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 555
    :sswitch_5
    if-eqz p4, :cond_6

    .line 556
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 558
    :cond_6
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameStopWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 561
    :sswitch_6
    if-eqz p4, :cond_7

    .line 562
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 564
    :cond_7
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 567
    :sswitch_7
    if-eqz p4, :cond_8

    .line 568
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 570
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 573
    :sswitch_8
    if-eqz p4, :cond_9

    .line 574
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 576
    :cond_9
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 580
    :sswitch_9
    if-eqz p4, :cond_a

    .line 581
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 583
    :cond_a
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 591
    :cond_b
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v6, v0

    goto/16 :goto_1

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_3
    .end sparse-switch
.end method

.method private declared-synchronized setApplicationSignatureControlState(Ljava/lang/String;IZ)Z
    .locals 4
    .parameter "signature"
    .parameter "callingUid"
    .parameter "add"

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->createAdminMap(I)V

    .line 645
    if-eqz p3, :cond_0

    .line 646
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 647
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 648
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "signature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_SIGNATURE"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 654
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return v1

    .line 652
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 654
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_SIGNATURE"

    const-string v3, "signature"

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 643
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setInstallSoureMDM(ILjava/lang/String;Z)V
    .locals 7
    .parameter "callingUid"
    .parameter "pkgName"
    .parameter "stateValue"

    .prologue
    const/4 v6, 0x1

    .line 1616
    if-ne p3, v6, :cond_0

    .line 1617
    .local v6, state:I
    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1618
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "install_sourceMDM"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1619
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1623
    return-void

    .line 1616
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v6           #state:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private setManagedApp(ILjava/lang/String;Z)V
    .locals 7
    .parameter "callingUid"
    .parameter "pkgName"
    .parameter "stateValue"

    .prologue
    const/4 v6, 0x1

    .line 1606
    if-ne p3, v6, :cond_0

    .line 1607
    .local v6, state:I
    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1608
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "managedApp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1609
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1613
    return-void

    .line 1606
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v6           #state:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private updateCount(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "callingUid"
    .parameter "pkgName"
    .parameter "contentName"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1074
    .local v6, count:I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1075
    .local v5, cv:Landroid/content/ContentValues;
    if-gtz v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1078
    return-void

    .line 1075
    :cond_0
    add-int/lit8 v0, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAppNotificationBlackList(Ljava/util/List;)Z
    .locals 2
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
    .line 4284
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppNotificationWhiteList(Ljava/util/List;)Z
    .locals 2
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
    .line 4307
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2920
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppPackageNameToBlackList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2922
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2923
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2924
    const/4 v1, 0x0

    .line 2926
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2971
    const-string v1, "ApplicationPolicy"

    const-string v2, "addAppPackageNameToWhiteList"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2973
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2974
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2975
    const/4 v1, 0x0

    .line 2977
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .locals 2
    .parameter "appPermission"

    .prologue
    .line 2739
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2740
    .local v0, callingUid:I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .locals 2
    .parameter "appSignature"

    .prologue
    .line 2816
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2817
    .local v0, callingUid:I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public addHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .parameter "homePkgName"

    .prologue
    .line 4378
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 4379
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopBlackList(Ljava/util/List;)Z
    .locals 2
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
    .line 3985
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopWhiteList(Ljava/util/List;)Z
    .locals 2
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
    .line 4005
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToWidgetBlackList(Ljava/util/List;)Z
    .locals 3
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
    .line 4074
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4076
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4077
    return v0
.end method

.method public addPackagesToWidgetWhiteList(Ljava/util/List;)Z
    .locals 3
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
    .line 4047
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4049
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4050
    return v0
.end method

.method public backupApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 21
    .parameter "pkgName"
    .parameter "data"

    .prologue
    .line 4527
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v14

    .line 4528
    .local v14, uid:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4529
    .local v15, validPkgName:Ljava/lang/String;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v17

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    if-nez v17, :cond_1

    .line 4531
    :cond_0
    const/16 v17, -0x3

    .line 4600
    :goto_0
    return v17

    .line 4532
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 4534
    :cond_2
    const/16 v17, -0x4

    goto :goto_0

    .line 4535
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/ApplicationPolicy;->getBackupAgentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_4

    .line 4536
    const/16 v17, -0x2

    goto :goto_0

    .line 4539
    :cond_4
    :try_start_0
    new-instance v13, Ljava/lang/SecurityManager;

    invoke-direct {v13}, Ljava/lang/SecurityManager;-><init>()V

    .line 4540
    .local v13, sm:Ljava/lang/SecurityManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 4547
    .local v3, adminPkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4549
    const/16 v17, 0x1

    :try_start_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 4550
    const/16 v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupReturnCode:I

    .line 4551
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    .line 4552
    new-instance v7, Landroid/content/Intent;

    const-string v17, "edm.intent.action.do.backup"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4553
    .local v7, i:Landroid/content/Intent;
    const-string v17, "pkgName"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4554
    const-string v17, "admin"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    const-wide/16 v19, 0x7530

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4565
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupReturnCode:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupData:Ljava/util/Map;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 4567
    new-instance v12, Landroid/app/backup/BackupDataOutput;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 4568
    .local v12, output:Landroid/app/backup/BackupDataOutput;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupData:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 4570
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :goto_1
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 4571
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 4572
    .local v11, mEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 4573
    .local v10, key:Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 4574
    .local v16, value:[B
    move-object/from16 v0, v16

    array-length v4, v0

    .line 4575
    .local v4, dataSize:I
    invoke-virtual {v12, v10, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 4576
    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 4578
    .end local v4           #dataSize:I
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #mEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v16           #value:[B
    :catch_0
    move-exception v5

    .line 4579
    .local v5, e:Ljava/lang/Exception;
    :try_start_4
    const-string v17, "ApplicationPolicy"

    const-string v19, "backup data failed"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    new-instance v8, Landroid/content/Intent;

    const-string v17, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4582
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4583
    const/16 v17, -0x3

    .line 4585
    const/16 v19, 0x0

    :try_start_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 4583
    monitor-exit v18

    goto/16 :goto_0

    .line 4601
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #i:Landroid/content/Intent;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .end local v12           #output:Landroid/app/backup/BackupDataOutput;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v17

    .line 4541
    .end local v3           #adminPkgName:Ljava/lang/String;
    .end local v13           #sm:Ljava/lang/SecurityManager;
    :catch_1
    move-exception v6

    .line 4542
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v17, "ApplicationPolicy"

    const-string v18, "can\'t write to file descriptor"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    const/16 v17, -0x3

    goto/16 :goto_0

    .line 4557
    .end local v6           #ex:Ljava/lang/SecurityException;
    .restart local v3       #adminPkgName:Ljava/lang/String;
    .restart local v13       #sm:Ljava/lang/SecurityManager;
    :catch_2
    move-exception v5

    .line 4558
    .local v5, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v17, "ApplicationPolicy"

    const-string v19, "backupApplicationData interrupted"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 4561
    new-instance v8, Landroid/content/Intent;

    const-string v17, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4562
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4563
    const/16 v17, -0x3

    monitor-exit v18

    goto/16 :goto_0

    .line 4585
    .end local v5           #e:Ljava/lang/InterruptedException;
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #i:Landroid/content/Intent;
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .restart local v12       #output:Landroid/app/backup/BackupDataOutput;
    :catchall_1
    move-exception v17

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    throw v17

    .line 4587
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .end local v12           #output:Landroid/app/backup/BackupDataOutput;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupData:Ljava/util/Map;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 4588
    const-string v17, "ApplicationPolicy"

    const-string v19, "Backup data null "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 4591
    new-instance v8, Landroid/content/Intent;

    const-string v17, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4592
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4593
    const/16 v17, -0x3

    monitor-exit v18

    goto/16 :goto_0

    .line 4595
    .end local v8           #intent:Landroid/content/Intent;
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    .line 4598
    :goto_2
    new-instance v8, Landroid/content/Intent;

    const-string v17, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4599
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4600
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupReturnCode:I

    move/from16 v17, v0

    monitor-exit v18

    goto/16 :goto_0

    .line 4585
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .restart local v12       #output:Landroid/app/backup/BackupDataOutput;
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .locals 9
    .parameter "aPackageName"
    .parameter "aImageData"

    .prologue
    const/4 v5, 0x0

    .line 2666
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2667
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeApplicationIcon:packageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "called from :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2670
    .local v3, token:J
    const/4 v1, 0x0

    .line 2672
    .local v1, success:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gez v6, :cond_1

    .line 2673
    :cond_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "changeApplicationIcon: packageName can\'t be null :"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 2700
    .end local v1           #success:Z
    .local v2, success:I
    :goto_0
    return v2

    .line 2677
    .end local v2           #success:I
    .restart local v1       #success:Z
    :cond_1
    if-nez p2, :cond_6

    .line 2678
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/ApplicationIconDb;->deleteApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2681
    :goto_1
    if-eqz v1, :cond_5

    .line 2683
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    if-nez v6, :cond_2

    .line 2684
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 2686
    :cond_2
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    if-nez p2, :cond_7

    .line 2687
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2693
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2694
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    if-eqz p1, :cond_4

    const-string v7, "package"

    invoke-static {v7, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :cond_4
    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2696
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2699
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 2700
    .restart local v2       #success:I
    goto :goto_0

    .line 2680
    .end local v2           #success:I
    :cond_6
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, p2}, Lcom/android/server/enterprise/ApplicationIconDb;->updateApplicationIcon(Landroid/content/Context;Ljava/lang/String;[B)Z

    move-result v1

    goto :goto_1

    .line 2688
    :cond_7
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p2, :cond_3

    .line 2690
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public deleteHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .parameter "homePkgName"

    .prologue
    .line 4383
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 4384
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2071
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2072
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2074
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2103
    :goto_0
    return v1

    .line 2077
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2078
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2080
    :cond_1
    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2082
    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2084
    invoke-direct {p0, p1, v0, v3, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2086
    const/16 v2, 0x400

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2089
    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2091
    const/16 v2, 0x20

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2093
    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2095
    const/16 v2, 0x80

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2097
    const/16 v2, 0x100

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2099
    const/16 v2, 0x200

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 2101
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 2103
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION"

    const-string v3, "packageName"

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public deletePackageFromAppUsageDb(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 3529
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/ApplicationUsage;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 2

    .prologue
    .line 3525
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationUsage;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v0

    return-object v0
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .locals 29
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4664
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 4665
    const/16 v22, 0x0

    .line 4668
    .local v22, ret:Ljava/util/Map;,"Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "appwidget"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v11

    .line 4670
    .local v11, aws:Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v11, :cond_0

    .line 4671
    const-wide/16 v23, 0x0

    .line 4672
    .local v23, token:J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 4673
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllWidgets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v22

    .line 4674
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4680
    .end local v11           #aws:Lcom/android/internal/appwidget/IAppWidgetService;
    .end local v23           #token:J
    :cond_0
    :goto_0
    if-nez v22, :cond_1

    .line 4681
    new-instance v22, Ljava/util/HashMap;

    .end local v22           #ret:Ljava/util/Map;,"Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 4684
    .restart local v22       #ret:Ljava/util/Map;,"Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p1, :cond_5

    const-string v7, "com.sec.android.app.launcher"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4686
    :cond_2
    const-string v7, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4688
    .local v4, launcher_uri:Landroid/net/Uri;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "appWidgetId"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "intent"

    aput-object v8, v5, v7

    .line 4691
    .local v5, projection:[Ljava/lang/String;
    const-string v6, "itemType = 900"

    .line 4692
    .local v6, selectionClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4693
    .local v3, contentResolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 4695
    .local v12, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 4696
    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4698
    new-instance v20, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v20 .. v20}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 4699
    .local v20, providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v7, 0x0

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 4700
    .local v26, widgetId:I
    const/4 v7, 0x1

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v25

    .line 4701
    .local v25, uri:Ljava/lang/String;
    const/16 v19, 0x0

    .line 4703
    .local v19, intent:Landroid/content/Intent;
    const/4 v7, 0x0

    :try_start_2
    move-object/from16 v0, v25

    invoke-static {v0, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v19

    .line 4708
    const/4 v13, 0x0

    .line 4710
    .local v13, ctx:Landroid/content/Context;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v13

    .line 4715
    :goto_2
    if-eqz v13, :cond_3

    .line 4718
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 4721
    const/16 v21, 0x0

    .line 4722
    .local v21, resName:I
    :try_start_5
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "plug_in_name"

    const-string v27, "string"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v7, v8, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 4724
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v27, 0x80

    move/from16 v0, v27

    invoke-virtual {v7, v8, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 4726
    .local v9, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v21, :cond_6

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 4734
    const/16 v17, 0x0

    .line 4735
    .local v17, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 4736
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    .line 4737
    .local v10, auxProvider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v10, :cond_4

    iget-object v7, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v7, :cond_4

    iget-object v7, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4739
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v17, Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v17       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_4

    .line 4676
    .end local v3           #contentResolver:Landroid/content/ContentResolver;
    .end local v4           #launcher_uri:Landroid/net/Uri;
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selectionClause:Ljava/lang/String;
    .end local v9           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v10           #auxProvider:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #ctx:Landroid/content/Context;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v21           #resName:I
    .end local v25           #uri:Ljava/lang/String;
    .end local v26           #widgetId:I
    :catch_0
    move-exception v14

    .line 4677
    .local v14, e:Landroid/os/RemoteException;
    const-string v7, "ApplicationPolicy"

    const-string v8, "error in getAllWidgets"

    invoke-static {v7, v8, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4704
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v3       #contentResolver:Landroid/content/ContentResolver;
    .restart local v4       #launcher_uri:Landroid/net/Uri;
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v6       #selectionClause:Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v19       #intent:Landroid/content/Intent;
    .restart local v20       #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v25       #uri:Ljava/lang/String;
    .restart local v26       #widgetId:I
    :catch_1
    move-exception v14

    .line 4705
    .local v14, e:Ljava/net/URISyntaxException;
    goto/16 :goto_1

    .line 4712
    .end local v14           #e:Ljava/net/URISyntaxException;
    .restart local v13       #ctx:Landroid/content/Context;
    :catch_2
    move-exception v15

    .line 4713
    .local v15, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 4752
    .end local v13           #ctx:Landroid/content/Context;
    .end local v15           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v25           #uri:Ljava/lang/String;
    .end local v26           #widgetId:I
    :catch_3
    move-exception v14

    .line 4753
    .local v14, e:Ljava/lang/Exception;
    :try_start_8
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getPreferredApn Ex: "

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4756
    if-eqz v12, :cond_5

    .line 4757
    .end local v14           #e:Ljava/lang/Exception;
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 4762
    .end local v3           #contentResolver:Landroid/content/ContentResolver;
    .end local v4           #launcher_uri:Landroid/net/Uri;
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selectionClause:Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    :cond_5
    return-object v22

    .line 4726
    .restart local v3       #contentResolver:Landroid/content/ContentResolver;
    .restart local v4       #launcher_uri:Landroid/net/Uri;
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v6       #selectionClause:Ljava/lang/String;
    .restart local v9       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v13       #ctx:Landroid/content/Context;
    .restart local v19       #intent:Landroid/content/Intent;
    .restart local v20       #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v21       #resName:I
    .restart local v25       #uri:Ljava/lang/String;
    .restart local v26       #widgetId:I
    :cond_6
    :try_start_9
    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v7

    goto :goto_3

    .line 4728
    .end local v9           #aInfo:Landroid/content/pm/ActivityInfo;
    :catch_4
    move-exception v18

    .line 4729
    .local v18, ignore:Landroid/content/res/Resources$NotFoundException;
    goto/16 :goto_1

    .line 4730
    .end local v18           #ignore:Landroid/content/res/Resources$NotFoundException;
    :catch_5
    move-exception v18

    .line 4731
    .local v18, ignore:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1

    .line 4743
    .end local v18           #ignore:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v17       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    if-nez v17, :cond_9

    .line 4744
    :try_start_a
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 4745
    .restart local v17       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4746
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    .line 4756
    .end local v9           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v13           #ctx:Landroid/content/Context;
    .end local v17           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v21           #resName:I
    .end local v25           #uri:Ljava/lang/String;
    .end local v26           #widgetId:I
    :catchall_0
    move-exception v7

    if-eqz v12, :cond_8

    .line 4757
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 4756
    :cond_8
    throw v7

    .line 4748
    .restart local v9       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v13       #ctx:Landroid/content/Context;
    .restart local v17       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19       #intent:Landroid/content/Intent;
    .restart local v20       #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v21       #resName:I
    .restart local v25       #uri:Ljava/lang/String;
    .restart local v26       #widgetId:I
    :cond_9
    :try_start_b
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    .line 4756
    .end local v9           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v13           #ctx:Landroid/content/Context;
    .end local v17           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v21           #resName:I
    .end local v25           #uri:Ljava/lang/String;
    .end local v26           #widgetId:I
    :cond_a
    if-eqz v12, :cond_5

    goto :goto_5
.end method

.method public getAppInstallToSdCard()Z
    .locals 7

    .prologue
    .line 3065
    const/4 v1, 0x0

    .line 3066
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "APPLICATION_GENERAL"

    const-string v6, "installToSdCard"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3068
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

    .line 3069
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 3070
    move v1, v2

    .line 3074
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public declared-synchronized getAppInstallationMode()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1720
    monitor-enter p0

    :try_start_0
    const-string v3, "getAppInstallationMode :  mode start: "

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1721
    const/4 v0, 0x1

    .line 1722
    .local v0, install:Z
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 1741
    :goto_0
    monitor-exit p0

    return v3

    .line 1725
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1727
    .local v2, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1728
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1731
    .local v1, uid:Ljava/lang/Integer;
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PackageNameInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, ".*"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PackageNameInstallationWhitelist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, ".*"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1734
    const/4 v0, 0x0

    .line 1739
    .end local v1           #uid:Ljava/lang/Integer;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppInstallationMode :  mode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1741
    if-eqz v0, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1720
    .end local v0           #install:Z
    .end local v2           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getAppNotificationBlackList(Z)Ljava/util/List;
    .locals 1
    .parameter "allAdmins"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4300
    const-string v0, "PackageNameNotificationBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppNotificationWhiteList(Z)Ljava/util/List;
    .locals 1
    .parameter "allAdmins"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4323
    const-string v0, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAppPackageNamesAllBlackLists()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2943
    monitor-enter p0

    :try_start_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppPackageNamesAllBlackLists "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2945
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 2946
    :cond_0
    const/4 v1, 0x0

    .line 2967
    :cond_1
    monitor-exit p0

    return-object v1

    .line 2948
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2951
    .local v4, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2953
    .local v1, blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2954
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2955
    .local v3, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "PackageNameInstallationBlacklist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2957
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2958
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2959
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "PackageNameInstallationBlacklist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2961
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2962
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2943
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #uid:Ljava/lang/Integer;
    .end local v4           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2964
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v2       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #uid:Ljava/lang/Integer;
    .restart local v4       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2994
    monitor-enter p0

    :try_start_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppPackageNamesAllWhiteLists "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2996
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 2997
    :cond_0
    const/4 v4, 0x0

    .line 3018
    :cond_1
    monitor-exit p0

    return-object v4

    .line 2999
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3002
    .local v3, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3004
    .local v4, whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3005
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3006
    .local v2, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "PackageNameInstallationWhitelist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3008
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 3009
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3010
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "PackageNameInstallationWhitelist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 3012
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3013
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2994
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #uid:Ljava/lang/Integer;
    .end local v3           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4           #whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 3015
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2       #uid:Ljava/lang/Integer;
    .restart local v3       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v4       #whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :cond_3
    :try_start_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getAppPermissionsAllBlackLists()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2787
    monitor-enter p0

    :try_start_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppPermissionAllBlackLists:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2789
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 2790
    :cond_0
    const/4 v1, 0x0

    .line 2810
    :cond_1
    monitor-exit p0

    return-object v1

    .line 2792
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2795
    .local v4, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2797
    .local v1, blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2798
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2799
    .local v3, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "PermissionInstallationBlacklist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2801
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2802
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2803
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "PermissionInstallationBlacklist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2805
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2806
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2787
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #uid:Ljava/lang/Integer;
    .end local v4           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2808
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v2       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #uid:Ljava/lang/Integer;
    .restart local v4       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 2762
    const-string v2, "ApplicationPolicy"

    const-string v3, "getAppPermissionsBlackList:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    const/4 v1, 0x0

    .line 2764
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "APPLICATION_PERMISSION"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "permission"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2768
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2769
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2770
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2771
    const-string v2, "permission"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2773
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2776
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2777
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 2779
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAppSignatureBlackList()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 2832
    const-string v2, "ApplicationPolicy"

    const-string v3, "getAppSignatureBlackList()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    const/4 v1, 0x0

    .line 2834
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "APPLICATION_SIGNATURE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "signature"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2838
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2839
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2840
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2841
    const-string v2, "signature"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2843
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2846
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2847
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 2849
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getAppSignaturesAllBlackLists()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2857
    monitor-enter p0

    :try_start_0
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppSignatureAllBlackLists:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2859
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 2860
    :cond_0
    const/4 v1, 0x0

    .line 2880
    :cond_1
    monitor-exit p0

    return-object v1

    .line 2862
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2865
    .local v4, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2867
    .local v1, blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2868
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2869
    .local v3, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "SignatureInstallationBlacklist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2871
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2872
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2873
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "SignatureInstallationBlacklist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2875
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2876
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2857
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #uid:Ljava/lang/Integer;
    .end local v4           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2878
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v2       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #uid:Ljava/lang/Integer;
    .restart local v4       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2520
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2521
    const-wide/16 v2, -0x1

    .line 2522
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2523
    if-eqz p1, :cond_0

    .line 2525
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2526
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2531
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v2

    .line 2527
    :catch_0
    move-exception v0

    .line 2528
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2478
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2479
    const-wide/16 v2, -0x1

    .line 2480
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2481
    if-eqz p1, :cond_0

    .line 2483
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2484
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2489
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v2

    .line 2485
    :catch_0
    move-exception v0

    .line 2486
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .locals 12
    .parameter "packageName"

    .prologue
    const-wide/16 v6, -0x1

    .line 2595
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_APP_MGMT"

    const-string v10, "Application Policy"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    const-wide/16 v4, 0x0

    .line 2598
    .local v4, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2599
    if-eqz p1, :cond_3

    .line 2601
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2622
    :cond_0
    :goto_0
    return-wide v6

    .line 2606
    :cond_1
    const/4 v8, -0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0, v8, v9}, Lcom/android/server/enterprise/ApplicationPolicy;->getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;

    move-result-object v1

    .line 2607
    .local v1, appInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    if-eqz v1, :cond_0

    .line 2610
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/AppInfo;

    .line 2612
    .local v0, appInfo:Landroid/app/enterprise/AppInfo;
    iget-object v8, v0, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2613
    long-to-double v8, v4

    iget-wide v10, v0, Landroid/app/enterprise/AppInfo;->mUsage:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-double/2addr v8, v10

    double-to-long v4, v8

    goto :goto_1

    .line 2617
    .end local v0           #appInfo:Landroid/app/enterprise/AppInfo;
    .end local v1           #appInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 2618
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2619
    const-wide/16 v4, -0x1

    .line 2622
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    move-wide v6, v4

    goto :goto_0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2499
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2500
    const-wide/16 v2, -0x1

    .line 2501
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2502
    if-eqz p1, :cond_0

    .line 2504
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2505
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2510
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v2

    .line 2506
    :catch_0
    move-exception v0

    .line 2507
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .locals 3
    .parameter "aPackageName"

    .prologue
    .line 2710
    const/4 v0, 0x0

    .line 2713
    .local v0, lImg:[B
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2715
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2716
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/ApplicationIconDb;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 2725
    :cond_0
    return-object v0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "aPacakageName"

    .prologue
    .line 2216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .locals 14
    .parameter "packageName"

    .prologue
    const-wide/16 v8, -0x1

    .line 2541
    iget-object v10, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.sec.MDM_APP_MGMT"

    const-string v12, "Application Policy"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    const-wide/16 v6, 0x0

    .line 2544
    .local v6, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2545
    if-eqz p1, :cond_3

    .line 2548
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2577
    :cond_0
    :goto_0
    return-wide v8

    .line 2554
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2556
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2558
    .local v3, lRapi:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2561
    .local v5, rapi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2564
    .local v4, pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2565
    iget v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {p0, v10, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getDebugMemoryInfo(ILandroid/app/ActivityManager;)J

    move-result-wide v10

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v12, v12

    int-to-long v12, v12

    div-long/2addr v10, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v6, v10

    goto :goto_1

    .line 2572
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #lRapi:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4           #pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #rapi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v1

    .line 2573
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2574
    const-wide/16 v6, -0x1

    .line 2577
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_0

    move-wide v8, v6

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "packageName"

    .prologue
    .line 2412
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2413
    const/4 v1, 0x0

    .line 2414
    .local v1, appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2415
    if-eqz p1, :cond_0

    .line 2417
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2418
    .local v3, mAppInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    .line 2419
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2424
    .end local v3           #mAppInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 2420
    :catch_0
    move-exception v2

    .line 2421
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationNotificationMode(Z)I
    .locals 5
    .parameter "allAdmins"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x2

    .line 4354
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 4356
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4364
    :cond_0
    :goto_0
    return v0

    .line 4358
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 4359
    goto :goto_0

    .line 4360
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 4361
    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkg"

    .prologue
    .line 1877
    const/4 v0, 0x1

    .line 1878
    .local v0, enabled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1880
    if-eqz p1, :cond_1

    .line 1881
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "APPLICATION"

    const-string v6, "packageName"

    const-string v7, "controlState"

    invoke-virtual {v4, v5, v6, p1, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1884
    .local v3, states:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1885
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1886
    .local v2, state:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    .line 1888
    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1891
    const/4 v0, 0x0

    .line 1898
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:Ljava/lang/Integer;
    .end local v3           #states:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    return v0
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .locals 6
    .parameter "state"

    .prologue
    .line 3801
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3803
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApplicationStateList:state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3806
    .local v2, lAppList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;

    move-result-object v0

    .line 3808
    .local v0, appInstallList:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3822
    .end local v0           #appInstallList:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3812
    .restart local v0       #appInstallList:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 3813
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, p1, :cond_1

    .line 3814
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3812
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3818
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 3819
    const/4 v0, 0x0

    goto :goto_0

    .line 3822
    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .locals 8
    .parameter "packageName"

    .prologue
    .line 2457
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2458
    const-wide/16 v2, -0x1

    .line 2459
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2460
    if-eqz p1, :cond_0

    .line 2462
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 2463
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v4, v6

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long v2, v4, v6

    .line 2468
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_0
    :goto_0
    return-wide v2

    .line 2464
    :catch_0
    move-exception v0

    .line 2465
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 9
    .parameter "packageName"

    .prologue
    .line 2323
    monitor-enter p0

    const/4 v4, 0x1

    .line 2325
    .local v4, uninstall:Z
    :try_start_0
    const-string v6, "ApplicationPolicy"

    const-string v7, "getApplicationUninstallationEnabled"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v5, v4

    .line 2371
    .end local v4           #uninstall:Z
    .local v5, uninstall:I
    :goto_0
    monitor-exit p0

    return v5

    .line 2331
    .end local v5           #uninstall:I
    .restart local v4       #uninstall:Z
    :cond_1
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2333
    .local v3, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2334
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2338
    .local v2, uid:Ljava/lang/Integer;
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "UninstallationBlacklist"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2341
    .local v1, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2343
    const/4 v4, 0x0

    .line 2349
    :cond_4
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "UninstallationWhitelist"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2351
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2352
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2353
    const/4 v4, 0x1

    .line 2357
    :cond_6
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isApplicationUninstallationEnabled :  Checking PKG WL - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2362
    if-nez v4, :cond_2

    move v5, v4

    .line 2363
    .restart local v5       #uninstall:I
    goto/16 :goto_0

    .line 2365
    .end local v1           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #uid:Ljava/lang/Integer;
    .end local v3           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5           #uninstall:I
    :catch_0
    move-exception v0

    .line 2366
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2369
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v4

    .line 2371
    .restart local v5       #uninstall:I
    goto/16 :goto_0

    .line 2323
    .end local v5           #uninstall:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized getApplicationUninstallationMode()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1793
    monitor-enter p0

    :try_start_0
    const-string v3, "getApplicationUninstallationMode"

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1794
    const/4 v2, 0x1

    .line 1795
    .local v2, uninstall:Z
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 1812
    :goto_0
    monitor-exit p0

    return v3

    .line 1798
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1800
    .local v1, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1801
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1804
    .local v0, uid:Ljava/lang/Integer;
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "UninstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, ".*"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1805
    const/4 v2, 0x0

    .line 1810
    .end local v0           #uid:Ljava/lang/Integer;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppInstallationMode :  mode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1812
    if-eqz v2, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1793
    .end local v1           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #uninstall:Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2434
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2435
    const/4 v0, 0x0

    .line 2436
    .local v0, appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2437
    if-eqz p1, :cond_0

    .line 2439
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2440
    .local v2, mpkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 2441
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2446
    .end local v2           #mpkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 2442
    :catch_0
    move-exception v1

    .line 2443
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 2
    .parameter "pkg"

    .prologue
    .line 2005
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2006
    .local v0, callingUid:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v1

    return-object v1
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 2

    .prologue
    .line 3513
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationUsage;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v0

    return-object v0
.end method

.method public getBackupData()Ljava/util/Map;
    .locals 2

    .prologue
    .line 4653
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 4654
    const/4 v0, 0x0

    .line 4656
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    goto :goto_0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2381
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;
    .locals 9
    .parameter "includeUninstalledDataPresent"

    .prologue
    .line 2386
    const/4 v6, 0x0

    .line 2388
    .local v6, packageNameList:[Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_0

    const/16 v7, 0x2000

    :goto_0
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 2391
    .local v0, appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 2392
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 2393
    const/4 v4, 0x0

    .line 2394
    .local v4, index:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v5, v4

    .end local v4           #index:I
    .local v5, index:I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 2395
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_1

    .line 2388
    .end local v0           #appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #index:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 2398
    :catch_0
    move-exception v2

    .line 2399
    .local v2, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 2400
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2402
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    return-object v6
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .locals 15

    .prologue
    .line 1943
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v2

    .line 1944
    .local v2, callingUid:I
    const/4 v0, 0x0

    .line 1946
    .local v0, appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1947
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x2

    :try_start_0
    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "packageName"

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-string v14, "managedApp"

    aput-object v14, v3, v13

    .line 1950
    .local v3, columns:[Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "APPLICATION"

    invoke-virtual {v13, v14, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1952
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_4

    .line 1953
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1954
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1958
    const-string v13, "managedApp"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1960
    .local v12, state:I
    const/4 v13, 0x1

    and-int/lit8 v14, v12, 0x1

    if-ne v13, v14, :cond_2

    const/4 v9, 0x1

    .line 1961
    .local v9, isEnterpriseApp:Z
    :goto_1
    const/4 v13, 0x1

    if-ne v9, v13, :cond_0

    .line 1962
    const-string v13, "packageName"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1985
    .end local v9           #isEnterpriseApp:Z
    .end local v12           #state:I
    :catch_0
    move-exception v7

    move-object v10, v11

    .line 1986
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, e:Ljava/lang/Exception;
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1988
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 1989
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    check-cast v13, [Ljava/lang/String;

    .line 1991
    :goto_4
    return-object v13

    .line 1960
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #columns:[Ljava/lang/String;
    .restart local v4       #cursor:Landroid/database/Cursor;
    .restart local v11       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #state:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1966
    .end local v12           #state:I
    :cond_3
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v11

    .line 1968
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz v10, :cond_1

    :try_start_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 1969
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1970
    .end local v0           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    :try_start_4
    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;

    move-result-object v5

    .line 1971
    .local v5, deviceApps:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1972
    .local v6, deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    array-length v13, v5

    if-lez v13, :cond_5

    .line 1973
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1975
    :cond_5
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_9

    .line 1976
    if-eqz v6, :cond_7

    .line 1977
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1978
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1975
    :cond_6
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1981
    :cond_7
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 1985
    .end local v5           #deviceApps:[Ljava/lang/String;
    .end local v6           #deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #i:I
    :catch_1
    move-exception v7

    move-object v0, v1

    .end local v1           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 1991
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    .line 1985
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v0           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #columns:[Ljava/lang/String;
    .restart local v4       #cursor:Landroid/database/Cursor;
    .restart local v5       #deviceApps:[Ljava/lang/String;
    .restart local v6       #deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #i:I
    :cond_9
    move-object v0, v1

    .end local v1           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3
.end method

.method public getNetworkStats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 678
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->getAppLevelDataUsage()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getNetworkStats()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopBlackList()Ljava/util/List;
    .locals 1
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
    .line 3993
    const-string v0, "PackageNameStopBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopWhiteList()Ljava/util/List;
    .locals 1
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
    .line 4010
    const-string v0, "PackageNameStopWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetBlackList()Ljava/util/List;
    .locals 1
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
    .line 4084
    const-string v0, "PackageNameWidgetBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetWhiteList()Ljava/util/List;
    .locals 1
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
    .line 4057
    const-string v0, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopNCPUUsageApp(I)Ljava/util/List;
    .locals 23
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3453
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3454
    const-string v19, "ApplicationPolicy"

    const-string v20, "getTopNCPUUsageApp start"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readProcInfo()Ljava/util/Map;

    move-result-object v17

    .line 3457
    .local v17, lPrevState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readCpuTime()J

    move-result-wide v15

    .line 3462
    .local v15, lPrevCpuTime:J
    const-wide/16 v19, 0x3e8

    :try_start_0
    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3468
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readProcInfo()Ljava/util/Map;

    move-result-object v11

    .line 3469
    .local v11, lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readCpuTime()J

    move-result-wide v8

    .line 3471
    .local v8, lCPUTime:J
    sub-long v12, v8, v15

    .line 3473
    .local v12, lDeltaTime:J
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 3476
    .local v14, lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 3478
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 3480
    .local v18, lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 3481
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3482
    .local v4, index:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->delta(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;J)Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3463
    .end local v4           #index:I
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v8           #lCPUTime:J
    .end local v11           #lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    .end local v12           #lDeltaTime:J
    .end local v14           #lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v18           #lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :catch_0
    move-exception v2

    .line 3464
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 3484
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v8       #lCPUTime:J
    .restart local v11       #lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    .restart local v12       #lDeltaTime:J
    .restart local v14       #lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18       #lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :cond_0
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3487
    if-lez p1, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 3488
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result p1

    .line 3492
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3493
    .local v7, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    move/from16 v0, p1

    if-ge v3, v0, :cond_3

    .line 3494
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .line 3495
    .local v10, lCpuInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v6, Landroid/app/enterprise/AppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3496
    .local v6, lAppInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v6, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3498
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v10}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4024

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v6, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3499
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3493
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3502
    .end local v6           #lAppInfo:Landroid/app/enterprise/AppInfo;
    .end local v10           #lCpuInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    :cond_3
    const-string v19, "ApplicationPolicy"

    const-string v20, "getTopNCPUUsageApp end"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    return-object v7
.end method

.method public getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;
    .locals 5
    .parameter "aAppCount"
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3322
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_APP_MGMT"

    const-string v4, "ApplicationPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3324
    const-string v2, "ApplicationPolicy"

    const-string v3, "getTopNCPUUsageAppFromTopCommand start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    sget-object v2, Lcom/android/server/enterprise/DeviceShell;->BASH_COMMANDS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/android/server/enterprise/DeviceShell;->setShell(Ljava/lang/String;)V

    .line 3327
    const-string v2, "top -n 1"

    invoke-static {v2}, Lcom/android/server/enterprise/DeviceShell;->getProcessOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3329
    .local v1, lOutput:Ljava/lang/String;
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->parseTopCommand(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 3330
    .local v0, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const-string v3, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopNCPUUsageAppFromTopCommand size :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    return-object v0

    .line 3330
    :cond_0
    const-string v2, "null"

    goto :goto_0
.end method

.method public getTopNDataUsageApp(I)Ljava/util/List;
    .locals 7
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3240
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3241
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNDataUsageApp start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readAppSizeInfo()Ljava/util/List;

    move-result-object v2

    .line 3244
    .local v2, lResults:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3245
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3248
    .local v4, lStorageInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_1

    .line 3249
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 3252
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 3253
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .line 3254
    .local v1, lDataInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3255
    .local v3, lStorageInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3256
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3257
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3261
    .end local v1           #lDataInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    .end local v3           #lStorageInfo:Landroid/app/enterprise/AppInfo;
    :cond_2
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNDataUsageApp end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    return-object v4
.end method

.method public getTopNMemoryUsageApp(IZ)Ljava/util/List;
    .locals 9
    .parameter "aAppCount"
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3152
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3153
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNMemoryUsageApp start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->readAppMemoryInfo(Z)Ljava/util/List;

    move-result-object v2

    .line 3156
    .local v2, lResults:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3157
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3159
    .local v4, lStorageInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_1

    .line 3160
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 3163
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 3164
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .line 3165
    .local v1, lMemInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 3166
    .local v3, lStorageInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 3167
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 3168
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3169
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " memory usage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3171
    .end local v1           #lMemInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    .end local v3           #lStorageInfo:Landroid/app/enterprise/AppInfo;
    :cond_2
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNMemoryUsageApp end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    return-object v4
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1331
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->_installApplication(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public installApplicationBySystem(ILjava/lang/String;Z)Z
    .locals 3
    .parameter "uid"
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    .line 1347
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1348
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1349
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1351
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->_installApplication(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "packageName"
    .parameter "showMsg"

    .prologue
    .line 4025
    const-string v1, "PackageNameStopBlacklist"

    const-string v2, "PackageNameStopWhitelist"

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4026
    const-string v1, "ApplicationPolicy"

    const-string v2, "isApplicationForceStopDisabled: matches"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    if-eqz p2, :cond_0

    .line 4028
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4029
    .local v0, i:Landroid/content/Intent;
    const-string v1, "message"

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v3, 0x10401f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4031
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4033
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    .line 4035
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 10
    .parameter "packageName"
    .parameter "packageUri"

    .prologue
    .line 2236
    monitor-enter p0

    const/4 v2, 0x1

    .line 2238
    .local v2, install:Z
    :try_start_0
    const-string v7, "ApplicationPolicy"

    const-string v8, "isApplicationInstallationEnabled"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v3, v2

    .line 2310
    .end local v2           #install:Z
    .local v3, install:I
    :goto_0
    monitor-exit p0

    return v3

    .line 2243
    .end local v3           #install:I
    .restart local v2       #install:Z
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2246
    .local v0, appPkgInfo:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    :try_start_2
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2248
    .local v6, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2249
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2256
    .local v5, uid:Ljava/lang/Integer;
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "PackageNameInstallationBlacklist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2259
    .local v4, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2260
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2261
    const/4 v2, 0x0

    .line 2265
    :cond_4
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking PKG BL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "PermissionInstallationBlacklist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2270
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2271
    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2272
    const/4 v2, 0x0

    .line 2276
    :cond_6
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking PERM BL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "SignatureInstallationBlacklist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2280
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2281
    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2282
    const/4 v2, 0x0

    .line 2286
    :cond_8
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking SIG BL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "PackageNameInstallationWhitelist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2292
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2293
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2294
    const/4 v2, 0x1

    .line 2298
    :cond_a
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking PKG WL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2301
    if-nez v2, :cond_2

    move v3, v2

    .line 2302
    .restart local v3       #install:I
    goto/16 :goto_0

    .line 2304
    .end local v3           #install:I
    .end local v4           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #uid:Ljava/lang/Integer;
    .end local v6           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 2305
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2306
    const-string v7, "ApplicationPolicy"

    const-string v8, "Could not retrieve permissions & signature for package"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    .end local v1           #e:Ljava/lang/Exception;
    :cond_b
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v2

    .line 2310
    .restart local v3       #install:I
    goto/16 :goto_0

    .line 2236
    .end local v0           #appPkgInfo:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    .end local v3           #install:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    .line 1265
    const/4 v4, 0x0

    .line 1266
    .local v4, isInstalled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1267
    if-eqz p1, :cond_1

    .line 1269
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1270
    .local v0, appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1272
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1273
    const/4 v4, 0x1

    .line 1285
    .end local v0           #appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v4

    .line 1278
    :catch_0
    move-exception v2

    .line 1279
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 1280
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgName"

    .prologue
    .line 1295
    const/4 v3, 0x0

    .line 1296
    .local v3, isInstalled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1297
    if-eqz p1, :cond_1

    .line 1299
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1301
    .local v0, amgr:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 1303
    .local v4, runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1304
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1305
    .local v5, runningApplicationInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 1306
    const/4 v3, 0x1

    .line 1316
    .end local v0           #amgr:Landroid/app/ActivityManager;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5           #runningApplicationInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    return v3

    .line 1311
    :catch_0
    move-exception v1

    .line 1312
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1313
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1908
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const/4 v1, 0x1

    .line 1911
    .local v1, isIntentEnabled:Z
    if-nez p1, :cond_0

    .line 1932
    :goto_0
    return v3

    .line 1916
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x200

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1918
    .local v2, lResolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled resolve info :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1924
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move v1, v4

    .line 1931
    .end local v2           #lResolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_1
    const-string v6, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled return :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_4

    move v5, v4

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    if-nez v1, :cond_5

    :goto_3
    move v3, v4

    goto :goto_0

    .restart local v2       #lResolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    move v1, v3

    .line 1924
    goto :goto_1

    .line 1927
    .end local v2           #lResolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 1928
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    move v5, v3

    .line 1931
    goto :goto_2

    :cond_5
    move v4, v3

    .line 1932
    goto :goto_3
.end method

.method isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;
    .locals 7
    .parameter "aPkgName"
    .parameter "aManageAppInfoArray"
    .parameter "aCallingUid"

    .prologue
    const/4 v4, 0x0

    .line 2116
    if-nez p2, :cond_0

    .line 2117
    invoke-direct {p0, v4, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object p2

    .line 2120
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2121
    move-object v0, p2

    .local v0, arr$:[Landroid/app/enterprise/ManagedAppInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 2122
    .local v2, lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    iget-object v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2123
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsManagedAppInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    .end local v0           #arr$:[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1           #i$:I
    .end local v2           #lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    .end local v3           #len$:I
    :goto_1
    return-object v2

    .line 2121
    .restart local v0       #arr$:[Landroid/app/enterprise/ManagedAppInfo;
    .restart local v1       #i$:I
    .restart local v2       #lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #arr$:[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1           #i$:I
    .end local v2           #lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    .end local v3           #len$:I
    :cond_2
    move-object v2, v4

    .line 2128
    goto :goto_1
.end method

.method public isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 4372
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStatusBarNotificationAllowed: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    const-string v0, "PackageNameNotificationBlacklist"

    const-string v1, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidgetAllowed(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 4101
    const-string v0, "PackageNameWidgetBlacklist"

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 298
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 310
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 312
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 317
    return-void
.end method

.method public removeAppNotificationBlackList(Ljava/util/List;)Z
    .locals 2
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
    .line 4292
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppNotificationWhiteList(Ljava/util/List;)Z
    .locals 2
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
    .line 4315
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 2931
    const-string v2, "ApplicationPolicy"

    const-string v3, "removeAppPackageNameFromBlackList "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2933
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2934
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2937
    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 2982
    const-string v2, "ApplicationPolicy"

    const-string v3, "removeAppPackageNameFromWhiteList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2984
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2985
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2988
    :goto_0
    return v1

    :cond_0
    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .locals 2
    .parameter "appPermission"

    .prologue
    .line 2753
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2754
    .local v0, callingUid:I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .locals 2
    .parameter "appSignature"

    .prologue
    .line 2823
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2824
    .local v0, callingUid:I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1113
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1114
    const/4 v3, 0x0

    .line 1115
    .local v3, removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1116
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    .restart local v3       #removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1119
    .local v2, pkg:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1120
    if-eqz v2, :cond_0

    .line 1121
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/ApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z

    .line 1123
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1130
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pkg:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public bridge synthetic removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public removePackagesFromForceStopBlackList(Ljava/util/List;)Z
    .locals 2
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
    .line 4000
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromForceStopWhiteList(Ljava/util/List;)Z
    .locals 2
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
    .line 4017
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromWidgetBlackList(Ljava/util/List;)Z
    .locals 3
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
    .line 4091
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4093
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4094
    return v0
.end method

.method public removePackagesFromWidgetWhiteList(Ljava/util/List;)Z
    .locals 3
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
    .line 4064
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    .line 4066
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->refreshWidgetStatus()V

    .line 4067
    return v0
.end method

.method public restoreApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 25
    .parameter "pkgName"
    .parameter "data"

    .prologue
    .line 4444
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v19

    .line 4445
    .local v19, uid:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4446
    .local v20, validPkgName:Ljava/lang/String;
    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v21

    if-eqz v21, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    if-nez v21, :cond_1

    .line 4448
    :cond_0
    const/16 v21, -0x3

    .line 4522
    :goto_0
    return v21

    .line 4449
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->isBackupRunning:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 4451
    :cond_2
    const/16 v21, -0x4

    goto :goto_0

    .line 4452
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->getBackupAgentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_4

    .line 4453
    const/16 v21, -0x2

    goto :goto_0

    .line 4456
    :cond_4
    :try_start_0
    new-instance v18, Ljava/lang/SecurityManager;

    invoke-direct/range {v18 .. v18}, Ljava/lang/SecurityManager;-><init>()V

    .line 4457
    .local v18, sm:Ljava/lang/SecurityManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 4465
    .local v3, adminPkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 4467
    const/16 v21, 0x1

    :try_start_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4468
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    .line 4469
    const/16 v21, -0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreReturnCode:I

    .line 4470
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    .line 4472
    new-instance v11, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 4473
    .local v11, input:Landroid/app/backup/BackupDataInput;
    :goto_1
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 4474
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v14

    .line 4475
    .local v14, key:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v7

    .line 4476
    .local v7, dataSize:I
    new-array v6, v7, [B

    .line 4477
    .local v6, dataBuf:[B
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v6, v0, v7}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 4478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 4512
    .end local v6           #dataBuf:[B
    .end local v7           #dataSize:I
    .end local v11           #input:Landroid/app/backup/BackupDataInput;
    .end local v14           #key:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 4513
    .local v8, e:Ljava/lang/InterruptedException;
    const/16 v21, -0x3

    .line 4517
    const/16 v23, 0x0

    :try_start_2
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4519
    new-instance v12, Landroid/content/Intent;

    const-string v23, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4520
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4513
    monitor-exit v22

    goto/16 :goto_0

    .line 4523
    .end local v8           #e:Ljava/lang/InterruptedException;
    .end local v12           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 4458
    .end local v3           #adminPkgName:Ljava/lang/String;
    .end local v18           #sm:Ljava/lang/SecurityManager;
    :catch_1
    move-exception v9

    .line 4459
    .local v9, ex:Ljava/lang/SecurityException;
    const-string v21, "ApplicationPolicy"

    const-string v22, "can\'t read from file descriptor"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    const/16 v21, -0x3

    goto/16 :goto_0

    .line 4481
    .end local v9           #ex:Ljava/lang/SecurityException;
    .restart local v3       #adminPkgName:Ljava/lang/String;
    .restart local v11       #input:Landroid/app/backup/BackupDataInput;
    .restart local v18       #sm:Ljava/lang/SecurityManager;
    :cond_5
    :try_start_3
    new-instance v10, Landroid/content/Intent;

    const-string v21, "edm.intent.action.do.restore"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4482
    .local v10, i:Landroid/content/Intent;
    const-string v21, "pkgName"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4483
    const-string v21, "adminPkgName"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v23, "packageAppVersionCode"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v5, v0

    .line 4485
    .local v5, byteAppVersionCode:[B
    if-nez v5, :cond_6

    .line 4486
    const-string v21, "ApplicationPolicy"

    const-string v23, "byteAppVersionCode null"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4487
    const/16 v21, -0x3

    .line 4517
    const/16 v23, 0x0

    :try_start_4
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4519
    new-instance v12, Landroid/content/Intent;

    const-string v23, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4520
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4487
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 4489
    .end local v12           #intent:Landroid/content/Intent;
    :cond_6
    const/16 v21, 0x4

    :try_start_5
    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    .line 4490
    .local v4, appVersionCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v23, "packageAppVersionCode"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4491
    const-string v21, "packageAppVersionCode"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4492
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4494
    .local v16, sigList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    const/4 v13, 0x0

    .line 4495
    .local v13, k:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    move-object/from16 v21, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "packageAppSignature"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v15, v0

    .line 4496
    .local v15, sigBytes:[B
    if-nez v15, :cond_7

    .line 4503
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v21

    if-eqz v21, :cond_8

    .line 4504
    const/16 v21, -0x3

    .line 4517
    const/16 v23, 0x0

    :try_start_6
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4519
    new-instance v12, Landroid/content/Intent;

    const-string v23, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4520
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4504
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 4499
    .end local v12           #intent:Landroid/content/Intent;
    :cond_7
    :try_start_7
    new-instance v21, Landroid/content/pm/Signature;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Landroid/content/pm/Signature;-><init>([B)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreData:Ljava/util/Map;

    move-object/from16 v21, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "packageAppSignature"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4494
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 4505
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    .line 4506
    .local v17, signatures:[Landroid/content/pm/Signature;
    const/4 v13, 0x0

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_9

    .line 4507
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/Signature;

    aput-object v21, v17, v13

    .line 4506
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 4509
    :cond_9
    const-string v21, "packageAppSignature"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    const-wide/16 v23, 0x7530

    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 4517
    const/16 v21, 0x0

    :try_start_8
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4519
    new-instance v12, Landroid/content/Intent;

    const-string v21, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4520
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4522
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreReturnCode:I

    move/from16 v21, v0

    monitor-exit v22

    goto/16 :goto_0

    .line 4514
    .end local v4           #appVersionCode:I
    .end local v5           #byteAppVersionCode:[B
    .end local v10           #i:Landroid/content/Intent;
    .end local v11           #input:Landroid/app/backup/BackupDataInput;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #k:I
    .end local v15           #sigBytes:[B
    .end local v16           #sigList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/Signature;>;"
    .end local v17           #signatures:[Landroid/content/pm/Signature;
    :catch_2
    move-exception v8

    .line 4515
    .local v8, e:Ljava/io/IOException;
    const/16 v21, -0x3

    .line 4517
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4519
    new-instance v12, Landroid/content/Intent;

    const-string v23, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4520
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4515
    monitor-exit v22

    goto/16 :goto_0

    .line 4517
    .end local v8           #e:Ljava/io/IOException;
    .end local v12           #intent:Landroid/content/Intent;
    :catchall_1
    move-exception v21

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ApplicationPolicy;->isRestoreRunning:Z

    .line 4519
    new-instance v12, Landroid/content/Intent;

    const-string v23, "edm.intent.action.backup.service.available"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4520
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4517
    throw v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public setAppInstallToSdCard(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 3040
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 3042
    .local v0, callingUid:I
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3043
    const-string v3, "setAppInstallToSdCard : External Storage Emulated"

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 3051
    :goto_0
    return v2

    .line 3046
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "APPLICATION_GENERAL"

    const-string v5, "installToSdCard"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 3048
    :catch_0
    move-exception v1

    .line 3049
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppInstallationMode(I)Z
    .locals 3
    .parameter "aInstallationMode"

    .prologue
    .line 1695
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v1

    .line 1696
    .local v1, lCallingUid:I
    const/4 v0, 0x0

    .line 1698
    .local v0, bInstallationModeSet:Z
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 1700
    const-string v2, ".*"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z

    move-result v0

    .line 1708
    :cond_0
    :goto_0
    return v0

    .line 1701
    :cond_1
    if-nez p1, :cond_0

    .line 1703
    const-string v2, ".*"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 1635
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1636
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 1637
    return-void
.end method

.method public setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V
    .locals 3
    .parameter "adminUid"
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 1651
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1652
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1653
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1655
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    .line 1656
    return-void
.end method

.method public setApplicationNotificationMode(I)Z
    .locals 5
    .parameter "mode"

    .prologue
    .line 4327
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 4329
    .local v0, callingUid:I
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    packed-switch p1, :pswitch_data_0

    .line 4337
    const/4 v1, 0x0

    .line 4350
    :goto_0
    return v1

    .line 4340
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "APPLICATION_MISC"

    const-string v4, "appNotificationMode"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 4345
    .local v1, status:Z
    if-eqz v1, :cond_0

    .line 4346
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4349
    :cond_0
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4331
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 12
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1569
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1570
    .local v0, callingUid:I
    const/4 v3, 0x0

    .line 1571
    .local v3, success:Z
    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setApplicationState :  pkgName :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " callingUid :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " enableApp :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1574
    if-eqz p1, :cond_3

    .line 1576
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1602
    :goto_0
    return v6

    .line 1579
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v7, :cond_1

    .line 1580
    const-string v6, "ApplicationPolicy"

    const-string v7, "setApplicationState() : can not disable Admin app"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 1581
    goto :goto_0

    .line 1584
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1587
    .local v4, token:J
    const/4 v9, 0x2

    if-nez p2, :cond_2

    move v6, v7

    :cond_2
    :try_start_0
    invoke-direct {p0, p1, v0, v9, v6}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1590
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 1591
    .local v2, state:Z
    const-string v6, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "state : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_4

    move v6, v7

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v9, p1, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    const/4 v3, 0x1

    .line 1599
    .end local v2           #state:Z
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4           #token:J
    :cond_3
    move v6, v3

    .line 1602
    goto :goto_0

    .restart local v2       #state:Z
    .restart local v4       #token:J
    :cond_4
    move v6, v8

    .line 1592
    goto :goto_1

    .line 1596
    .end local v2           #state:Z
    :catch_0
    move-exception v1

    .line 1597
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1599
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7
    .parameter "pkgList"
    .parameter "operation"

    .prologue
    .line 3827
    const/4 v0, 0x0

    .line 3828
    .local v0, appStateLst:[Ljava/lang/String;
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:operation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3830
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3832
    .local v2, lAppList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gez v4, :cond_1

    :cond_0
    move-object v4, v0

    .line 3846
    :goto_0
    return-object v4

    .line 3835
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 3836
    aget-object v4, p1, v1

    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    move-result v3

    .line 3837
    .local v3, ret:Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 3838
    aget-object v4, p1, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3839
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:pkgList[i]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3843
    .end local v3           #ret:Z
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 3844
    const/4 v4, 0x0

    goto :goto_0

    .line 3846
    :cond_4
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 1826
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1827
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 1828
    return-void
.end method

.method public setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V
    .locals 3
    .parameter "adminUid"
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 1842
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1843
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1844
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1846
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    .line 1847
    return-void
.end method

.method public setApplicationUninstallationMode(I)Z
    .locals 5
    .parameter "uninstallationMode"

    .prologue
    const/4 v4, 0x1

    .line 1766
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1767
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 1769
    .local v1, uninstallationModeSet:Z
    if-ne v4, p1, :cond_1

    .line 1771
    const-string v2, ".*"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    .line 1779
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppInstallationMode : returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1781
    return v1

    .line 1773
    :cond_1
    if-nez p1, :cond_0

    .line 1775
    const-string v2, ".*"

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_0
.end method

.method public setAsManagedApp(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2884
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAsManagedApp():pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2887
    .local v0, callingUid:I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2902
    :goto_0
    return v3

    .line 2891
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 2893
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    .line 2894
    .local v2, mAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    if-nez v5, :cond_1

    .line 2895
    const-string v5, "applicationInstallationCount"

    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 2896
    const-string v5, "ApplicationPolicy"

    const-string v6, "App install count incremented"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v3, v4

    .line 2898
    goto :goto_0

    .line 2900
    .end local v2           #mAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    :catch_0
    move-exception v1

    .line 2901
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setBackupData(Ljava/util/Map;)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 4643
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 4644
    const/4 v0, 0x0

    .line 4649
    :goto_0
    return v0

    .line 4646
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4647
    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupData:Ljava/util/Map;

    .line 4648
    monitor-exit v1

    .line 4649
    const/4 v0, 0x1

    goto :goto_0

    .line 4648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 3769
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3770
    const/4 v3, 0x0

    .line 3771
    .local v3, result:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3772
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3773
    if-eqz p1, :cond_2

    .line 3774
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3778
    .local v4, token:J
    if-nez p2, :cond_0

    .line 3779
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3780
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 3781
    const/4 v6, 0x0

    .line 3793
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3797
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #token:J
    :goto_0
    return v6

    .line 3783
    .restart local v4       #token:J
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3784
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3785
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3787
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_1
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3788
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3789
    const/4 v3, 0x1

    .line 3793
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4           #token:J
    :cond_2
    move v6, v3

    .line 3797
    goto :goto_0

    .line 3790
    .restart local v4       #token:J
    :catch_0
    move-exception v1

    .line 3791
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not start app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3793
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public stopApp(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgName"

    .prologue
    .line 3739
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3740
    const/4 v2, 0x0

    .line 3741
    .local v2, result:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3742
    if-eqz p1, :cond_0

    .line 3743
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3744
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3746
    .local v3, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3748
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3749
    const/4 v2, 0x1

    .line 3753
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3757
    .end local v3           #token:J
    :cond_0
    return v2

    .line 3750
    .restart local v3       #token:J
    :catch_0
    move-exception v1

    .line 3751
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not stop app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3753
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 303
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 305
    return-void
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 1474
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1475
    .local v0, callingUid:I
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->_uninstallApplication(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public uninstallApplicationBySystem(ILjava/lang/String;Z)Z
    .locals 3
    .parameter "uid"
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 1490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1491
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1492
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1494
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->_uninstallApplication(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public updateDataUsageDb()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateNetworkUsageDb()V

    .line 683
    return-void
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 1140
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1141
    const/4 v1, 0x0

    .line 1142
    .local v1, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1143
    if-eqz p1, :cond_1

    .line 1144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1146
    .local v2, token:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->clearUserData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1147
    const/4 v1, 0x1

    .line 1148
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->clearApplicationCacheFiles(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1157
    .end local v2           #token:J
    :cond_1
    return v1

    .line 1150
    .restart local v2       #token:J
    :catch_0
    move-exception v0

    .line 1151
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1152
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1154
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
