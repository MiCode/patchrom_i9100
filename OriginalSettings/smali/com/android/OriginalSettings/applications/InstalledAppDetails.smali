.class public Lcom/android/OriginalSettings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field static mUninstallLockPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallLockPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 88
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 106
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 130
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 131
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 132
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 133
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 134
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 135
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 136
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 166
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 848
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 883
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 866
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 881
    :goto_0
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 872
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 874
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 876
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 878
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 839
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 840
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 841
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 842
    .local v1, newEnt:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 843
    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 845
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 846
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 253
    const-string v0, ""

    :goto_0
    return-object v0

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0497

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0498

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 245
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0499

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b049a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b049b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPackageList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1001
    const/4 v1, 0x0

    .line 1003
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageList() configFilename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    if-nez p2, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 1011
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_3

    .line 1014
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1016
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1017
    :cond_2
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configFilename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1025
    :catch_0
    move-exception v1

    .line 1026
    :goto_1
    :try_start_2
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There has no files. :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1032
    if-eqz v0, :cond_0

    .line 1034
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1035
    :catch_1
    move-exception v0

    .line 1036
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1021
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1022
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1028
    :catch_2
    move-exception v1

    .line 1029
    :goto_3
    :try_start_5
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There has IOException. :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1032
    if-eqz v0, :cond_0

    .line 1034
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 1035
    :catch_3
    move-exception v0

    .line 1036
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1032
    :cond_4
    if-eqz v0, :cond_0

    .line 1034
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 1035
    :catch_4
    move-exception v0

    .line 1036
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1032
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_5

    .line 1034
    :try_start_8
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1037
    :cond_5
    :goto_5
    throw v0

    .line 1035
    :catch_5
    move-exception v1

    .line 1036
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1032
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    .line 1028
    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_3

    .line 1025
    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 214
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0b046a

    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 236
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0b0477

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 234
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 257
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    .line 262
    .local v0, dataOnly:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_1

    move v0, v2

    .line 263
    :goto_1
    const/4 v1, 0x1

    .line 264
    .local v1, moveDisable:Z
    if-eqz v0, :cond_2

    .line 265
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0b0493

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 275
    :goto_2
    if-eqz v1, :cond_5

    .line 276
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #moveDisable:Z
    :cond_1
    move v0, v3

    .line 262
    goto :goto_1

    .line 266
    .restart local v1       #moveDisable:Z
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 267
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0b0494

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 269
    const/4 v1, 0x0

    goto :goto_2

    .line 271
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0b0495

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 272
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->init()V

    .line 273
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    .line 278
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 284
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 285
    const/4 v1, 0x1

    .line 286
    .local v1, enabled:Z
    iget-boolean v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v6, :cond_4

    .line 287
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v7, 0x7f0b046b

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 324
    :goto_0
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    const/4 v1, 0x0

    .line 330
    :cond_1
    sget-object v6, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallLockPackages:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getUninstallLockPackageList()Ljava/util/ArrayList;

    move-result-object v6

    sput-object v6, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallLockPackages:Ljava/util/ArrayList;

    .line 333
    :cond_2
    const-string v6, "InstalledAppDetails"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Application package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v6, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallLockPackages:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    .line 336
    const/4 v3, 0x0

    .local v3, idxPackage:I
    :goto_1
    sget-object v6, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallLockPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 338
    const-string v7, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packages = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v6, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallLockPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v6, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallLockPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 340
    const/4 v1, 0x0

    .line 336
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 289
    .end local v3           #idxPackage:I
    :cond_4
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    .line 290
    const/4 v1, 0x0

    .line 296
    :try_start_0
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v7, "android"

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 298
    .local v5, sys:Landroid/content/pm/PackageInfo;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 302
    .local v2, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_7

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 306
    :cond_6
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v7, 0x7f0b0468

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 314
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "InstalledAppDetails"

    const-string v7, "Unable to get package info"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 307
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #sys:Landroid/content/pm/PackageInfo;
    :cond_7
    :try_start_1
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_8

    .line 308
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v7, 0x7f0b0468

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 309
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 311
    :cond_8
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v7, 0x7f0b0469

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 319
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #sys:Landroid/content/pm/PackageInfo;
    :cond_9
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v7, 0x7f0b0467

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 346
    :cond_a
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.samsung.swift.app.kiesair"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.infraware.polarisoffice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.vlingo.client.samsung"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.swype.android.inputmethod"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sec.android.im"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 352
    :cond_b
    const/4 v1, 0x0

    .line 355
    :cond_c
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 356
    if-eqz v1, :cond_d

    .line 358
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :cond_d
    return-void
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 684
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 686
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 687
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 689
    new-instance v3, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 693
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 694
    .local v2, res:Z
    if-nez v2, :cond_1

    .line 696
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0b0482

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 640
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 641
    .local v1, result:I
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 642
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0b046a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 643
    if-ne v1, v4, :cond_0

    .line 644
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 649
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 650
    return-void

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 665
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 666
    .local v1, result:I
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 668
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 669
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 670
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 676
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 677
    return-void

    .line 674
    :cond_0
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 655
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 656
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 662
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0b0496

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 659
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 660
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 581
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 583
    :cond_0
    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 584
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 633
    :goto_0
    return-void

    .line 594
    :cond_2
    iput-boolean v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 595
    iget-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iput-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 597
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    :cond_3
    iget-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 600
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iput-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 601
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    :cond_4
    iget-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 604
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 605
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :cond_5
    iget-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 608
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iput-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 609
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    :cond_6
    iget-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 612
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iput-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 613
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    :cond_7
    iget-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 616
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 617
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v0, :cond_a

    .line 621
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 626
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_b

    .line 627
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 623
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 624
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 629
    :cond_b
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 17

    .prologue
    .line 481
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-eqz v14, :cond_0

    .line 482
    const/4 v14, 0x1

    .line 569
    :goto_0
    return v14

    .line 484
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 485
    .local v2, args:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    const-string v14, "package"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, packageName:Ljava/lang/String;
    :goto_1
    if-nez v10, :cond_1

    .line 487
    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 489
    .local v8, intent:Landroid/content/Intent;
    :goto_2
    if-eqz v8, :cond_1

    .line 490
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 493
    .end local v8           #intent:Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v14, v10}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-nez v14, :cond_4

    .line 496
    const/4 v14, 0x0

    goto :goto_0

    .line 485
    .end local v10           #packageName:Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 487
    .restart local v10       #packageName:Ljava/lang/String;
    :cond_3
    const-string v14, "intent"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    move-object v8, v14

    goto :goto_2

    .line 501
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v15, v15, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x2240

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v12, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v9, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v9, v12, v10}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 517
    const/4 v7, 0x0

    .line 519
    .local v7, hasUsbDefaults:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v14, v10}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 523
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v15, 0x7f0800b9

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 524
    .local v4, autoLaunchView:Landroid/widget/TextView;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-gtz v14, :cond_5

    if-nez v7, :cond_5

    .line 526
    const v14, 0x7f0b046d

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(I)V

    .line 527
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 535
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 537
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v1, v10}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v5

    .line 548
    .local v5, compatMode:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v15, 0x7f0800be

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 553
    .local v11, permsView:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v3, v14, v10}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 554
    .local v3, asp:Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v3}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v14

    if-lez v14, :cond_6

    .line 555
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    const v14, 0x7f0800bf

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 559
    .local v13, securityList:Landroid/widget/LinearLayout;
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 560
    invoke-virtual {v3}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    .end local v13           #securityList:Landroid/widget/LinearLayout;
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 568
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 569
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 505
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v3           #asp:Landroid/widget/AppSecurityPermissions;
    .end local v4           #autoLaunchView:Landroid/widget/TextView;
    .end local v5           #compatMode:I
    .end local v7           #hasUsbDefaults:Z
    .end local v9           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v11           #permsView:Landroid/widget/LinearLayout;
    .end local v12           #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v6

    .line 506
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "InstalledAppDetails"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception when retrieving package:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 520
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #hasUsbDefaults:Z
    .restart local v9       #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v12       #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v6

    .line 521
    .local v6, e:Landroid/os/RemoteException;
    const-string v14, "InstalledAppDetails"

    const-string v15, "mUsbManager.hasDefaults"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 529
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v4       #autoLaunchView:Landroid/widget/TextView;
    :cond_5
    const v14, 0x7f0b046c

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 531
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 562
    .restart local v1       #am:Landroid/app/ActivityManager;
    .restart local v3       #asp:Landroid/widget/AppSecurityPermissions;
    .restart local v5       #compatMode:I
    .restart local v11       #permsView:Landroid/widget/LinearLayout;
    :cond_6
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .parameter "pkgInfo"

    .prologue
    const/4 v8, 0x0

    .line 417
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f0800a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 418
    .local v0, appSnippet:Landroid/view/View;
    const v3, 0x7f080004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 419
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/applications/ApplicationsState;->ensureIcon(Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;)V

    .line 420
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    const v3, 0x7f0800f8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 423
    .local v2, label:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    const v3, 0x7f0800f9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 427
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0492

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter "finish"
    .parameter "appChanged"

    .prologue
    .line 574
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmiui/preference/BasePreferenceActivity;

    .line 577
    .local v1, pa:Lmiui/preference/BasePreferenceActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lmiui/preference/BasePreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 578
    return-void
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter "id"
    .parameter "moveErrorCode"

    .prologue
    .line 704
    invoke-static {p1, p2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 705
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 706
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 831
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 832
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 833
    invoke-direct {p0, v3, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 834
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 862
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    return-void
.end method


# virtual methods
.method public getUninstallLockPackageList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 982
    const-string v0, "/system/etc/uninstall_lock_packages.txt"

    .line 983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 985
    const-string v1, "/system/etc/uninstall_lock_packages.txt"

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getPackageList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 987
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 988
    :cond_0
    const-string v0, "InstalledAppDetails"

    const-string v1, "There\'s no information"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v0, 0x0

    .line 992
    :cond_1
    return-object v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 965
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 966
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 968
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_1

    .line 969
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_0

    .line 971
    if-eqz p2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 908
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 909
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_4

    .line 910
    iget-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_1

    .line 911
    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 914
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 915
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 917
    :cond_2
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 922
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_0

    .line 925
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 926
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    const-string v1, "InstalledAppDetails"

    const-string v2, "mUsbManager.clearDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 933
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 934
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 935
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 940
    :cond_6
    invoke-direct {p0, v1, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 942
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 944
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_8

    .line 945
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 947
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 948
    :cond_9
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    .line 949
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 951
    :cond_a
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 952
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_b

    .line 953
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 955
    :cond_b
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    move v0, v1

    .line 957
    :cond_c
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 958
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 959
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    .line 368
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 369
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 370
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 371
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 373
    new-instance v1, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    .line 374
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0801d7

    const v5, 0x7f0801d6

    .line 378
    const v3, 0x7f040047

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 380
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b048f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 383
    const v3, 0x7f0800a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 384
    const v3, 0x7f0800ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 385
    const v3, 0x7f0800b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 386
    const v3, 0x7f0800ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 387
    const v3, 0x7f0800b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 390
    const v3, 0x7f0800a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 392
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v4, 0x7f0b0461

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 393
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 394
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 397
    const v3, 0x7f0800b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 398
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 399
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 402
    const v3, 0x7f0800b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 403
    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 405
    const v3, 0x7f0800ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 408
    const v3, 0x7f0800bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 409
    const v3, 0x7f0800bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 410
    const v3, 0x7f0800bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 412
    return-object v2
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 463
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 474
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 449
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->pause()V

    .line 450
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 438
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 440
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->resume(Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;)V

    .line 441
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-direct {p0, v1, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 444
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 478
    return-void
.end method
