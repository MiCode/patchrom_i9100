.class public Lcom/android/server/enterprise/SecurityPolicy;
.super Landroid/app/enterprise/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;
    }
.end annotation


# static fields
.field private static final KEYCHAIN_RESET_TIMEOUT:I = 0xbb8

.field private static final MAX_DEPTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"


# instance fields
.field mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mMediaFormatRet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 117
    iput-object p1, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 119
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/SecurityPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/SecurityPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enforceSecurityPermission()I
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private executeCommand(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 987
    .local p1, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 988
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v6, resultList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 990
    .local v2, readLength:I
    const/4 v3, 0x0

    .line 992
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 994
    .local v1, process:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 995
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 996
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 997
    .local v5, resultLine:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 998
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 1001
    .end local v1           #process:Ljava/lang/Process;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #resultLine:Ljava/lang/String;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v7, "SecurityPolicy"

    const-string v8, "executeCommand failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1008
    if-eqz v3, :cond_0

    .line 1009
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1015
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v6

    .line 1008
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #process:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #resultLine:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 1009
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_3
    move-object v3, v4

    .line 1014
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 1003
    .end local v1           #process:Ljava/lang/Process;
    .end local v5           #resultLine:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1004
    .local v0, e:Ljava/lang/InterruptedException;
    :goto_4
    :try_start_5
    const-string v7, "SecurityPolicy"

    const-string v8, "executeCommand failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1008
    if-eqz v3, :cond_0

    .line 1009
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 1011
    :catch_2
    move-exception v0

    .line 1012
    .local v0, e:Ljava/io/IOException;
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    :goto_5
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1007
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1008
    :goto_6
    if-eqz v3, :cond_3

    .line 1009
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1007
    :cond_3
    :goto_7
    throw v7

    .line 1011
    :catch_3
    move-exception v0

    .line 1012
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "SecurityPolicy"

    const-string v9, ""

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1011
    :catch_4
    move-exception v0

    .line 1012
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    goto :goto_5

    .line 1011
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #process:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #resultLine:Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 1012
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1007
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 1003
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1000
    .end local v1           #process:Ljava/lang/Process;
    .end local v5           #resultLine:Ljava/lang/String;
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private formatExternalStorageCard()Z
    .locals 9

    .prologue
    .line 279
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 280
    .local v5, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 282
    .local v6, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .line 283
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v7, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v7, "storage_volume"

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    const-string v7, "edm"

    const-string v8, "true"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    sget-object v7, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 287
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 289
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 290
    .local v3, lock:Ljava/lang/Object;
    new-instance v4, Lcom/android/server/enterprise/SecurityPolicy$1;

    invoke-direct {v4, p0, v6, v3}, Lcom/android/server/enterprise/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/SecurityPolicy;[Landroid/os/storage/StorageVolume;Ljava/lang/Object;)V

    .line 308
    .local v4, mediaReceiver:Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v7, "file"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 311
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 315
    const-wide/16 v7, 0x1b58

    :try_start_1
    invoke-virtual {v3, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 327
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    .end local v3           #lock:Ljava/lang/Object;
    .end local v4           #mediaReceiver:Landroid/content/BroadcastReceiver;
    .end local v5           #storageManager:Landroid/os/storage/StorageManager;
    .end local v6           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    return v7

    .line 316
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    .restart local v3       #lock:Ljava/lang/Object;
    .restart local v4       #mediaReceiver:Landroid/content/BroadcastReceiver;
    .restart local v5       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v6       #storageVolumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v7, "SecurityPolicy"

    const-string v8, "formatStorageCard - InterruptedException"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 322
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    .end local v3           #lock:Ljava/lang/Object;
    .end local v4           #mediaReceiver:Landroid/content/BroadcastReceiver;
    .end local v5           #storageManager:Landroid/os/storage/StorageManager;
    .end local v6           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "SecurityPolicy"

    const-string v8, "formatStorageCard fail"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 138
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v1

    .line 138
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string v3, "is string valid?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    .locals 7
    .parameter "fdir"
    .parameter "depth"
    .parameter "outFile"

    .prologue
    .line 962
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 963
    const/16 v5, 0x14

    if-ge p2, v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 966
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 968
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/proc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/sys"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/SecurityPolicy;->getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 974
    .local v2, f:Ljava/io/File;
    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v2, v5, p3}, Lcom/android/server/enterprise/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 978
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_0
    move-exception v1

    .line 979
    .local v1, e:Ljava/io/IOException;
    const-string v5, "SecurityPolicy"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 983
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    return-void
.end method


# virtual methods
.method public changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "oldpassword"
    .parameter "newpassword"

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 704
    const/4 v0, 0x0

    return v0
.end method

.method public clearInstalledCertificates()Z
    .locals 17

    .prologue
    .line 787
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 788
    const/4 v9, 0x1

    .line 790
    .local v9, ret:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v5, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 793
    .local v12, token:J
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v14

    const-string v15, "CACERT_"

    invoke-virtual {v14, v15}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 794
    .local v8, names:[Ljava/lang/String;
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v1, v3

    .line 795
    .local v7, name:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CACERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 797
    .end local v7           #name:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v14

    const-string v15, "USRCERT_"

    invoke-virtual {v14, v15}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 798
    move-object v1, v8

    array-length v6, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v7, v1, v3

    .line 799
    .restart local v7       #name:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USRCERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 801
    .end local v7           #name:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v14

    const-string v15, "USRPKEY_"

    invoke-virtual {v14, v15}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 802
    move-object v1, v8

    array-length v6, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 803
    .restart local v7       #name:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USRPKEY_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 806
    .end local v7           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 807
    .local v4, key:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v14

    and-int/2addr v9, v14

    goto :goto_3

    .line 811
    .end local v4           #key:Ljava/lang/String;
    :cond_3
    :try_start_0
    new-instance v14, Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/SecurityPolicy;Lcom/android/server/enterprise/SecurityPolicy$1;)V

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Void;

    invoke-virtual {v14, v15}, Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v10

    .line 812
    .local v10, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const-wide/16 v14, 0xbb8

    sget-object v16, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v15, v0}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 813
    .local v11, taskRet:Z
    invoke-virtual {v10}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v14

    sget-object v15, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v14, v15}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_4

    .line 814
    and-int/2addr v9, v11

    .line 819
    .end local v10           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    .end local v11           #taskRet:Z
    :cond_4
    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    return v9

    .line 816
    :catch_0
    move-exception v2

    .line 817
    .local v2, e:Ljava/lang/Exception;
    const-string v14, "SecurityPolicy"

    const-string v15, "clearInstalledCertificates: EX"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public formatInternalStorage(ZZ)Z
    .locals 1
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Z)Z
    .locals 8
    .parameter "isExternal"

    .prologue
    const/4 v7, 0x1

    .line 252
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 254
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    .line 255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 258
    .local v1, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "storage"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 259
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 260
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    if-ne p1, v7, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->formatExternalStorageCard()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    .end local v4           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    iget-boolean v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    return v5

    .line 263
    .restart local v3       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v4       #storageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 268
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    .end local v4           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SecurityPolicy"

    const-string v6, "formatStorageCard fail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "path"
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
    .line 860
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 862
    if-eqz p1, :cond_0

    .line 863
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 864
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 865
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-object v2

    .line 868
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v0, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 872
    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 873
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "path"
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
    .line 882
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 884
    if-eqz p1, :cond_0

    .line 885
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 886
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 887
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 899
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-object v2

    .line 890
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v0, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    const-string v2, "-l"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    const-string v2, "-a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 896
    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 897
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getFileNamesWithAttributesRecursive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "path"
    .parameter "filePath"

    .prologue
    const/4 v10, 0x0

    .line 909
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 912
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 913
    .local v9, tempfile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 914
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 917
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 958
    :cond_1
    :goto_0
    return v10

    .line 922
    :cond_2
    if-eqz p1, :cond_3

    .line 923
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 930
    .end local v4           #f:Ljava/io/File;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v2, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 933
    .local v8, root:Ljava/io/File;
    const/4 v6, 0x0

    .line 934
    .local v6, outFile:Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 936
    .local v0, allFiles:Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    .end local v0           #allFiles:Ljava/io/FileWriter;
    .local v1, allFiles:Ljava/io/FileWriter;
    :try_start_1
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 939
    .end local v6           #outFile:Ljava/io/PrintWriter;
    .local v7, outFile:Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 940
    if-eqz v8, :cond_4

    .line 941
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11, v7}, Lcom/android/server/enterprise/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 948
    :cond_4
    if-eqz v7, :cond_5

    .line 949
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 952
    :cond_5
    if-eqz v1, :cond_6

    .line 953
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 958
    :cond_6
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 944
    .end local v1           #allFiles:Ljava/io/FileWriter;
    .end local v7           #outFile:Ljava/io/PrintWriter;
    .restart local v0       #allFiles:Ljava/io/FileWriter;
    .restart local v6       #outFile:Ljava/io/PrintWriter;
    :catch_0
    move-exception v5

    .line 948
    .local v5, ioex:Ljava/io/IOException;
    :goto_2
    if-eqz v6, :cond_7

    .line 949
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 952
    :cond_7
    if-eqz v0, :cond_1

    .line 953
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 954
    :catch_1
    move-exception v3

    .line 955
    .local v3, e:Ljava/io/IOException;
    const-string v11, "SecurityPolicy"

    const-string v12, "Error closing cursor"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 948
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #ioex:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v6, :cond_8

    .line 949
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 952
    :cond_8
    if-eqz v0, :cond_9

    .line 953
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 948
    :cond_9
    :goto_4
    throw v10

    .line 954
    :catch_2
    move-exception v3

    .line 955
    .restart local v3       #e:Ljava/io/IOException;
    const-string v11, "SecurityPolicy"

    const-string v12, "Error closing cursor"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 954
    .end local v0           #allFiles:Ljava/io/FileWriter;
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #outFile:Ljava/io/PrintWriter;
    .restart local v1       #allFiles:Ljava/io/FileWriter;
    .restart local v7       #outFile:Ljava/io/PrintWriter;
    :catch_3
    move-exception v3

    .line 955
    .restart local v3       #e:Ljava/io/IOException;
    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 948
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #outFile:Ljava/io/PrintWriter;
    .restart local v6       #outFile:Ljava/io/PrintWriter;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1           #allFiles:Ljava/io/FileWriter;
    .restart local v0       #allFiles:Ljava/io/FileWriter;
    goto :goto_3

    .end local v0           #allFiles:Ljava/io/FileWriter;
    .end local v6           #outFile:Ljava/io/PrintWriter;
    .restart local v1       #allFiles:Ljava/io/FileWriter;
    .restart local v7       #outFile:Ljava/io/PrintWriter;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #allFiles:Ljava/io/FileWriter;
    .restart local v0       #allFiles:Ljava/io/FileWriter;
    move-object v6, v7

    .end local v7           #outFile:Ljava/io/PrintWriter;
    .restart local v6       #outFile:Ljava/io/PrintWriter;
    goto :goto_3

    .line 944
    .end local v0           #allFiles:Ljava/io/FileWriter;
    .restart local v1       #allFiles:Ljava/io/FileWriter;
    :catch_4
    move-exception v5

    move-object v0, v1

    .end local v1           #allFiles:Ljava/io/FileWriter;
    .restart local v0       #allFiles:Ljava/io/FileWriter;
    goto :goto_2

    .end local v0           #allFiles:Ljava/io/FileWriter;
    .end local v6           #outFile:Ljava/io/PrintWriter;
    .restart local v1       #allFiles:Ljava/io/FileWriter;
    .restart local v7       #outFile:Ljava/io/PrintWriter;
    :catch_5
    move-exception v5

    move-object v0, v1

    .end local v1           #allFiles:Ljava/io/FileWriter;
    .restart local v0       #allFiles:Ljava/io/FileWriter;
    move-object v6, v7

    .end local v7           #outFile:Ljava/io/PrintWriter;
    .restart local v6       #outFile:Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method public getInstalledCertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .locals 16
    .parameter "certificateName"

    .prologue
    .line 531
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 532
    new-instance v10, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v10}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 533
    .local v10, ret:Landroid/app/enterprise/CertificateInfo;
    const/4 v3, 0x0

    .line 535
    .local v3, cf:Ljava/security/cert/CertificateFactory;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 536
    if-nez p1, :cond_0

    .line 537
    const/4 v10, 0x0

    .line 593
    .end local v10           #ret:Landroid/app/enterprise/CertificateInfo;
    :goto_0
    return-object v10

    .line 540
    .restart local v10       #ret:Landroid/app/enterprise/CertificateInfo;
    :cond_0
    :try_start_0
    const-string v13, "X.509"

    invoke-static {v13}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 547
    .local v11, token:J
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USRCERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/security/KeyStore;->cert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, pem_cert:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 549
    if-nez v8, :cond_1

    .line 550
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CACERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/security/KeyStore;->cert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 551
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 554
    :cond_1
    if-nez v8, :cond_2

    .line 555
    const/4 v10, 0x0

    goto :goto_0

    .line 541
    .end local v8           #pem_cert:Ljava/lang/String;
    .end local v11           #token:J
    :catch_0
    move-exception v4

    .line 542
    .local v4, e:Ljava/security/cert/CertificateException;
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error getting CertificateFactory instance"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v10, 0x0

    goto :goto_0

    .line 558
    .end local v4           #e:Ljava/security/cert/CertificateException;
    .restart local v8       #pem_cert:Ljava/lang/String;
    .restart local v11       #token:J
    :cond_2
    const/4 v2, 0x0

    .line 560
    .local v2, cert:Ljava/security/cert/X509Certificate;
    :try_start_1
    new-instance v13, Ljava/io/ByteArrayInputStream;

    const-string v14, "UTF-8"

    invoke-virtual {v8, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v13}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    :goto_1
    if-eqz v2, :cond_4

    .line 567
    invoke-virtual {v10, v2}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 568
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USRPKEY_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    .line 569
    .local v7, pemKey:[B
    if-eqz v7, :cond_4

    .line 570
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 571
    .local v1, bai:Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 572
    .local v5, isr:Ljava/io/InputStreamReader;
    new-instance v9, Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct {v9, v5}, Lcom/android/org/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;)V

    .line 574
    .local v9, r:Lcom/android/org/bouncycastle/openssl/PEMReader;
    const/4 v6, 0x0

    .line 575
    .local v6, key:Ljava/security/KeyPair;
    if-eqz v9, :cond_3

    .line 576
    :try_start_2
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/openssl/PEMReader;->readObject()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/security/KeyPair;

    move-object v6, v0

    .line 577
    if-eqz v6, :cond_3

    .line 578
    invoke-virtual {v6}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/app/enterprise/CertificateInfo;->setPrivateKey(Ljava/security/Key;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 584
    :cond_3
    if-eqz v9, :cond_4

    .line 585
    :try_start_3
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/openssl/PEMReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 592
    .end local v1           #bai:Ljava/io/ByteArrayInputStream;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .end local v6           #key:Ljava/security/KeyPair;
    .end local v7           #pemKey:[B
    .end local v9           #r:Lcom/android/org/bouncycastle/openssl/PEMReader;
    :cond_4
    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 562
    :catch_1
    move-exception v4

    .line 563
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception reading certificate"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 580
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #bai:Ljava/io/ByteArrayInputStream;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    .restart local v6       #key:Ljava/security/KeyPair;
    .restart local v7       #pemKey:[B
    .restart local v9       #r:Lcom/android/org/bouncycastle/openssl/PEMReader;
    :catch_2
    move-exception v4

    .line 581
    .local v4, e:Ljava/io/IOException;
    :try_start_4
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception reading private key"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 584
    if-eqz v9, :cond_4

    .line 585
    :try_start_5
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/openssl/PEMReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 586
    :catch_3
    move-exception v4

    .line 587
    const-string v13, "SecurityPolicy"

    const-string v14, "Error closing cursor"

    :goto_3
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 583
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 584
    if-eqz v9, :cond_5

    .line 585
    :try_start_6
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/openssl/PEMReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 583
    :cond_5
    :goto_4
    throw v13

    .line 586
    :catch_4
    move-exception v4

    .line 587
    .restart local v4       #e:Ljava/io/IOException;
    const-string v14, "SecurityPolicy"

    const-string v15, "Error closing cursor"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 586
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 587
    .restart local v4       #e:Ljava/io/IOException;
    const-string v13, "SecurityPolicy"

    const-string v14, "Error closing cursor"

    goto :goto_3
.end method

.method public getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "type"
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
    .line 601
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 606
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, names:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 610
    .local v1, token:J
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    .end local v1           #token:J
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getInstalledCertificates()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 467
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v14, ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v5, 0x0

    .line 470
    .local v5, cf:Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 475
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v11, nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 478
    .local v15, token:J
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    const-string v18, "USRCERT_"

    invoke-virtual/range {v17 .. v18}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 479
    .local v12, names:[Ljava/lang/String;
    move-object v2, v12

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v10, v2, v7

    .line 480
    .local v10, name:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "USRCERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 471
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #names:[Ljava/lang/String;
    .end local v15           #token:J
    :catch_0
    move-exception v6

    .line 472
    .local v6, e:Ljava/security/cert/CertificateException;
    const-string v17, "SecurityPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error getting CertificateFactory instance"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v6           #e:Ljava/security/cert/CertificateException;
    :goto_1
    return-object v14

    .line 482
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12       #names:[Ljava/lang/String;
    .restart local v15       #token:J
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 483
    .restart local v10       #name:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/security/KeyStore;->cert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 484
    .local v13, pem_cert:Ljava/lang/String;
    const/4 v3, 0x0

    .line 486
    .local v3, cert:Ljava/security/cert/X509Certificate;
    :try_start_1
    new-instance v17, Ljava/io/ByteArrayInputStream;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    :goto_3
    if-eqz v3, :cond_1

    .line 492
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 493
    .local v4, certInfo:Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v4, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 494
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 488
    .end local v4           #certInfo:Landroid/app/enterprise/CertificateInfo;
    :catch_1
    move-exception v6

    .line 489
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "SecurityPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading certificate"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 498
    .end local v3           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #pem_cert:Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 501
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 503
    .local v8, keystoreAliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    const-string v18, "CACERT_"

    invoke-virtual/range {v17 .. v18}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 504
    move-object v2, v12

    array-length v9, v2

    const/4 v7, 0x0

    .local v7, i$:I
    :goto_4
    if-ge v7, v9, :cond_3

    aget-object v10, v2, v7

    .line 505
    .restart local v10       #name:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CACERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 507
    .end local v10           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 508
    .restart local v10       #name:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/security/KeyStore;->cert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 509
    .restart local v13       #pem_cert:Ljava/lang/String;
    const/4 v3, 0x0

    .line 511
    .restart local v3       #cert:Ljava/security/cert/X509Certificate;
    :try_start_2
    new-instance v17, Ljava/io/ByteArrayInputStream;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 516
    :goto_6
    if-eqz v3, :cond_4

    .line 517
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 518
    .restart local v4       #certInfo:Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v4, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 513
    .end local v4           #certInfo:Landroid/app/enterprise/CertificateInfo;
    :catch_2
    move-exception v6

    .line 514
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v17, "SecurityPolicy"

    const-string v18, "Exception reading certificate"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 524
    .end local v3           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #pem_cert:Ljava/lang/String;
    :cond_5
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1
.end method

.method public getSystemCertificates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 451
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v5, ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v1

    .line 454
    .local v1, aliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    .local v0, alias:Ljava/lang/String;
    new-instance v3, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v3}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 456
    .local v3, certInfo:Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v6, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 457
    .local v2, cert:Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 458
    invoke-virtual {v3, v2}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 459
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    .end local v0           #alias:Ljava/lang/String;
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #certInfo:Landroid/app/enterprise/CertificateInfo;
    :cond_1
    return-object v5
.end method

.method public installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "type"
    .parameter "value"
    .parameter "name"
    .parameter "password"

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 761
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 762
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 763
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 764
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v5, p2

    if-eqz v5, :cond_0

    if-nez p3, :cond_1

    .line 765
    :cond_0
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate : Invalid parameter(s)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v1, 0x0

    .line 782
    :goto_0
    return v1

    .line 768
    :cond_1
    const/4 v1, 0x0

    .line 769
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 771
    .local v2, token:J
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v5, v6, :cond_2

    .line 772
    new-instance v4, Lcom/android/server/enterprise/CertificateUtil;

    invoke-direct {v4}, Lcom/android/server/enterprise/CertificateUtil;-><init>()V

    .line 773
    .local v4, util:Lcom/android/server/enterprise/CertificateUtil;
    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/android/server/enterprise/CertificateUtil;->install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 781
    .end local v4           #util:Lcom/android/server/enterprise/CertificateUtil;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 775
    :cond_2
    :try_start_1
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate : KS not UNLOCKED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 776
    const/4 v1, 0x0

    goto :goto_1

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate EX: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 6
    .parameter "type"
    .parameter "value"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 175
    .local v2, token:J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 178
    iget-object v4, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    .end local v2           #token:J
    :cond_0
    return-void

    .line 179
    .restart local v2       #token:J
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityPolicy::installCertificateWithType() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installCertificatesFromSdCard()V
    .locals 6

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 193
    .local v2, token:J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    iget-object v4, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityPolicy::installCertificatesFromSdCard() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .locals 0
    .parameter "pair"

    .prologue
    .line 163
    return-void
.end method

.method public isExternalStorageEncrypted()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 435
    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SECURITY"

    const-string v5, "Security Policy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :try_start_0
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, dem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 441
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    invoke-virtual {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 446
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    :cond_0
    :goto_0
    return v2

    .line 441
    .restart local v0       #dem:Landroid/dirEncryption/DirEncryptionManager;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 443
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    :catch_0
    move-exception v1

    .line 444
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SecurityPolicy"

    const-string v4, "is External Storage Encrypted ?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 418
    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SECURITY"

    const-string v5, "Security Policy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 423
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 427
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SecurityPolicy"

    const-string v4, "is Internal Storage Encrypted ?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1069
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1074
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1082
    return-void
.end method

.method public powerOffDevice()V
    .locals 4

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 827
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 828
    .local v0, token:J
    const-string v2, "SecurityPolicy"

    const-string v3, "powerOffDevice():EDM power off device start..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 830
    iget-object v2, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 831
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 833
    return-void
.end method

.method public readFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 11
    .parameter "pathOrig"
    .parameter "output"

    .prologue
    const/4 v8, 0x0

    .line 1024
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 1026
    if-nez p2, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v8

    .line 1029
    :cond_1
    const/4 v2, 0x0

    .line 1030
    .local v2, fileStreamInp:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1033
    .local v4, fileStreamOut:Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v7, mFile:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 1036
    .end local v2           #fileStreamInp:Ljava/io/InputStream;
    .local v3, fileStreamInp:Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 1038
    .end local v4           #fileStreamOut:Ljava/io/OutputStream;
    .local v5, fileStreamOut:Ljava/io/OutputStream;
    const/16 v9, 0x800

    :try_start_2
    new-array v0, v9, [B

    .line 1040
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, length:I
    if-lez v6, :cond_3

    .line 1041
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1046
    .end local v0           #buffer:[B
    .end local v6           #length:I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5           #fileStreamOut:Ljava/io/OutputStream;
    .restart local v4       #fileStreamOut:Ljava/io/OutputStream;
    move-object v2, v3

    .line 1047
    .end local v3           #fileStreamInp:Ljava/io/InputStream;
    .end local v7           #mFile:Ljava/io/File;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #fileStreamInp:Ljava/io/InputStream;
    :goto_2
    :try_start_3
    const-string v9, "SecurityPolicy"

    const-string v10, "readFile IOException "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1051
    if-eqz v2, :cond_2

    .line 1052
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1057
    :cond_2
    :goto_3
    if-eqz v4, :cond_0

    .line 1058
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1059
    :catch_1
    move-exception v1

    .line 1060
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    .end local v2           #fileStreamInp:Ljava/io/InputStream;
    .end local v4           #fileStreamOut:Ljava/io/OutputStream;
    :goto_4
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1043
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v3       #fileStreamInp:Ljava/io/InputStream;
    .restart local v5       #fileStreamOut:Ljava/io/OutputStream;
    .restart local v6       #length:I
    .restart local v7       #mFile:Ljava/io/File;
    :cond_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1044
    const/4 v8, 0x1

    .line 1051
    if-eqz v3, :cond_4

    .line 1052
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1057
    :cond_4
    :goto_5
    if-eqz v5, :cond_0

    .line 1058
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 1059
    :catch_2
    move-exception v1

    .line 1060
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    goto :goto_4

    .line 1050
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fileStreamInp:Ljava/io/InputStream;
    .end local v5           #fileStreamOut:Ljava/io/OutputStream;
    .end local v6           #length:I
    .end local v7           #mFile:Ljava/io/File;
    .restart local v2       #fileStreamInp:Ljava/io/InputStream;
    .restart local v4       #fileStreamOut:Ljava/io/OutputStream;
    :catchall_0
    move-exception v8

    .line 1051
    :goto_6
    if-eqz v2, :cond_5

    .line 1052
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1057
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    .line 1058
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1050
    :cond_6
    :goto_8
    throw v8

    .line 1053
    :catch_3
    move-exception v1

    .line 1054
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1059
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 1060
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1053
    :catch_5
    move-exception v1

    .line 1054
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1053
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fileStreamInp:Ljava/io/InputStream;
    .end local v4           #fileStreamOut:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fileStreamInp:Ljava/io/InputStream;
    .restart local v5       #fileStreamOut:Ljava/io/OutputStream;
    .restart local v6       #length:I
    .restart local v7       #mFile:Ljava/io/File;
    :catch_6
    move-exception v1

    .line 1054
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1050
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #fileStreamOut:Ljava/io/OutputStream;
    .end local v6           #length:I
    .restart local v4       #fileStreamOut:Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #fileStreamInp:Ljava/io/InputStream;
    .restart local v2       #fileStreamInp:Ljava/io/InputStream;
    goto :goto_6

    .end local v2           #fileStreamInp:Ljava/io/InputStream;
    .end local v4           #fileStreamOut:Ljava/io/OutputStream;
    .restart local v3       #fileStreamInp:Ljava/io/InputStream;
    .restart local v5       #fileStreamOut:Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5           #fileStreamOut:Ljava/io/OutputStream;
    .restart local v4       #fileStreamOut:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #fileStreamInp:Ljava/io/InputStream;
    .restart local v2       #fileStreamInp:Ljava/io/InputStream;
    goto :goto_6

    .line 1046
    .end local v7           #mFile:Ljava/io/File;
    :catch_7
    move-exception v1

    goto :goto_2

    .end local v2           #fileStreamInp:Ljava/io/InputStream;
    .restart local v3       #fileStreamInp:Ljava/io/InputStream;
    .restart local v7       #mFile:Ljava/io/File;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #fileStreamInp:Ljava/io/InputStream;
    .restart local v2       #fileStreamInp:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public removeAccountsByType(Ljava/lang/String;)Z
    .locals 12
    .parameter "type"

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 837
    const/4 v7, 0x0

    .line 855
    :goto_0
    return v7

    .line 839
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 840
    const/4 v7, 0x1

    .line 841
    .local v7, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 843
    .local v8, token:J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 844
    .local v1, am:Landroid/accounts/AccountManager;
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 845
    .local v0, accs:[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    array-length v10, v0

    if-lez v10, :cond_1

    .line 846
    move-object v2, v0

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v5, v2, v4

    .line 847
    .local v5, item:Landroid/accounts/Account;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v10, v11}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 850
    .end local v0           #accs:[Landroid/accounts/Account;
    .end local v1           #am:Landroid/accounts/AccountManager;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #item:Landroid/accounts/Account;
    .end local v6           #len$:I
    :catch_0
    move-exception v3

    .line 851
    .local v3, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 852
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 854
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "key"
    .parameter "type"

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 637
    const/4 v6, 0x0

    .line 638
    .local v6, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 642
    .local v8, token:J
    :try_start_0
    const-string v10, "CACERT_"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 644
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->cert(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 645
    .local v5, pem_cert:Ljava/lang/String;
    const/4 v2, 0x0

    .line 646
    .local v2, cert:Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 648
    .local v3, cf:Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 654
    :try_start_2
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const-string v11, "UTF-8"

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 660
    :goto_0
    :try_start_3
    iget-object v10, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v10, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 661
    .local v1, alias:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 663
    :try_start_4
    iget-object v10, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v10, v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->deleteCertificateEntry(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 671
    .end local v1           #alias:Ljava/lang/String;
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #cf:Ljava/security/cert/CertificateFactory;
    .end local v5           #pem_cert:Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v6

    .line 675
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v6

    .line 676
    .end local v6           #ret:Z
    .local v7, ret:I
    :goto_3
    return v7

    .line 649
    .end local v7           #ret:I
    .restart local v2       #cert:Ljava/security/cert/X509Certificate;
    .restart local v3       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v5       #pem_cert:Ljava/lang/String;
    .restart local v6       #ret:Z
    :catch_0
    move-exception v4

    .line 650
    .local v4, e:Ljava/security/cert/CertificateException;
    :try_start_6
    const-string v10, "SecurityPolicy"

    const-string v11, "Error getting CertificateFactory instance"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v6

    .line 651
    .restart local v7       #ret:I
    goto :goto_3

    .line 656
    .end local v4           #e:Ljava/security/cert/CertificateException;
    .end local v7           #ret:I
    :catch_1
    move-exception v4

    .line 657
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "SecurityPolicy"

    const-string v11, "Exception reading certificate"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 672
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #cf:Ljava/security/cert/CertificateFactory;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #pem_cert:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 673
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v10, "SecurityPolicy"

    const-string v11, "removeCertificate EX: "

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 664
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #alias:Ljava/lang/String;
    .restart local v2       #cert:Ljava/security/cert/X509Certificate;
    .restart local v3       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v5       #pem_cert:Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 665
    .local v4, e:Ljava/security/cert/CertificateException;
    :try_start_7
    const-string v10, "SecurityPolicy"

    const-string v11, ""

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 666
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public resetCredentialStorage()Z
    .locals 9

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 719
    const/4 v1, 0x0

    .line 720
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 722
    .local v4, token:J
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/security/KeyStore;->reset()Z

    move-result v1

    .line 724
    new-instance v6, Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/SecurityPolicy;Lcom/android/server/enterprise/SecurityPolicy$1;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    .line 725
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const-wide/16 v6, 0xbb8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 726
    .local v3, taskRet:Z
    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v6

    sget-object v7, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 727
    and-int/2addr v1, v3

    .line 732
    .end local v2           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    .end local v3           #taskRet:Z
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    return v1

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "SecurityPolicy"

    const-string v7, "resetCredentialStorage EX: "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCredentialStoragePassword(Ljava/lang/String;)Z
    .locals 1
    .parameter "password"

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 11
    .parameter "isEncrypt"

    .prologue
    .line 370
    iget-object v8, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_SECURITY"

    const-string v10, "Misc Policy"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 374
    .local v6, token:J
    :try_start_0
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 375
    iget-object v8, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 377
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez p1, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 378
    const-string v8, "SecurityPolicy"

    const-string v9, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    return-void

    .line 381
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v8, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 382
    .local v0, dem:Landroid/dirEncryption/DirEncryptionManager;
    const/4 v8, 0x1

    if-ne p1, v8, :cond_3

    .line 383
    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x7

    invoke-virtual {v0, v8, v9, v10}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    .line 392
    :goto_1
    iget-object v8, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v9, "storage"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 393
    .local v5, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, status:Ljava/lang/String;
    const-string v8, "mounted_ro"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "mounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 397
    :cond_2
    const-string v8, "SecurityPolicy"

    const-string v9, "setExternalStorageEncryption : SDCard mounted"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    iget-object v8, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 406
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #status:Ljava/lang/String;
    .end local v5           #storageManager:Landroid/os/storage/StorageManager;
    :catch_0
    move-exception v2

    .line 407
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "SecurityPolicy"

    const-string v9, "is External Storage Encrypted?"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 409
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 387
    .restart local v0       #dem:Landroid/dirEncryption/DirEncryptionManager;
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    const/4 v8, 0x3

    const/4 v9, 0x5

    const/4 v10, 0x7

    :try_start_3
    invoke-virtual {v0, v8, v9, v10}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    goto :goto_1

    .line 404
    .restart local v4       #status:Ljava/lang/String;
    .restart local v5       #storageManager:Landroid/os/storage/StorageManager;
    :cond_4
    const-string v8, "SecurityPolicy"

    const-string v9, "setExternalStorageEncryption : SDCard not mounted"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 8
    .parameter "isEncrypt"

    .prologue
    .line 338
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_SECURITY"

    const-string v7, "Security Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 342
    .local v3, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 344
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez p1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    const-string v5, "SecurityPolicy"

    const-string v6, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    return-void

    .line 348
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/SecurityPolicy;->isInternalStorageEncrypted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 349
    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : Not encrypted"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 357
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v1

    .line 358
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "SecurityPolicy"

    const-string v6, "is Internal Storage Encrypted?"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 360
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 352
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :try_start_3
    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : Launching Encrption activity"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1078
    return-void
.end method

.method public unlockCredentialStorage(Ljava/lang/String;)Z
    .locals 8
    .parameter "password"

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 621
    const/4 v2, 0x0

    .line 622
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 624
    .local v3, token:J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 626
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    const/4 v2, 0x1

    .line 631
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    return v2

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unlockCredentialStorage EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
