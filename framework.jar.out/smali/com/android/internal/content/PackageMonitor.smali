.class public abstract Lcom/android/internal/content/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# static fields
.field public static final PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final PACKAGE_UNCHANGED:I = 0x0

.field public static final PACKAGE_UPDATING:I = 0x1

.field static sBackgroundHandler:Landroid/os/Handler;

.field static sBackgroundThread:Landroid/os/HandlerThread;

.field static final sExternalFilt:Landroid/content/IntentFilter;

.field static final sLock:Ljava/lang/Object;

.field static final sNonDataFilt:Landroid/content/IntentFilter;

.field static final sPackageFilt:Landroid/content/IntentFilter;


# instance fields
.field mAppearingPackages:[Ljava/lang/String;

.field mChangeType:I

.field mDisappearingPackages:[Ljava/lang/String;

.field mModifiedPackages:[Ljava/lang/String;

.field mRegisteredContext:Landroid/content/Context;

.field mRegisteredHandler:Landroid/os/Handler;

.field mSomePackagesChanged:Z

.field mTempArray:[Ljava/lang/String;

.field final mUpdatingPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sLock:Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public anyPackagesAppearing()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyPackagesDisappearing()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didSomePackagesChange()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    return v0
.end method

.method getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 210
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, pkg:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 210
    .end local v0           #pkg:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRegisteredHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isPackageAppearing(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 169
    .end local v0           #i:I
    :goto_1
    return v1

    .line 163
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 169
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPackageDisappearing(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 184
    .end local v0           #i:I
    :goto_1
    return v1

    .line 178
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 184
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPackageModified(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x1

    .line 199
    .end local v0           #i:I
    :goto_1
    return v1

    .line 193
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method isPackageUpdating(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBeginPackageChanges()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onFinishPackageChanges()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 116
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 152
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"
    .parameter "components"

    .prologue
    .line 128
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 149
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 155
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 119
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 125
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 122
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packages"

    .prologue
    .line 138
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packages"

    .prologue
    .line 141
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    .line 218
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 219
    iput-boolean v9, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 223
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, pkg:Ljava/lang/String;
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 228
    .local v6, uid:I
    iput-boolean v10, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 229
    if-eqz v4, :cond_0

    .line 230
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 231
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v4, v7, v9

    .line 232
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 233
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 234
    iput v10, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 235
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 236
    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 241
    :goto_0
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 242
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    if-ne v7, v10, :cond_0

    .line 243
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v8

    .line 244
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 245
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    .end local v4           #pkg:Ljava/lang/String;
    .end local v6           #uid:I
    :cond_0
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v7, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    .line 327
    return-void

    .line 238
    .restart local v4       #pkg:Ljava/lang/String;
    .restart local v6       #uid:I
    :cond_2
    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 239
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 248
    .end local v4           #pkg:Ljava/lang/String;
    .end local v6           #uid:I
    :cond_3
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 249
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .restart local v4       #pkg:Ljava/lang/String;
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 251
    .restart local v6       #uid:I
    if-eqz v4, :cond_0

    .line 252
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 253
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v4, v7, v9

    .line 254
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 255
    iput v10, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 256
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v8

    .line 259
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    .line 269
    :goto_2
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    goto :goto_1

    .line 259
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 262
    :cond_4
    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 266
    iput-boolean v10, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 267
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    goto :goto_2

    .line 271
    .end local v4           #pkg:Ljava/lang/String;
    .end local v6           #uid:I
    :cond_5
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 272
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .restart local v4       #pkg:Ljava/lang/String;
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 274
    .restart local v6       #uid:I
    const-string v7, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, components:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 277
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 278
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v4, v7, v9

    .line 279
    invoke-virtual {p0, v4, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    goto :goto_1

    .line 284
    .end local v2           #components:[Ljava/lang/String;
    .end local v4           #pkg:Ljava/lang/String;
    .end local v6           #uid:I
    :cond_6
    const-string v7, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 285
    const-string v7, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 286
    iput v11, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 287
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    const-string v8, "android.intent.extra.UID"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, p2, v7, v8, v9}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v1

    .line 290
    .local v1, canRestart:Z
    if-eqz v1, :cond_0

    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    goto/16 :goto_1

    .line 291
    .end local v1           #canRestart:Z
    :cond_7
    const-string v7, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 292
    new-array v7, v10, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 293
    iput v11, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 294
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    const-string v8, "android.intent.extra.UID"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, p2, v7, v8, v10}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    goto/16 :goto_1

    .line 296
    :cond_8
    const-string v7, "android.intent.action.UID_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 297
    const-string v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    goto/16 :goto_1

    .line 298
    :cond_9
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 299
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, pkgList:[Ljava/lang/String;
    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 301
    iput v11, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 302
    iput-boolean v10, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 303
    if-eqz v5, :cond_0

    .line 304
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 305
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 306
    aget-object v7, v5, v3

    invoke-virtual {p0, v7, v11}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 309
    .end local v3           #i:I
    .end local v5           #pkgList:[Ljava/lang/String;
    :cond_a
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 311
    .restart local v5       #pkgList:[Ljava/lang/String;
    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 312
    iput v11, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 313
    iput-boolean v10, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 314
    if-eqz v5, :cond_0

    .line 315
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 316
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 317
    aget-object v7, v5, v3

    invoke-virtual {p0, v7, v11}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 135
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 5
    .parameter "context"
    .parameter "thread"
    .parameter "externalStorage"

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 73
    if-nez p2, :cond_3

    .line 74
    sget-object v1, Lcom/android/internal/content/PackageMonitor;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "PackageMonitor"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 78
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/android/internal/content/PackageMonitor;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sBackgroundHandler:Landroid/os/Handler;

    .line 81
    :cond_1
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sBackgroundHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    if-eqz p3, :cond_2

    .line 89
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 91
    :cond_2
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 84
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public register(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "externalStorage"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 103
    return-void
.end method
