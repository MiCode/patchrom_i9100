.class public final Landroid/app/LoadedApk;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$1;,
        Landroid/app/LoadedApk$ServiceDispatcher;,
        Landroid/app/LoadedApk$ReceiverDispatcher;,
        Landroid/app/LoadedApk$WarningContextClassLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadedApk"


# instance fields
.field private final mActivityThread:Landroid/app/ActivityThread;

.field private final mAppDir:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mBaseClassLoader:Ljava/lang/ClassLoader;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field mClientCount:I

.field public final mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field private final mDataDir:Ljava/lang/String;

.field private final mDataDirFile:Ljava/io/File;

.field private final mIncludeCode:Z

.field private final mLibDir:Ljava/lang/String;

.field final mPackageName:Ljava/lang/String;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResDir:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;

.field private final mSecurityViolation:Z

.field private final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedLibraries:[Ljava/lang/String;

.field private final mUnboundServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUnregisteredReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V
    .locals 4
    .parameter "activityThread"
    .parameter "aInfo"
    .parameter "compatInfo"
    .parameter "mainThread"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v1}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    .line 100
    iput v3, p0, Landroid/app/LoadedApk;->mClientCount:I

    .line 116
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 117
    iput-object p2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 118
    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 119
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 120
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 121
    .local v0, myUid:I
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_3

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 123
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v0}, Landroid/os/UserId;->isSameUser(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-static {v0}, Landroid/os/UserId;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager;->getDataDirForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 127
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    .line 128
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 130
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 132
    iput-boolean p6, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 133
    iput-boolean p7, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 134
    iget-object v1, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v1, p3}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 136
    iget-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 137
    sget-object v1, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v1, :cond_1

    .line 138
    invoke-static {p4}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 140
    sget-object v1, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p4}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p4, p3, v3}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Landroid/content/res/CompatibilityInfo;Z)Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 148
    :cond_1
    sget-object v1, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 149
    sget-object v1, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 151
    :cond_2
    return-void

    .line 121
    :cond_3
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "activityThread"
    .parameter "name"
    .parameter "systemContext"
    .parameter "info"
    .parameter "compatInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v0}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    .line 100
    iput v2, p0, Landroid/app/LoadedApk;->mClientCount:I

    .line 155
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 156
    if-eqz p4, :cond_0

    .end local p4
    :goto_0
    iput-object p4, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 157
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    .line 162
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 164
    iput-object v1, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 166
    iput-boolean v2, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 168
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 169
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 170
    iget-object v0, p0, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v0, p5}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 171
    return-void

    .line 156
    .restart local p4
    :cond_0
    new-instance p4, Landroid/content/pm/ApplicationInfo;

    .end local p4
    invoke-direct {p4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    goto :goto_0
.end method

.method private static combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "list1"
    .parameter "list2"

    .prologue
    const/16 v8, 0x3a

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x12c

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 223
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 225
    .local v2, first:Z
    if-eqz p0, :cond_1

    .line 226
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 227
    .local v6, s:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 228
    const/4 v2, 0x0

    .line 232
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 237
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 239
    .local v1, dupCheck:Z
    :goto_2
    if-eqz p1, :cond_5

    .line 240
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .line 241
    .restart local v6       #s:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-static {p0, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 240
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 237
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dupCheck:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 245
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dupCheck:Z
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #s:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 246
    const/4 v2, 0x0

    .line 250
    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 248
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 254
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "packageName"

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    const/4 v2, 0x0

    .line 207
    :goto_0
    return-object v2

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 207
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeJavaContextClassLoader()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 358
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 361
    .local v3, pm:Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v11

    invoke-interface {v3, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 377
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v9, :cond_1

    move v6, v7

    .line 378
    .local v6, sharedUserIdSet:Z
    :goto_0
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move v4, v7

    .line 381
    .local v4, processNameNotDefault:Z
    :goto_1
    if-nez v6, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    move v5, v7

    .line 382
    .local v5, sharable:Z
    :goto_2
    if-eqz v5, :cond_4

    new-instance v0, Landroid/app/LoadedApk$WarningContextClassLoader;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>(Landroid/app/LoadedApk$1;)V

    .line 386
    .local v0, contextClassLoader:Ljava/lang/ClassLoader;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 387
    return-void

    .line 362
    .end local v0           #contextClassLoader:Ljava/lang/ClassLoader;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #processNameNotDefault:Z
    .end local v5           #sharable:Z
    .end local v6           #sharedUserIdSet:Z
    :catch_0
    move-exception v1

    .line 363
    .local v1, e:Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    move v6, v8

    .line 377
    goto :goto_0

    .restart local v6       #sharedUserIdSet:Z
    :cond_2
    move v4, v8

    .line 378
    goto :goto_1

    .restart local v4       #processNameNotDefault:Z
    :cond_3
    move v5, v8

    .line 381
    goto :goto_2

    .line 382
    .restart local v5       #sharable:Z
    :cond_4
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_3
.end method


# virtual methods
.method public forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .locals 8
    .parameter "context"
    .parameter "r"

    .prologue
    .line 612
    iget-object v5, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    monitor-enter v5

    .line 613
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 614
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    const/4 v3, 0x0

    .line 615
    .local v3, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v2, :cond_3

    .line 616
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 617
    .restart local v3       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_3

    .line 618
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 620
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 623
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 625
    .local v1, holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-nez v1, :cond_1

    .line 626
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 627
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Originally unregistered here:"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 632
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    .line 633
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 636
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 639
    :cond_3
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 641
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v1, :cond_4

    .line 642
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 643
    .restart local v3       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_4

    .line 644
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 645
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistering Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unregistered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 657
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 650
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v3       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_4
    if-nez p1, :cond_5

    .line 651
    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 654
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;
    .locals 8
    .parameter "context"
    .parameter "c"

    .prologue
    .line 875
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    monitor-enter v5

    .line 876
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 878
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    const/4 v3, 0x0

    .line 879
    .local v3, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v2, :cond_3

    .line 880
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 881
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_3

    .line 882
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    .line 884
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 885
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 888
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 890
    .local v1, holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-nez v1, :cond_1

    .line 891
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 892
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Originally unbound here:"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 896
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 897
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    .line 898
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_2
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 903
    :cond_3
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 905
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_4

    .line 906
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 907
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_4

    .line 908
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 909
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unbound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 920
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 914
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_4
    if-nez p1, :cond_5

    .line 915
    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 918
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public getAppDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    return-object v0
.end method

.method getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;
    .locals 1
    .parameter "mainThread"

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 11

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_0

    .line 260
    iget-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    .line 330
    :goto_0
    return-object v9

    .line 263
    :cond_0
    iget-boolean v9, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const-string v10, "android"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 264
    iget-object v8, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 265
    .local v8, zip:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 276
    .local v6, libraryPath:Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v0, v9, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 278
    .local v0, instrumentationAppDir:Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, v9, Landroid/app/ActivityThread;->mInstrumentationAppLibraryDir:Ljava/lang/String;

    .line 280
    .local v1, instrumentationAppLibraryDir:Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v2, v9, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 282
    .local v2, instrumentationAppPackage:Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v4, v9, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 284
    .local v4, instrumentedAppDir:Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v9, Landroid/app/ActivityThread;->mInstrumentedAppLibraryDir:Ljava/lang/String;

    .line 286
    .local v5, instrumentedAppLibraryDir:Ljava/lang/String;
    const/4 v3, 0x0

    .line 288
    .local v3, instrumentationLibs:[Ljava/lang/String;
    iget-object v9, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 290
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 291
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 292
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 293
    invoke-static {v2}, Landroid/app/LoadedApk;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 298
    :cond_2
    iget-object v9, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    if-nez v9, :cond_3

    if-eqz v3, :cond_4

    .line 300
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    invoke-static {v10, v3}, Landroid/app/LoadedApk;->combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 315
    :cond_4
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 317
    .local v7, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v9

    iget-object v10, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v9, v8, v6, v10}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v9

    iput-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 320
    invoke-direct {p0}, Landroid/app/LoadedApk;->initializeJavaContextClassLoader()V

    .line 322
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 330
    .end local v0           #instrumentationAppDir:Ljava/lang/String;
    .end local v1           #instrumentationAppLibraryDir:Ljava/lang/String;
    .end local v2           #instrumentationAppPackage:Ljava/lang/String;
    .end local v3           #instrumentationLibs:[Ljava/lang/String;
    .end local v4           #instrumentedAppDir:Ljava/lang/String;
    .end local v5           #instrumentedAppLibraryDir:Ljava/lang/String;
    .end local v6           #libraryPath:Ljava/lang/String;
    .end local v7           #oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    .end local v8           #zip:Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    goto/16 :goto_0

    .line 331
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 324
    :cond_5
    :try_start_1
    iget-object v9, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    if-nez v9, :cond_6

    .line 325
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    iput-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 327
    :cond_6
    iget-object v9, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iput-object v9, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDirFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public getLibDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;
    .locals 11
    .parameter "r"
    .parameter "context"
    .parameter "handler"
    .parameter "instrumentation"
    .parameter "registered"

    .prologue
    .line 583
    iget-object v10, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    monitor-enter v10

    .line 584
    const/4 v1, 0x0

    .line 585
    .local v1, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    const/4 v7, 0x0

    .line 586
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz p5, :cond_3

    .line 587
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v7, v0

    .line 588
    if-eqz v7, :cond_3

    .line 589
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    .line 592
    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .local v9, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    if-nez v9, :cond_0

    .line 593
    :try_start_1
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 595
    .end local v9           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz p5, :cond_2

    .line 596
    if-nez v8, :cond_1

    .line 597
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 598
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :try_start_3
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :goto_1
    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 606
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v2

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2

    .line 603
    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    :try_start_4
    invoke-virtual {v9, p2, p3}, Landroid/app/LoadedApk$ReceiverDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_2

    .line 607
    :catchall_0
    move-exception v2

    :goto_3
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_3

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_2
    move-exception v2

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_3

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_1
    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_1

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_2

    :cond_3
    move-object v8, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    .end local v1           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v9       #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_0
.end method

.method public getResDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method public getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;
    .locals 1
    .parameter "mainThread"

    .prologue
    .line 473
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;
    .locals 6
    .parameter "c"
    .parameter "context"
    .parameter "handler"
    .parameter "flags"

    .prologue
    .line 853
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    monitor-enter v5

    .line 854
    const/4 v2, 0x0

    .line 855
    .local v2, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 856
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_2

    .line 857
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 859
    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .local v3, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :goto_0
    if-nez v3, :cond_1

    .line 860
    :try_start_1
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 861
    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    if-nez v1, :cond_0

    .line 862
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 863
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :cond_0
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    :goto_1
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 867
    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_1
    :try_start_3
    invoke-virtual {v3, p2, p3}, Landroid/app/LoadedApk$ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_1

    .line 870
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_2

    :cond_2
    move-object v3, v2

    .end local v2           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_0
.end method

.method public isSecurityViolation()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    return v0
.end method

.method public makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 8
    .parameter "forceDefaultAppClass"
    .parameter "instrumentation"

    .prologue
    .line 481
    iget-object v5, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    if-eqz v5, :cond_1

    .line 482
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 521
    :cond_0
    :goto_0
    return-object v0

    .line 485
    :cond_1
    const/4 v0, 0x0

    .line 487
    .local v0, app:Landroid/app/Application;
    iget-object v5, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 488
    .local v1, appClass:Ljava/lang/String;
    if-nez p1, :cond_2

    if-nez v1, :cond_3

    .line 489
    :cond_2
    const-string v1, "android.app.Application"

    .line 493
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 494
    .local v3, cl:Ljava/lang/ClassLoader;
    new-instance v2, Landroid/app/ContextImpl;

    invoke-direct {v2}, Landroid/app/ContextImpl;-><init>()V

    .line 495
    .local v2, appContext:Landroid/app/ContextImpl;
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, p0, v5, v6}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 496
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v3, v1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 498
    invoke-virtual {v2, v0}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 506
    .end local v2           #appContext:Landroid/app/ContextImpl;
    .end local v3           #cl:Ljava/lang/ClassLoader;
    :cond_4
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iput-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 509
    if-eqz p2, :cond_0

    .line 511
    :try_start_1
    invoke-virtual {p2, v0}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v4

    .line 513
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {p2, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 514
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 499
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 500
    .restart local v4       #e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 501
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 526
    invoke-static {}, Landroid/os/StrictMode;->vmRegistrationLeaksEnabled()Z

    move-result v4

    .line 527
    .local v4, reportRegistrationLeaks:Z
    iget-object v8, p0, Landroid/app/LoadedApk;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 529
    .local v5, rmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v5, :cond_1

    .line 530
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 531
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 532
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 533
    .local v3, rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    new-instance v2, Landroid/app/IntentReceiverLeaked;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has leaked IntentReceiver "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " that was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "originally registered here. Are you missing a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "call to unregisterReceiver()?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    .line 538
    .local v2, leak:Landroid/app/IntentReceiverLeaked;
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getLocation()Landroid/app/IntentReceiverLeaked;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/IntentReceiverLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/IntentReceiverLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 539
    const-string v8, "ActivityThread"

    invoke-virtual {v2}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    if-eqz v4, :cond_0

    .line 541
    invoke-static {v2}, Landroid/os/StrictMode;->onIntentReceiverLeaked(Ljava/lang/Throwable;)V

    .line 544
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v8

    goto :goto_0

    .line 551
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2           #leak:Landroid/app/IntentReceiverLeaked;
    .end local v3           #rd:Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_1
    iget-object v8, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v8, p0, Landroid/app/LoadedApk;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 555
    .local v7, smap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v7, :cond_3

    .line 556
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 557
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 558
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 559
    .local v6, sd:Landroid/app/LoadedApk$ServiceDispatcher;
    new-instance v2, Landroid/app/ServiceConnectionLeaked;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has leaked ServiceConnection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/app/LoadedApk$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " that was originally bound here"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    .line 562
    .local v2, leak:Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v6}, Landroid/app/LoadedApk$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 563
    const-string v8, "ActivityThread"

    invoke-virtual {v2}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    if-eqz v4, :cond_2

    .line 565
    invoke-static {v2}, Landroid/os/StrictMode;->onServiceConnectionLeaked(Ljava/lang/Throwable;)V

    .line 568
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-virtual {v6}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    :goto_2
    invoke-virtual {v6}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    goto :goto_1

    .line 576
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2           #leak:Landroid/app/ServiceConnectionLeaked;
    .end local v6           #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_3
    iget-object v8, p0, Landroid/app/LoadedApk;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    return-void

    .line 570
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2       #leak:Landroid/app/ServiceConnectionLeaked;
    .restart local v6       #sd:Landroid/app/LoadedApk$ServiceDispatcher;
    :catch_1
    move-exception v8

    goto :goto_2
.end method
