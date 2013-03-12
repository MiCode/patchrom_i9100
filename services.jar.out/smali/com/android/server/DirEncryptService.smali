.class Lcom/android/server/DirEncryptService;
.super Landroid/os/storage/IDirEncryptService$Stub;
.source "DirEncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;,
        Lcom/android/server/DirEncryptService$MountCallBackBinderListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field private static final ENCRYPT_TAG:Ljava/lang/String; = "DirEncryptConnector"

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGE:Z = false

.field private static final REQUESTER_DM:Ljava/lang/String; = "dm"

.field private static final REQUESTER_USER:Ljava/lang/String; = "user"

.field private static final REQUESTER_USER_ENC_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SDCARD_ENC_STATUS_ACTIVITY:Ljava/lang/String; = "android.app.action.SDCARD_ENCRYPTION_STATUS"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field private mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReady:Z

.field private mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    .line 75
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    .line 84
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Landroid/os/storage/IDirEncryptService$Stub;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    .line 91
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 92
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 94
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 95
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 96
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    .line 199
    new-instance v0, Lcom/android/server/DirEncryptService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    const-string v0, "ctor DirEncryptService....."

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 158
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    return v0
.end method

.method private authByUid(I)Z
    .locals 2
    .parameter "uid"

    .prologue
    .line 230
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 232
    .local v0, myUID:I
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const/4 v1, 0x1

    .line 236
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findRequester(I)Ljava/lang/String;
    .locals 5
    .parameter "uidApp"

    .prologue
    .line 240
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 241
    .local v1, myUID:I
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, callingPackageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name uidApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name myUID  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 246
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 247
    :cond_0
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 281
    :goto_0
    return-object v3

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    const-string v3, "REQUESTER_UNKNOWN..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 253
    const-string v3, ""

    goto :goto_0

    .line 256
    :cond_2
    if-eq v1, p1, :cond_3

    .line 257
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 258
    goto :goto_0

    .line 261
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 262
    .local v2, pid:I
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->getCallingProcessPkg(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 266
    if-nez v0, :cond_4

    .line 268
    const-string v3, "Calling package name is null..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 269
    const-string v3, ""

    goto :goto_0

    .line 272
    :cond_4
    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 273
    const-string v3, "REQUESTER_USER..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 274
    const-string v3, "user"

    goto :goto_0

    .line 280
    :cond_5
    const-string v3, "REQUESTER_DM..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 281
    const-string v3, "dm"

    goto :goto_0
.end method

.method private getCallingProcessPkg(I)Ljava/lang/String;
    .locals 6
    .parameter "pid"

    .prologue
    .line 215
    const/4 v4, 0x0

    .line 216
    .local v4, result:Ljava/lang/String;
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 218
    .local v0, am:Lcom/android/server/am/ActivityManagerService;
    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 220
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 221
    .local v2, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 222
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 226
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    return-object v4
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 130
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public encryptStorage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "path"
    .parameter "password"

    .prologue
    .line 428
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encryptStorage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 430
    sget-boolean v7, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v7, :cond_0

    .line 431
    const/16 v2, 0xc8

    .line 471
    :goto_0
    return v2

    .line 434
    :cond_0
    if-nez p2, :cond_1

    .line 435
    const-string v7, "missing password..."

    invoke-static {v7}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 436
    const/16 v2, 0xcb

    goto :goto_0

    .line 440
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 441
    .local v1, requester:I
    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 442
    const-string v7, "Invalid requester"

    invoke-static {v7}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 443
    const/16 v2, 0xcc

    goto :goto_0

    .line 446
    :cond_2
    const/16 v2, 0xc9

    .line 447
    .local v2, result:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 448
    .local v5, token:J
    iget-object v7, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 450
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v7, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 451
    .local v0, dem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, state:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 454
    const/4 v2, 0x0

    .line 455
    const-string v7, "SD card mounted, need unmount..."

    invoke-static {v7}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 456
    iget-object v7, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v7}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 457
    iget-object v7, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 458
    const/16 v2, 0xb

    .line 470
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 459
    :cond_3
    const-string v7, "checking"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 460
    const-string v7, "SD card ready, need encrypt cycle..."

    invoke-static {v7}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 461
    iget-object v7, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v7}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 462
    iget-object v7, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 463
    const/16 v2, 0xb

    goto :goto_1

    .line 466
    :cond_4
    const-string v7, "SD card not mounted, so not applying policies this time"

    invoke-static {v7}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 467
    const/16 v2, 0xca

    goto :goto_1
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getAdditionalSpaceRequired()I

    move-result v0

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getLastError()I

    move-result v0

    return v0
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 5

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    sget-boolean v4, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v4, :cond_0

    move-object v1, v0

    .line 490
    .end local v0           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v1, result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :goto_0
    return-object v1

    .line 480
    .end local v1           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0       #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 482
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    const-string v4, "EncPrefs found"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 484
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 489
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v0

    .line 490
    .end local v0           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v1       #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    goto :goto_0

    .line 486
    .end local v1           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0       #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1
    const-string v4, "EncPrefs not found"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 4

    .prologue
    .line 376
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    .line 379
    :cond_0
    const/4 v0, 0x0

    .line 380
    .local v0, result:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 382
    .local v1, token:J
    const-string v3, "isStorageCardEncryptionPoliciesApplied....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    .line 385
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 1

    .prologue
    .line 139
    const-string v0, " onDaemonConnected ::"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 141
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 144
    const-string v0, "onEvent"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    new-instance v1, Lcom/android/server/DirEncryptService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 288
    return-void
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 5
    .parameter "password"

    .prologue
    .line 390
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_0

    .line 391
    const/16 v3, 0xc8

    .line 406
    :goto_0
    return v3

    .line 394
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 395
    .local v0, requester:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 397
    .local v1, token:J
    const-string v3, "setPassword....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 405
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    const/16 v3, 0xb

    goto :goto_0

    .line 402
    :cond_1
    const-string v3, "setPassword error: invalid uid"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .locals 12
    .parameter "encType"
    .parameter "fullEnc"
    .parameter "excludeMediaFiles"

    .prologue
    const/4 v10, 0x4

    const/4 v11, 0x2

    .line 295
    const/16 v4, 0xc8

    .line 296
    .local v4, result:I
    sget-boolean v8, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v8, :cond_0

    move v5, v4

    .line 372
    .end local v4           #result:I
    .local v5, result:I
    :goto_0
    return v5

    .line 299
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setStorageCardEncryption: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 301
    if-eq p1, v11, :cond_1

    const/4 v8, 0x3

    if-eq p1, v8, :cond_1

    move v5, v4

    .line 302
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_0

    .line 304
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_1
    if-eq p2, v10, :cond_2

    const/4 v8, 0x5

    if-eq p2, v8, :cond_2

    move v5, v4

    .line 305
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_0

    .line 307
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_2
    if-ne p2, v10, :cond_3

    if-eq p1, v11, :cond_3

    move v5, v4

    .line 308
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_0

    .line 310
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_3
    const/4 v8, 0x6

    if-eq p3, v8, :cond_4

    const/4 v8, 0x7

    if-eq p3, v8, :cond_4

    move v5, v4

    .line 311
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_0

    .line 314
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_4
    iget-object v9, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v9

    .line 318
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, requester:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 321
    .local v6, token:J
    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v1, p1, p2, p3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 322
    .local v1, newPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v8, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v8}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    .line 324
    .local v2, oldPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v8, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 325
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 326
    const/4 v8, 0x2

    iput v8, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 327
    const/4 v8, 0x4

    iput v8, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 330
    :cond_5
    invoke-virtual {v2, v1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 332
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Called by: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 333
    const-string v8, "user"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 335
    iget-object v8, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v8, v1}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 336
    const/16 v4, 0x8

    .line 338
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 370
    :cond_6
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    monitor-exit v9

    move v5, v4

    .line 372
    .end local v4           #result:I
    .restart local v5       #result:I
    goto/16 :goto_0

    .line 340
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_7
    const/16 v4, 0x9

    goto :goto_1

    .line 348
    :cond_8
    iget v8, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v11, :cond_6

    .line 350
    iget-object v8, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v8, v1}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 351
    const/16 v4, 0x8

    .line 353
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    goto :goto_1

    .line 371
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v1           #newPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v2           #oldPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v3           #requester:Ljava/lang/String;
    .end local v6           #token:J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 355
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v1       #newPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v2       #oldPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v3       #requester:Ljava/lang/String;
    .restart local v6       #token:J
    :cond_9
    const/16 v4, 0x9

    goto :goto_1

    .line 361
    :cond_a
    :try_start_1
    iget-object v8, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v8, v1}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    .line 364
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->checkPoliciesApplied()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_b

    .line 365
    const/16 v4, 0x8

    goto :goto_1

    .line 367
    :cond_b
    const/16 v4, 0xa

    goto :goto_1
.end method

.method public systemReady()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 163
    const-string v0, "DirEncryptService"

    const-string v1, "Calling systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-boolean v0, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v6

    .line 169
    .local v6, MS:Landroid/os/storage/IMountService;
    new-instance v0, Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    invoke-direct {v0, p0, v4}, Lcom/android/server/DirEncryptService$MountCallBackBinderListener;-><init>(Lcom/android/server/DirEncryptService;Lcom/android/server/DirEncryptService$1;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    .line 172
    if-eqz v6, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    invoke-interface {v6, v0}, Landroid/os/storage/IMountService;->registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 178
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 183
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "dir_enc_report"

    const/16 v3, 0x1f4

    const-string v4, "DirEncryptConnector"

    const/16 v5, 0xa0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 184
    new-instance v9, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "DirEncryptConnector"

    invoke-direct {v9, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 185
    .local v9, thread:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 187
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DirEncryptService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 188
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 189
    new-instance v0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 191
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    .end local v9           #thread:Ljava/lang/Thread;
    :catch_0
    move-exception v8

    .line 194
    .local v8, ex:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeDaemonConnector exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    goto/16 :goto_0

    .line 173
    .end local v8           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 174
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 292
    return-void
.end method
