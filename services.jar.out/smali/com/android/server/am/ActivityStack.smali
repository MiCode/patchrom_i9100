.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$CpuBooster;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_MULTIWINDOW:Z = false

.field static final DEBUG_PAUSE:Z = false

.field static final DEBUG_RESULTS:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_SWITCH:Z = false

.field static final DEBUG_TASKS:Z = false

.field static final DEBUG_TRANSITION:Z = false

.field static final DEBUG_USER_LEAVING:Z = false

.field static final DEBUG_VISBILITY:Z = false

.field static final DESTROY_ACTIVITIES_MSG:I = 0x6d

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x69

.field private static final FINISH_AFTER_PAUSE:I = 0x1

.field private static final FINISH_AFTER_VISIBLE:I = 0x2

.field private static final FINISH_IMMEDIATELY:I = 0x0

.field static final IDLE_NOW_MSG:I = 0x67

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x66

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x6b

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x6a

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x64

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x6c

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_TOKENS:Z

.field static final localLOGV:Z


# instance fields
.field mConfigWillChange:Z

.field final mContext:Landroid/content/Context;

.field private mCpuBooster:Lcom/android/server/am/ActivityStack$CpuBooster;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mCurrentUser:I

.field mDismissKeyguardOnNextActivity:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mInitialStartTime:J

.field final mIsMultiWindowEnabled:Z

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mMainStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field mSplitZoneInfo:Z

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnailHeight:I

.field mThumbnailWidth:I

.field mUserLeaving:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Z)V
    .locals 6
    .parameter "service"
    .parameter "context"
    .parameter "mainStack"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    iput v4, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    iput v4, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    new-instance v1, Lcom/android/server/am/ActivityStack$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityStack$1;-><init>(Lcom/android/server/am/ActivityStack;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mCpuBooster:Lcom/android/server/am/ActivityStack$CpuBooster;

    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 454
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 455
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->initCpuBooster()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    .line 460
    return-void
.end method

.method private applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 5
    .parameter "target"
    .parameter "newTask"

    .prologue
    const/high16 v4, 0x20

    .line 1572
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    .line 1573
    const-string v2, "android"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1574
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_2

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1579
    :cond_1
    if-nez p2, :cond_2

    .line 1580
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1581
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, v3, :cond_4

    .line 1582
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget v2, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    .line 1583
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v3, -0x200001

    and-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1591
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #i:I
    :goto_2
    if-ltz v0, :cond_0

    .line 1592
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1593
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v3, :cond_5

    .line 1594
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v3, 0x23e000

    and-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1595
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v3, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v4, -0x23e001

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_0

    .line 1580
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1591
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .locals 10
    .parameter "sr"
    .parameter "intent"

    .prologue
    .line 6356
    const-string v6, ""

    .line 6357
    .local v6, simNum:Ljava/lang/String;
    const-string v3, ""

    .line 6359
    .local v3, imsi:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 6361
    .local v7, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v7, :cond_1

    .line 6362
    const/4 v0, 0x0

    .line 6396
    :cond_0
    :goto_0
    return v0

    .line 6365
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 6367
    if-eqz v3, :cond_2

    .line 6368
    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 6371
    :cond_2
    const/4 v0, 0x0

    .line 6373
    .local v0, checkFlag:Z
    const-string v8, "46001"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6374
    const/4 v8, 0x5

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.android.wo3g"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "com.infinit.wostore.ui"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "com.sinovatech.unicom.ui"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "com.unicom116114"

    aput-object v9, v5, v8

    const/4 v8, 0x4

    const-string v9, "com.neusoft.td.android.wo116114"

    aput-object v9, v5, v8

    .line 6375
    .local v5, packages:[Ljava/lang/String;
    const/4 v8, 0x5

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.android.wo3g.wo3g"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "com.infinit.wostore.ui.ZBeginActivity"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "com.sinovatech.unicom.ui.WelcomeClient"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "com.unicom116114.Unicom116114"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string v9, "com.neusoft.td.android.wo116114.activity.WelcomeActivity"

    aput-object v9, v1, v8

    .line 6377
    .local v1, classes:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 6380
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6381
    .local v4, in:Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 6382
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 6383
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6387
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 6388
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v1

    if-ge v2, v8, :cond_0

    .line 6389
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6390
    const/4 v0, 0x1

    .line 6391
    goto/16 :goto_0

    .line 6388
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private checkSplitState()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 6304
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6305
    .local v0, N:I
    const/4 v2, 0x0

    .line 6307
    .local v2, obscuredMask:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 6308
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 6310
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v5, :cond_1

    .line 6323
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_1
    return v4

    .line 6314
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x8

    and-int/2addr v5, v6

    if-nez v5, :cond_2

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-nez v5, :cond_2

    .line 6316
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    .line 6317
    const/16 v5, 0x1e

    if-ne v2, v5, :cond_2

    .line 6318
    const/4 v4, 0x1

    goto :goto_1

    .line 6307
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private final completePauseLocked()V
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1382
    return-void
.end method

.method private final completePauseLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 13
    .parameter "prev"

    .prologue
    .line 1387
    if-eqz p1, :cond_0

    .line 1388
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_6

    .line 1391
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v7}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    const/high16 v8, 0x200

    if-ne v7, v8, :cond_5

    .line 1392
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 1438
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v7, :cond_c

    .line 1439
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v7, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1446
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1447
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1457
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 1458
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1461
    :cond_2
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_4

    iget-wide v7, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1463
    const-wide/16 v1, 0x0

    .line 1464
    .local v1, diff:J
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v8

    .line 1465
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v9}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v9

    iget-wide v11, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v1, v9, v11

    .line 1467
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_4

    .line 1469
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1470
    .local v0, bsi:Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1471
    :try_start_1
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    .line 1474
    .local v4, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_3

    .line 1475
    invoke-virtual {v4, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1477
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1480
    .end local v0           #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1           #diff:J
    .end local v4           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_4
    const-wide/16 v7, 0x0

    iput-wide v7, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1481
    return-void

    .line 1394
    :cond_5
    const/4 v7, 0x2

    invoke-direct {p0, p1, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    goto :goto_0

    .line 1397
    :cond_6
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_b

    .line 1399
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v7, :cond_7

    .line 1400
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1401
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1405
    :cond_7
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v7, :cond_8

    .line 1412
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "pause-config"

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto/16 :goto_0

    .line 1414
    :cond_8
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v5

    .line 1417
    .local v5, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    .line 1418
    .local v3, mw:Lcom/android/server/am/MultiWindowManagerService;
    invoke-virtual {v3, v5, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    .line 1420
    .local v6, scheduleIdle:Z
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_9

    if-eqz v6, :cond_a

    .line 1428
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto/16 :goto_0

    .line 1430
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto/16 :goto_0

    .line 1435
    .end local v3           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v5           #resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6           #scheduleIdle:Z
    :cond_b
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 1441
    :cond_c
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_1

    .line 1449
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1450
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1453
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_2

    .line 1467
    .restart local v1       #diff:J
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1477
    .restart local v0       #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method

.method private final completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .parameter "next"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1489
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1490
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1491
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1494
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1495
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1496
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1508
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_0

    .line 1509
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1512
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearThumbnail()V

    .line 1513
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_1

    .line 1515
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v1, :cond_2

    .line 1518
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1524
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1525
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1526
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1527
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1532
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    .line 1533
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 1534
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1535
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    :goto_1
    return-void

    .line 1520
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 1535
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1537
    :cond_3
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_1
.end method

.method private final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I
    .locals 4
    .parameter "r"
    .parameter "task"

    .prologue
    .line 3059
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3060
    .local v1, i:I
    :cond_0
    if-lez v1, :cond_1

    .line 3061
    add-int/lit8 v1, v1, -0x1

    .line 3062
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 3063
    .local v0, candidate:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    .line 3066
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p2, :cond_2

    .line 3074
    .end local v0           #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 3069
    .restart local v0       #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 3070
    goto :goto_0
.end method

.method private findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 687
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 688
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 689
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserId;->getUserId(I)I

    move-result v4

    .line 693
    .local v4, userId:I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 694
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 695
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 696
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_1

    .line 697
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v4, :cond_1

    .line 706
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v3

    .line 694
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 706
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 640
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 641
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 642
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .line 647
    .local v2, cp:Lcom/android/server/am/TaskRecord;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserId;->getUserId(I)I

    move-result v5

    .line 648
    .local v5, userId:I
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 649
    .local v0, N:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 650
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 651
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v6, v2, :cond_4

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, v5, :cond_4

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 653
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 657
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 658
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 678
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    return-object v4

    .line 662
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 668
    :cond_3
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 649
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 678
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "r"
    .parameter "mode"

    .prologue
    .line 5047
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 5048
    .local v0, index:I
    if-gez v0, :cond_0

    .line 5049
    const/4 v1, 0x0

    .line 5052
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .parameter "r"
    .parameter "index"
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 5060
    const/4 v3, 0x2

    if-ne p3, v3, :cond_4

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_4

    .line 5061
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5062
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5063
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_3

    .line 5070
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 5077
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5078
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 5110
    .end local p1
    :cond_2
    :goto_1
    return-object p1

    .line 5072
    .restart local p1
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto :goto_0

    .line 5083
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5084
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5085
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5086
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_5

    .line 5087
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5089
    :cond_5
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5091
    .local v1, prevState:Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5093
    if-eqz p3, :cond_6

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v3, :cond_8

    .line 5098
    :cond_6
    const-string v3, "finish-imm"

    invoke-virtual {p0, p1, v4, v4, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v0

    .line 5099
    .local v0, activityRemoved:Z
    if-eqz v0, :cond_7

    .line 5100
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5102
    :cond_7
    if-eqz v0, :cond_2

    move-object p1, v2

    goto :goto_1

    .line 5107
    .end local v0           #activityRemoved:Z
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5108
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_1
.end method

.method private final finishTaskMoveLocked(I)V
    .locals 1
    .parameter "task"

    .prologue
    .line 5755
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5756
    return-void
.end method

.method private getFrontResumedActivities(ZZ)Ljava/util/ArrayList;
    .locals 12
    .parameter "includePinup"
    .parameter "onlyResumed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 4380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4381
    .local v2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    monitor-enter p0

    .line 4382
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4383
    .local v0, N:I
    const/4 v1, -0x1

    .line 4384
    .local v1, currentTaskId:I
    const/4 v4, 0x0

    .line 4385
    .local v4, isTopFloating:Z
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_7

    .line 4386
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 4387
    .local v7, r:Lcom/android/server/am/ActivityRecord;
    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v1, v8, :cond_0

    .line 4388
    iget-boolean v8, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_1

    .line 4385
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4391
    :cond_1
    iget v8, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    .line 4392
    .local v5, mode:I
    iget v8, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v6

    .line 4394
    .local v6, option:I
    iget v10, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    if-eqz v4, :cond_2

    move v8, v9

    :goto_2
    invoke-static {v10, v8, p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isArrangeMode(IZZ)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4395
    iget-boolean v8, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v8, :cond_5

    iget v8, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x2000

    if-nez v8, :cond_5

    .line 4396
    const/4 v4, 0x1

    .line 4397
    goto :goto_1

    .line 4394
    :cond_2
    if-eqz p2, :cond_4

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v11, :cond_3

    move v8, v9

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    move v8, v9

    goto :goto_2

    .line 4399
    :cond_5
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4400
    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 4402
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 4405
    .end local v5           #mode:I
    .end local v6           #option:I
    .end local v7           #r:Lcom/android/server/am/ActivityRecord;
    :cond_7
    monitor-exit p0

    .line 4406
    return-object v2

    .line 4405
    .end local v0           #N:I
    .end local v1           #currentTaskId:I
    .end local v3           #i:I
    .end local v4           #isTopFloating:Z
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private getFrontZoneActivity(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "record"
    .parameter "zoneInfo"

    .prologue
    const/4 v4, 0x0

    .line 4410
    monitor-enter p0

    .line 4411
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4412
    .local v3, topRecord:Lcom/android/server/am/ActivityRecord;
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x20

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 4413
    monitor-exit p0

    move-object v2, v4

    .line 4427
    :goto_0
    return-object v2

    .line 4416
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4417
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 4418
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4419
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget v5, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_1

    .line 4420
    iget v5, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, 0xff

    if-ne v5, p2, :cond_1

    .line 4421
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 4422
    monitor-exit p0

    goto :goto_0

    .line 4426
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    .end local v3           #topRecord:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4417
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v3       #topRecord:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4426
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 4427
    goto :goto_0
.end method

.method private final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 7
    .parameter "tag"
    .parameter "r"
    .parameter "task"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6004
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6005
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nfc://secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6006
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "nfc://secure:it should not be shown "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6019
    :cond_0
    :goto_0
    return-void

    .line 6013
    :cond_1
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private final moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .parameter "where"

    .prologue
    .line 3082
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 3083
    .local v0, newTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3084
    .local v2, top:I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3091
    .local v1, oldTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3092
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 3093
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 3094
    return-object v0
.end method

.method private moveMwPinupToFront()V
    .locals 5

    .prologue
    .line 5444
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 5445
    .local v3, total:I
    move v0, v3

    .line 5446
    .local v0, cnt:I
    :goto_0
    if-ltz v0, :cond_1

    .line 5447
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5448
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 5449
    .local v1, option:I
    const/high16 v4, 0x80

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    const/high16 v4, 0x8

    and-int/2addr v4, v1

    if-nez v4, :cond_0

    .line 5451
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5452
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5453
    add-int/lit8 v3, v3, -0x1

    .line 5455
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 5456
    goto :goto_0

    .line 5457
    .end local v1           #option:I
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private moveTaskToFrontLocked(I)V
    .locals 6
    .parameter "taskId"

    .prologue
    .line 4459
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4460
    .local v3, movedAppTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4461
    .local v2, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4462
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4463
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4464
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p1, :cond_0

    .line 4465
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4466
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4469
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 4470
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4471
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 4472
    return-void
.end method

.method private notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V
    .locals 5
    .parameter "r"
    .parameter "windowMode"
    .parameter "windowInfoChanged"
    .parameter "allInTask"

    .prologue
    .line 6327
    if-eqz p4, :cond_1

    .line 6328
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6329
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 6330
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 6331
    .local v1, cr:Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_0

    .line 6332
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    .line 6334
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, p2, p3}, Landroid/app/IApplicationThread;->scheduleWindowStatusChanged(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6329
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6341
    .end local v0           #N:I
    .end local v1           #cr:Lcom/android/server/am/ActivityRecord;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2

    .line 6343
    :try_start_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, p2, p3}, Landroid/app/IApplicationThread;->scheduleWindowStatusChanged(Landroid/os/IBinder;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6348
    :cond_2
    :goto_2
    return-void

    .line 6344
    :catch_0
    move-exception v3

    goto :goto_2

    .line 6335
    .restart local v0       #N:I
    .restart local v1       #cr:Lcom/android/server/am/ActivityRecord;
    .restart local v2       #i:I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private final performClearTaskAtIndexLocked(II)V
    .locals 6
    .parameter "taskId"
    .parameter "i"

    .prologue
    .line 3006
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 3007
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3008
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_2

    .line 3021
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void

    .line 3012
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 3013
    add-int/lit8 p2, p2, 0x1

    .line 3014
    goto :goto_0

    .line 3016
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3018
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private final performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .parameter "taskId"
    .parameter "newR"
    .parameter "launchFlags"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2939
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2942
    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    .line 2943
    add-int/lit8 v2, v2, -0x1

    .line 2944
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2945
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_0

    .line 2946
    add-int/lit8 v2, v2, 0x1

    .line 2952
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v2, :cond_2

    .line 2953
    add-int/lit8 v2, v2, -0x1

    .line 2954
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2955
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 2958
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_3

    .line 2998
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-object v4

    .line 2961
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2963
    move-object v6, v1

    .line 2964
    .local v6, ret:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    .line 2965
    add-int/lit8 v2, v2, 0x1

    .line 2966
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2967
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_6

    .line 2982
    :cond_5
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_7

    const/high16 v0, 0x2000

    and-int/2addr v0, p3

    if-nez v0, :cond_7

    .line 2984
    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_7

    .line 2985
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v7

    .line 2986
    .local v7, index:I
    if-ltz v7, :cond_2

    .line 2987
    const-string v10, "clear"

    move-object v5, p0

    move v8, v3

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 2970
    .end local v7           #index:I
    :cond_6
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_4

    .line 2973
    const-string v5, "clear"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2975
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    move-object v4, v6

    .line 2994
    goto :goto_0
.end method

.method private final performClearTaskLocked(I)V
    .locals 3
    .parameter "taskId"

    .prologue
    .line 3027
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3030
    .local v0, i:I
    :cond_0
    if-lez v0, :cond_1

    .line 3031
    add-int/lit8 v0, v0, -0x1

    .line 3032
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3033
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 3034
    add-int/lit8 v0, v0, 0x1

    .line 3040
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v0, :cond_2

    .line 3041
    add-int/lit8 v0, v0, -0x1

    .line 3042
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3043
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 3046
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p1, :cond_1

    .line 3048
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 3052
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method

.method private final relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 9
    .parameter "r"
    .parameter "changes"
    .parameter "andResume"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 6147
    const/4 v2, 0x0

    .line 6148
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 6149
    .local v3, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_0

    .line 6150
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 6151
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 6156
    :cond_0
    if-eqz p3, :cond_3

    const/16 v0, 0x7543

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    const/4 v4, 0x2

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6160
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 6166
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 6167
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_1

    move v5, v7

    :cond_1
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6176
    :goto_1
    if-eqz p3, :cond_4

    .line 6177
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 6178
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 6179
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_2

    .line 6180
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6182
    :cond_2
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6188
    :goto_2
    return v7

    .line 6156
    :cond_3
    const/16 v0, 0x7544

    goto :goto_0

    .line 6184
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6185
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 6172
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .parameter "list"
    .parameter "app"

    .prologue
    .line 5389
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5393
    .local v0, i:I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 5394
    add-int/lit8 v0, v0, -0x1

    .line 5395
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5398
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    .line 5400
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5401
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 5404
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 5170
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5171
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5172
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5173
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5174
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 5175
    return-void
.end method

.method private final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 26
    .parameter "taskTop"
    .parameter "newActivity"

    .prologue
    .line 2620
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/16 v18, 0x1

    .line 2630
    .local v18, forceReset:Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    .line 2635
    .local v24, task:Lcom/android/server/am/TaskRecord;
    const/16 v22, 0x0

    .line 2636
    .local v22, target:Lcom/android/server/am/ActivityRecord;
    const/16 v23, 0x0

    .line 2637
    .local v23, targetI:I
    const/16 v25, -0x1

    .line 2638
    .local v25, taskTopI:I
    const/16 v21, -0x1

    .line 2639
    .local v21, replyChainEnd:I
    const/16 v20, -0x1

    .line 2640
    .local v20, lastReparentPos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, i:I
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v19

    if-lt v0, v2, :cond_3

    .line 2641
    if-ltz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v12, v2

    .line 2643
    .local v12, below:Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-eqz v12, :cond_2

    iget-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2

    .line 2640
    :goto_3
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 2620
    .end local v12           #below:Lcom/android/server/am/ActivityRecord;
    .end local v18           #forceReset:Z
    .end local v19           #i:I
    .end local v20           #lastReparentPos:I
    .end local v21           #replyChainEnd:I
    .end local v22           #target:Lcom/android/server/am/ActivityRecord;
    .end local v23           #targetI:I
    .end local v24           #task:Lcom/android/server/am/TaskRecord;
    .end local v25           #taskTopI:I
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 2641
    .restart local v18       #forceReset:Z
    .restart local v19       #i:I
    .restart local v20       #lastReparentPos:I
    .restart local v21       #replyChainEnd:I
    .restart local v22       #target:Lcom/android/server/am/ActivityRecord;
    .restart local v23       #targetI:I
    .restart local v24       #task:Lcom/android/server/am/TaskRecord;
    .restart local v25       #taskTopI:I
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 2647
    .restart local v12       #below:Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-eqz v12, :cond_4

    iget v2, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v2, v5, :cond_4

    .line 2923
    .end local v12           #below:Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-object p1

    .line 2650
    .restart local v12       #below:Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-nez v22, :cond_5

    .line 2651
    move-object/from16 v22, v12

    .line 2652
    move/from16 v23, v19

    .line 2656
    const/16 v21, -0x1

    .line 2657
    goto :goto_3

    .line 2660
    :cond_5
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    .line 2662
    .local v17, flags:I
    and-int/lit8 v2, v17, 0x2

    if-eqz v2, :cond_8

    const/16 v16, 0x1

    .line 2664
    .local v16, finishOnTaskLaunch:Z
    :goto_4
    and-int/lit8 v2, v17, 0x40

    if-eqz v2, :cond_9

    const/4 v11, 0x1

    .line 2667
    .local v11, allowTaskReparenting:Z
    :goto_5
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_1f

    .line 2673
    if-gez v25, :cond_6

    .line 2674
    move/from16 v25, v23

    .line 2676
    :cond_6
    if-eqz v12, :cond_1e

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_1e

    .line 2677
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v5, 0x8

    and-int/2addr v2, v5

    if-eqz v2, :cond_a

    const/4 v13, 0x1

    .line 2680
    .local v13, clearWhenTaskReset:Z
    :goto_6
    if-nez v16, :cond_b

    if-nez v13, :cond_b

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_b

    .line 2687
    if-gez v21, :cond_7

    .line 2688
    move/from16 v21, v23

    .line 2919
    .end local v13           #clearWhenTaskReset:Z
    :cond_7
    :goto_7
    move-object/from16 v22, v12

    .line 2920
    move/from16 v23, v19

    goto :goto_3

    .line 2662
    .end local v11           #allowTaskReparenting:Z
    .end local v16           #finishOnTaskLaunch:Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    .line 2664
    .restart local v16       #finishOnTaskLaunch:Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 2677
    .restart local v11       #allowTaskReparenting:Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    .line 2690
    .restart local v13       #clearWhenTaskReset:Z
    :cond_b
    if-nez v16, :cond_13

    if-nez v13, :cond_13

    if-eqz v11, :cond_13

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_13

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2700
    .local v3, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2705
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2719
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2720
    if-gez v21, :cond_c

    .line 2721
    move/from16 v21, v23

    .line 2723
    :cond_c
    const/4 v15, 0x0

    .line 2724
    .local v15, dstPos:I
    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 2725
    .local v14, curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    move/from16 v4, v23

    .local v4, srcPos:I
    :goto_9
    move/from16 v0, v21

    if-gt v4, v0, :cond_10

    .line 2726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2727
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_f

    .line 2725
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2709
    .end local v4           #srcPos:I
    .end local v14           #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .end local v15           #dstPos:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v2, :cond_e

    .line 2711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2713
    :cond_e
    new-instance v2, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    invoke-direct {v2, v5, v6, v8}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2715
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v5, v2, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_8

    .line 2732
    .restart local v4       #srcPos:I
    .restart local v14       #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .restart local v15       #dstPos:I
    :cond_f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v14, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2733
    iget-object v14, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 2740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v15, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v15, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 2743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2744
    add-int/lit8 v15, v15, 0x1

    .line 2748
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 2750
    :cond_10
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 2751
    move-object/from16 p1, v12

    .line 2753
    :cond_11
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 2754
    const/16 v25, -0x1

    .line 2756
    :cond_12
    const/16 v21, -0x1

    .line 2757
    goto/16 :goto_7

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v14           #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .end local v15           #dstPos:I
    :cond_13
    if-nez v18, :cond_14

    if-nez v16, :cond_14

    if-eqz v13, :cond_1d

    .line 2763
    :cond_14
    if-eqz v13, :cond_18

    .line 2767
    add-int/lit8 v21, v23, 0x1

    .line 2770
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_15

    .line 2771
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 2773
    :cond_15
    add-int/lit8 v21, v21, -0x1

    .line 2777
    :cond_16
    :goto_c
    const/4 v3, 0x0

    .line 2778
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v4, v23

    .restart local v4       #srcPos:I
    :goto_d
    move/from16 v0, v21

    if-gt v4, v0, :cond_1a

    .line 2779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2780
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_19

    .line 2778
    :cond_17
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2774
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_18
    if-gez v21, :cond_16

    .line 2775
    move/from16 v21, v23

    goto :goto_c

    .line 2783
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v4       #srcPos:I
    :cond_19
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2785
    add-int/lit8 v21, v21, -0x1

    .line 2786
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 2789
    :cond_1a
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1b

    .line 2790
    move-object/from16 p1, v12

    .line 2792
    :cond_1b
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 2793
    const/16 v25, -0x1

    .line 2795
    :cond_1c
    const/16 v21, -0x1

    .line 2796
    goto/16 :goto_7

    .line 2800
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_1d
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 2805
    .end local v13           #clearWhenTaskReset:Z
    :cond_1e
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 2808
    :cond_1f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_21

    if-eqz v12, :cond_20

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_21

    .line 2816
    :cond_20
    if-gez v21, :cond_7

    .line 2817
    move/from16 v21, v23

    goto/16 :goto_7

    .line 2820
    :cond_21
    if-ltz v25, :cond_2e

    if-eqz v11, :cond_2e

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_2e

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2834
    if-nez v18, :cond_22

    if-eqz v16, :cond_27

    .line 2835
    :cond_22
    if-gez v21, :cond_23

    .line 2836
    move/from16 v21, v23

    .line 2838
    :cond_23
    const/4 v3, 0x0

    .line 2841
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v4, v23

    .restart local v4       #srcPos:I
    :goto_f
    move/from16 v0, v21

    if-gt v4, v0, :cond_26

    .line 2842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2843
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_25

    .line 2841
    :cond_24
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2846
    :cond_25
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2848
    add-int/lit8 v25, v25, -0x1

    .line 2849
    add-int/lit8 v20, v20, -0x1

    .line 2850
    add-int/lit8 v21, v21, -0x1

    .line 2851
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 2854
    :cond_26
    const/16 v21, -0x1

    .line 2855
    goto/16 :goto_7

    .line 2856
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_27
    if-gez v21, :cond_28

    .line 2857
    move/from16 v21, v23

    .line 2861
    :cond_28
    move/from16 v4, v21

    .restart local v4       #srcPos:I
    :goto_11
    move/from16 v0, v23

    if-lt v4, v0, :cond_2b

    .line 2862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2863
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_29

    .line 2861
    :goto_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 2866
    :cond_29
    if-gez v20, :cond_2a

    .line 2867
    move/from16 v20, v25

    .line 2868
    move-object/from16 p1, v3

    .line 2878
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2879
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v2, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v20

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 2885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_12

    .line 2870
    :cond_2a
    add-int/lit8 v20, v20, -0x1

    goto :goto_13

    .line 2890
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    :cond_2b
    const/16 v21, -0x1

    .line 2896
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    .line 2897
    add-int/lit8 v7, v20, -0x1

    .local v7, j:I
    :goto_14
    if-ltz v7, :cond_7

    .line 2898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2899
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2d

    .line 2897
    :cond_2c
    :goto_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    .line 2902
    :cond_2d
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2903
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "replace"

    move-object/from16 v5, p0

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2905
    add-int/lit8 v25, v25, -0x1

    .line 2906
    add-int/lit8 v20, v20, -0x1

    goto :goto_15

    .line 2913
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v7           #j:I
    :cond_2e
    if-eqz v12, :cond_7

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v5, :cond_7

    .line 2916
    const/16 v21, -0x1

    goto/16 :goto_7
.end method

.method private setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V
    .locals 6
    .parameter "task"
    .parameter "windowMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1552
    .local p3, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_0

    .line 1553
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setZoneForAllActivitiesInTaskLocked task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", windowMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1556
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1557
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1558
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p1, :cond_1

    .line 1559
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x20

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 1556
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1562
    :cond_2
    iput p2, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1563
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V

    .line 1564
    if-eqz p3, :cond_1

    .line 1565
    const/4 v3, 0x0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p3, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1569
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method private shouldHideActivity(ZIILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .parameter "behindFullscreen"
    .parameter "obscuredMask"
    .parameter "currentTaskId"
    .parameter "r"
    .parameter "home"

    .prologue
    const/high16 v7, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1602
    iget-object v4, p4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne p3, v4, :cond_1

    .line 1626
    :cond_0
    :goto_0
    return v2

    .line 1605
    :cond_1
    iget v4, p4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 1606
    .local v1, options:I
    and-int v4, v1, v7

    if-eqz v4, :cond_2

    move v2, v3

    .line 1607
    goto :goto_0

    .line 1610
    :cond_2
    if-eq p4, p5, :cond_3

    if-eqz p5, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v5

    if-le v4, v5, :cond_3

    iget-boolean v4, p4, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v4, :cond_3

    move v2, v3

    .line 1613
    goto :goto_0

    .line 1616
    :cond_3
    if-eqz p1, :cond_4

    and-int v4, v1, v7

    if-eqz v4, :cond_0

    .line 1620
    :cond_4
    and-int/lit16 v0, v1, 0xff

    .line 1621
    .local v0, currentZone:I
    if-eqz v0, :cond_5

    and-int v4, v0, p2

    if-ne v4, v0, :cond_5

    iget-object v4, p4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne p3, v4, :cond_0

    :cond_5
    move v2, v3

    .line 1626
    goto :goto_0
.end method

.method private final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .locals 27
    .parameter "r"
    .parameter "newTask"
    .parameter "doResume"
    .parameter "keepCurTransition"
    .parameter "options"

    .prologue
    .line 2394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 2396
    .local v16, NH:I
    const/4 v4, -0x1

    .line 2398
    .local v4, addPos:I
    if-nez p2, :cond_10

    .line 2400
    const/16 v25, 0x1

    .line 2401
    .local v25, startIt:Z
    add-int/lit8 v18, v16, -0x1

    .local v18, i:I
    :goto_0
    if-ltz v18, :cond_5

    .line 2402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityRecord;

    .line 2403
    .local v22, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 2401
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 2406
    :cond_1
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_4

    .line 2410
    add-int/lit8 v4, v18, 0x1

    .line 2411
    if-nez v25, :cond_5

    .line 2418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2419
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZI)V

    .line 2424
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_2

    .line 2425
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 2432
    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2586
    .end local v18           #i:I
    .end local v22           #p:Lcom/android/server/am/ActivityRecord;
    .end local v25           #startIt:Z
    :cond_3
    :goto_2
    return-void

    .line 2438
    .restart local v18       #i:I
    .restart local v22       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v25       #startIt:Z
    :cond_4
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v19

    .line 2439
    .local v19, mode:I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x200

    move/from16 v0, v19

    if-eq v0, v3, :cond_0

    .line 2440
    const/16 v25, 0x0

    goto :goto_1

    .line 2446
    .end local v19           #mode:I
    .end local v22           #p:Lcom/android/server/am/ActivityRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_6

    .line 2447
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2475
    .end local v18           #i:I
    .end local v25           #startIt:Z
    :cond_6
    :goto_3
    if-gez v4, :cond_7

    .line 2476
    move/from16 v4, v16

    .line 2482
    :cond_7
    move/from16 v0, v16

    if-ge v4, v0, :cond_8

    .line 2483
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 2493
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2494
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2495
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2496
    if-lez v16, :cond_18

    .line 2500
    move/from16 v15, p2

    .line 2501
    .local v15, showStartingIcon:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    .line 2502
    .local v24, proc:Lcom/android/server/am/ProcessRecord;
    if-nez v24, :cond_9

    .line 2503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/server/ProcessMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #proc:Lcom/android/server/am/ProcessRecord;
    check-cast v24, Lcom/android/server/am/ProcessRecord;

    .line 2505
    .restart local v24       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_9
    if-eqz v24, :cond_a

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_b

    .line 2506
    :cond_a
    const/4 v15, 0x1

    .line 2510
    :cond_b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_13

    .line 2511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v5, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZI)V

    .line 2526
    const/16 v17, 0x1

    .line 2527
    .local v17, doShow:Z
    if-eqz p2, :cond_c

    .line 2533
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x20

    and-int/2addr v3, v5

    if-eqz v3, :cond_c

    .line 2535
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 2536
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_15

    const/16 v17, 0x1

    .line 2539
    :cond_c
    :goto_5
    if-eqz v17, :cond_e

    .line 2541
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v5, 0x100

    if-ne v3, v5, :cond_e

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    .line 2548
    .local v23, prev:Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_d

    .line 2551
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v5, :cond_16

    const/16 v23, 0x0

    .line 2555
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v9}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v23, :cond_17

    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_7
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 2574
    .end local v15           #showStartingIcon:Z
    .end local v17           #doShow:Z
    .end local v23           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v24           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_f

    .line 2575
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 2583
    :cond_f
    if-eqz p3, :cond_3

    .line 2584
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_2

    .line 2453
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_6

    .line 2454
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v20

    .line 2455
    .local v20, mw:Lcom/android/server/am/MultiWindowManagerService;
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/MultiWindowManagerService;->addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V

    .line 2457
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v5, 0x200

    if-ne v3, v5, :cond_12

    .line 2458
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfoByComponent(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v26

    .line 2459
    .local v26, winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v21

    .line 2460
    .local v21, option:I
    const/high16 v3, 0x80

    and-int v3, v3, v21

    if-eqz v3, :cond_11

    .line 2461
    const-string v3, "android.intent.extra.WINDOW_LAST_PINUP"

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 2462
    :cond_11
    if-eqz v26, :cond_6

    const-string v3, "android.intent.extra.WINDOW_LAST_PINUP"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 2463
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x80

    or-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 2464
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, -0x100

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_3

    .line 2467
    .end local v21           #option:I
    .end local v26           #winInfo:Landroid/os/Bundle;
    :cond_12
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v5, -0x800001

    and-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_3

    .line 2515
    .end local v20           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .restart local v15       #showStartingIcon:Z
    .restart local v24       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_14

    const/16 v3, 0x1008

    :goto_9
    move/from16 v0, p4

    invoke-virtual {v5, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2515
    :cond_14
    const/16 v3, 0x1006

    goto :goto_9

    .line 2536
    .restart local v17       #doShow:Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 2553
    .restart local v23       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_16
    move-object/from16 v0, v23

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_d

    const/16 v23, 0x0

    goto/16 :goto_6

    .line 2555
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 2567
    .end local v15           #showStartingIcon:Z
    .end local v17           #doShow:Z
    .end local v23           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v24           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZI)V

    .line 2570
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_8
.end method

.method private final startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 8
    .parameter "prev"
    .parameter "userLeaving"
    .parameter "uiSleeping"

    .prologue
    const/16 v7, 0x68

    const/4 v6, 0x0

    .line 1129
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_2

    .line 1130
    if-nez p1, :cond_0

    .line 1131
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1132
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    const-string v3, "Trying to pause <null>"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1254
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1137
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1138
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to pause when pause is already pending for this activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", all pending activities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1150
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    if-nez p1, :cond_3

    .line 1151
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1152
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    const-string v3, "Trying to pause when nothing is resumed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    .line 1142
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    .line 1143
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1144
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to pause when pause is already pending for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1158
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_3
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1160
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_9

    .line 1161
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1166
    :goto_2
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1167
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1168
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1171
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v2, :cond_4

    .line 1172
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2, v6}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1175
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1177
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_b

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_b

    .line 1180
    const/16 v2, 0x753d

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1183
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v2, v3, v4, p2, v5}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 1185
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_5

    .line 1186
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v2, :cond_6

    .line 1214
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1215
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1217
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1218
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1223
    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1229
    :cond_7
    if-nez p3, :cond_8

    .line 1230
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1238
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1239
    .restart local v1       #msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1241
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1163
    .end local v1           #msg:Landroid/os/Message;
    :cond_9
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_2

    .line 1188
    :catch_0
    move-exception v0

    .line 1190
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1192
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_a

    .line 1193
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1198
    :goto_4
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3

    .line 1195
    :cond_a
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_4

    .line 1202
    .end local v0           #e:Ljava/lang/Exception;
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_c

    .line 1203
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1208
    :goto_5
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3

    .line 1205
    :cond_c
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_5

    .line 1223
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_7

    .line 1252
    :cond_e
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_0
.end method

.method private final startPausingLocked(ZZ)V
    .locals 1
    .parameter "userLeaving"
    .parameter "uiSleeping"

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1126
    return-void
.end method

.method private final startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 14
    .parameter "r"
    .parameter "andResume"
    .parameter "checkConfig"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 938
    .local v2, app:Lcom/android/server/am/ProcessRecord;
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    .line 939
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 940
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 941
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 947
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4

    .line 948
    const-string v12, ""

    .line 950
    .local v12, applicationName:Ljava/lang/String;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    .line 951
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;)Z

    .line 959
    if-eqz v12, :cond_3

    const-string v0, "com.android.contacts/.activities.PeopleActivity"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.mms/.ui.ConversationComposer"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.gallery3d/.app.Gallery"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 962
    :cond_1
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing JIT for 3 seconds "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 981
    .end local v12           #applicationName:Ljava/lang/String;
    :goto_2
    return-void

    .line 943
    :cond_2
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 944
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    goto :goto_0

    .line 952
    .restart local v12       #applicationName:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 953
    .local v13, e:Ljava/lang/NullPointerException;
    const-string v0, "ActivityManager"

    const-string v1, "Exception cannot get application name "

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 966
    .end local v13           #e:Ljava/lang/NullPointerException;
    :cond_3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 970
    :catch_1
    move-exception v13

    .line 971
    .local v13, e:Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when starting activity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    .end local v12           #applicationName:Ljava/lang/String;
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "activity"

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZ)Lcom/android/server/am/ProcessRecord;

    goto :goto_2
.end method

.method private final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4579
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 4581
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 4582
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v2, :cond_1

    .line 4586
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v3, "no-history"

    invoke-virtual {p0, v2, v6, v4, v3}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 4595
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_5

    .line 4596
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_2

    .line 4597
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_2

    .line 4598
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4601
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4603
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 4606
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4609
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_3

    .line 4610
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4612
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 4613
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4614
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 4616
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4617
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4618
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4633
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    :goto_0
    return-void

    .line 4619
    :catch_0
    move-exception v0

    .line 4623
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4625
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 4627
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4628
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v2, :cond_5

    .line 4629
    const-string v2, "stop-except"

    invoke-virtual {p0, p1, v7, v6, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto :goto_0
.end method

.method private final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 630
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 631
    .local v0, hadit:Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    return v0
.end method


# virtual methods
.method final activityDestroyed(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 5366
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 5367
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 5369
    .local v1, origId:J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 5370
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 5371
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x69

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5374
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 5375
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 5376
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v6, :cond_1

    .line 5377
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 5378
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5381
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5383
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5385
    monitor-exit v5

    .line 5386
    return-void

    .line 5383
    .end local v0           #index:I
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5385
    .end local v1           #origId:J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method final activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 29
    .parameter "token"
    .parameter "fromTimeout"
    .parameter "config"

    .prologue
    .line 4694
    const/16 v23, 0x0

    .line 4696
    .local v23, res:Lcom/android/server/am/ActivityRecord;
    const/16 v25, 0x0

    .line 4697
    .local v25, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v19, 0x0

    .line 4698
    .local v19, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v26, 0x0

    .line 4699
    .local v26, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v13, 0x0

    .line 4700
    .local v13, NS:I
    const/4 v12, 0x0

    .line 4701
    .local v12, NF:I
    const/4 v14, 0x0

    .line 4702
    .local v14, NT:I
    const/16 v24, 0x0

    .line 4703
    .local v24, sendThumbnail:Landroid/app/IApplicationThread;
    const/16 v16, 0x0

    .line 4704
    .local v16, booting:Z
    const/16 v18, 0x0

    .line 4705
    .local v18, enableScreen:Z
    const/4 v15, 0x0

    .line 4707
    .local v15, activityRemoved:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 4708
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4709
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    .line 4710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4711
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4715
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    .line 4716
    .local v22, index:I
    if-ltz v22, :cond_b

    .line 4717
    move-object/from16 v23, v4

    .line 4719
    if-eqz p2, :cond_1

    .line 4720
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 4728
    :cond_1
    if-eqz p3, :cond_2

    .line 4729
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4733
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4740
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 4741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 4742
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_4

    .line 4743
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    .line 4744
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 4750
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4753
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_5

    .line 4754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_5

    .line 4755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 4756
    const/16 v18, 0x1

    .line 4765
    :cond_5
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v25

    .line 4766
    if-eqz v25, :cond_c

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 4767
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 4768
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4769
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v20, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v19, v20

    .line 4771
    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 4772
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4773
    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v27, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v26, v27

    .line 4776
    .end local v27           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_8

    .line 4777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v16, v0

    .line 4778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 4780
    :cond_8
    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4785
    if-eqz v24, :cond_9

    .line 4787
    :try_start_5
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->requestThumbnail(Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 4796
    :cond_9
    :goto_3
    const/16 v21, 0x0

    .local v21, i:I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v13, :cond_e

    .line 4797
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4798
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4799
    :try_start_6
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_d

    .line 4800
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    .line 4804
    :goto_5
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4796
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 4733
    .end local v21           #i:I
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v4, :cond_3

    goto/16 :goto_0

    .line 4760
    :cond_b
    if-eqz p2, :cond_5

    .line 4761
    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v5, p0

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto/16 :goto_1

    .line 4780
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #index:I
    :catchall_0
    move-exception v2

    :goto_6
    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 4766
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #index:I
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 4788
    :catch_0
    move-exception v17

    .line 4789
    .local v17, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown when requesting thumbnail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4790
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    goto :goto_3

    .line 4802
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v21       #i:I
    :cond_d
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_5

    .line 4804
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 4809
    :cond_e
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v12, :cond_f

    .line 4810
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4811
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4812
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_9
    const-string v6, "finish-idle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v15

    .line 4813
    monitor-exit v3

    .line 4809
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 4813
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v2

    .line 4817
    :cond_f
    const/16 v21, 0x0

    :goto_8
    move/from16 v0, v21

    if-ge v0, v14, :cond_10

    .line 4818
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4819
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    .line 4817
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 4822
    :cond_10
    if-eqz v16, :cond_11

    .line 4823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 4826
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 4830
    if-eqz v18, :cond_12

    .line 4831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 4834
    :cond_12
    if-eqz v15, :cond_13

    .line 4835
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4838
    :cond_13
    return-object v23

    .line 4780
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v21           #i:I
    .restart local v20       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_3
    move-exception v2

    move-object/from16 v19, v20

    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_6

    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v27       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_4
    move-exception v2

    move-object/from16 v26, v27

    .end local v27           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_6
.end method

.method final activityPaused(Landroid/os/IBinder;Z)V
    .locals 8
    .parameter "token"
    .parameter "timeout"

    .prologue
    .line 1260
    const/4 v2, 0x0

    .line 1262
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1263
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1264
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 1265
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v2, v0

    .line 1266
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1268
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_2

    .line 1269
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1270
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1271
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1292
    :cond_0
    :goto_0
    monitor-exit v4

    .line 1293
    return-void

    .line 1273
    :cond_1
    const/16 v3, 0x753c

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1292
    .end local v1           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1278
    .restart local v1       #index:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, v2, :cond_3

    .line 1281
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1282
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->completePauseLocked()V

    goto :goto_0

    .line 1284
    :cond_3
    const/16 v5, 0x753c

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_1
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    const-string v3, "(none)"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1016
    return-void
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 14
    .parameter "r"
    .parameter "icicle"
    .parameter "thumbnail"
    .parameter "description"

    .prologue
    .line 1297
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v10, v11, :cond_1

    .line 1298
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x6c

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    if-eqz p2, :cond_2

    .line 1306
    move-object/from16 v0, p2

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1307
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1308
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1310
    :cond_2
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v10, :cond_0

    .line 1312
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x6c

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1313
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1314
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1317
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v8

    .line 1318
    .local v8, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v5

    .line 1319
    .local v5, mw:Lcom/android/server/am/MultiWindowManagerService;
    invoke-virtual {v5, v8, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1320
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1324
    :cond_3
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_4

    .line 1325
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_0

    .line 1327
    :cond_4
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v10, :cond_5

    .line 1328
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "stop-config"

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    .line 1329
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    .line 1334
    :cond_5
    const/4 v2, 0x0

    .line 1336
    .local v2, fgApp:Lcom/android/server/am/ProcessRecord;
    const/4 v4, 0x0

    .line 1337
    .local v4, inForeground:Z
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_a

    .line 1338
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v9

    .line 1339
    .local v9, resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 1340
    .local v7, resumed:Lcom/android/server/am/ActivityRecord;
    iget-object v10, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v11, :cond_6

    .line 1341
    const/4 v4, 0x1

    .line 1346
    .end local v7           #resumed:Lcom/android/server/am/ActivityRecord;
    :cond_7
    if-nez v4, :cond_9

    .line 1347
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 1348
    .local v6, pausing:Lcom/android/server/am/ActivityRecord;
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v11, :cond_8

    .line 1349
    const/4 v4, 0x1

    .line 1361
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #pausing:Lcom/android/server/am/ActivityRecord;
    .end local v9           #resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_9
    :goto_1
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_c

    if-nez v4, :cond_0

    :goto_2
    iget-wide v10, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v10, v11, :cond_0

    .line 1365
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 1366
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v11, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v11, v10, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    goto/16 :goto_0

    .line 1355
    :cond_a
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_b

    .line 1356
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_1

    .line 1357
    :cond_b
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_9

    .line 1358
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_1

    .line 1361
    :cond_c
    if-eqz v2, :cond_0

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v10, v2, :cond_0

    goto :goto_2
.end method

.method public arrangedWindowStateLocked(Ljava/util/List;)V
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6193
    .local p1, resumeRecord:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 6301
    :cond_0
    return-void

    .line 6197
    :cond_1
    const/4 v10, 0x0

    .line 6198
    .local v10, obscuredMask:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    .line 6199
    .local v11, orientation:I
    const/4 v4, 0x0

    .line 6200
    .local v4, bFullZoneInfo:Z
    const/4 v5, 0x0

    .line 6201
    .local v5, bRefreshSplit:Z
    const/4 v6, 0x0

    .line 6202
    .local v6, controlBarRect:Landroid/graphics/Rect;
    if-eqz p1, :cond_a

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 6203
    const/16 v16, 0x0

    .line 6204
    .local v16, zoneInfo:I
    const/4 v9, 0x0

    .line 6205
    .local v9, notifyRecord:Lcom/android/server/am/ActivityRecord;
    const/16 v17, 0x0

    .line 6206
    .local v17, zoneRecord:Lcom/android/server/am/ActivityRecord;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 6208
    .local v13, removeRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 6209
    .local v12, r:Lcom/android/server/am/ActivityRecord;
    iget v0, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v18

    const/high16 v19, 0x200

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 6210
    iget v0, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 6211
    and-int v18, v10, v16

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 6212
    or-int v10, v10, v16

    .line 6213
    move-object/from16 v17, v12

    .line 6216
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 6217
    move-object v9, v12

    .line 6252
    :cond_3
    :goto_1
    if-eqz v17, :cond_2

    .line 6253
    const/16 v18, 0x6

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 6254
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/am/MultiWindowManagerService;->calculateControlbar(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_0

    .line 6220
    :cond_4
    iget v0, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v18

    const/high16 v19, 0x100

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 6221
    iget v0, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const/high16 v19, 0x20

    and-int v18, v18, v19

    if-eqz v18, :cond_7

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 6222
    const/16 v16, 0x0

    .line 6223
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v10, v0, :cond_6

    .line 6224
    const/16 v16, 0x18

    .line 6229
    :cond_5
    :goto_2
    if-eqz v16, :cond_3

    .line 6230
    const/4 v5, 0x1

    .line 6231
    or-int v10, v10, v16

    .line 6232
    move-object v9, v12

    .line 6233
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6234
    iget v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6235
    iget v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int v18, v18, v16

    move/from16 v0, v18

    iput v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6238
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v8

    .line 6239
    .local v8, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v15

    .line 6240
    .local v15, windowInfo:Landroid/os/Bundle;
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-static/range {v16 .. v16}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 6225
    .end local v8           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v15           #windowInfo:Landroid/os/Bundle;
    :cond_6
    const/16 v18, 0x18

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    .line 6226
    const/16 v16, 0x6

    goto :goto_2

    .line 6243
    :cond_7
    if-eqz v10, :cond_3

    .line 6244
    move-object/from16 v9, v17

    .line 6245
    iget v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const v19, 0xffffe1

    and-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6246
    iget v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const/high16 v19, 0x100

    or-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 6247
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6259
    .end local v12           #r:Lcom/android/server/am/ActivityRecord;
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_9

    .line 6260
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 6261
    .restart local v12       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 6265
    .end local v12           #r:Lcom/android/server/am/ActivityRecord;
    :cond_9
    if-eqz v9, :cond_a

    .line 6266
    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    iget v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 6267
    iget v0, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 6272
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #notifyRecord:Lcom/android/server/am/ActivityRecord;
    .end local v13           #removeRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v16           #zoneInfo:I
    .end local v17           #zoneRecord:Lcom/android/server/am/ActivityRecord;
    :cond_a
    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ne v10, v0, :cond_d

    const/4 v4, 0x1

    .line 6273
    :goto_4
    new-instance v14, Landroid/content/Intent;

    const-string v18, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6274
    .local v14, splitZoneInfoIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v4, :cond_f

    .line 6275
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    .line 6277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 6278
    const-string v18, "com.sec.android.extra.ARRAGE_MODE"

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6279
    const-string v18, "com.sec.android.extra.CONTROL_BAR_RECT"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6280
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1, v6}, Lcom/android/server/am/ActivityStack;->resizeArrangedWindow(IILandroid/graphics/Rect;)V

    .line 6286
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6294
    :cond_b
    :goto_6
    if-eqz p1, :cond_0

    .line 6295
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 6296
    .restart local v12       #r:Lcom/android/server/am/ActivityRecord;
    iget v0, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowManagerService;->getAppWindowMode(Landroid/view/IApplicationToken;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 6297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    iget v0, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V

    goto :goto_7

    .line 6272
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #r:Lcom/android/server/am/ActivityRecord;
    .end local v14           #splitZoneInfoIntent:Landroid/content/Intent;
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 6283
    .restart local v14       #splitZoneInfoIntent:Landroid/content/Intent;
    :cond_e
    const-string v18, "com.sec.android.extra.ARRAGE_MODE"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 6287
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    if-eqz v5, :cond_b

    .line 6288
    const-string v18, "com.sec.android.extra.ARRAGE_MODE"

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6289
    const-string v18, "com.sec.android.extra.CONTROL_BAR_RECT"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6291
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1, v6}, Lcom/android/server/am/ActivityStack;->resizeArrangedWindow(IILandroid/graphics/Rect;)V

    goto/16 :goto_6
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1000
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1001
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 1002
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1006
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1007
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1008
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1006
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1010
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1011
    return-void
.end method

.method final canResumedActivitiesLocked()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v12, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 553
    .local v1, N:I
    const/4 v2, 0x0

    .line 554
    .local v2, currentTask:I
    const/4 v8, 0x0

    .line 555
    .local v8, normalActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    .line 556
    .local v4, homeActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v9, 0x0

    .line 557
    .local v9, obscuredMask:I
    add-int/lit8 v5, v1, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_a

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 559
    .local v11, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v14, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v14, :cond_1

    .line 557
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 563
    :cond_1
    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, v14, :cond_0

    .line 564
    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 566
    iget v14, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    .line 567
    .local v7, mode:I
    const/high16 v14, 0x200

    if-ne v7, v14, :cond_9

    .line 568
    iget v14, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v10

    .line 569
    .local v10, option:I
    const/high16 v14, 0x18

    and-int/2addr v14, v10

    if-nez v14, :cond_0

    .line 571
    if-eqz v8, :cond_2

    const/high16 v14, 0x80

    and-int/2addr v14, v10

    if-nez v14, :cond_2

    .line 573
    iget-boolean v14, v11, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v14, :cond_0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v14, v15}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v15

    if-le v14, v15, :cond_0

    .line 577
    :cond_2
    and-int/lit16 v3, v10, 0xff

    .line 578
    .local v3, currentZone:I
    if-eqz v3, :cond_3

    and-int v14, v9, v3

    if-eq v14, v3, :cond_0

    .line 580
    :cond_3
    iget-boolean v14, v11, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v14, :cond_4

    and-int/lit16 v14, v10, 0x2000

    if-eqz v14, :cond_6

    .line 581
    :cond_4
    or-int/2addr v9, v3

    .line 595
    :cond_5
    :goto_2
    const/4 v14, 0x0

    invoke-virtual {v12, v14, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 584
    :cond_6
    const/4 v13, 0x0

    .line 585
    .local v13, temp:Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v6, v5, -0x1

    .local v6, j:I
    :goto_3
    if-ltz v6, :cond_5

    .line 586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #temp:Lcom/android/server/am/ActivityRecord;
    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 587
    .restart local v13       #temp:Lcom/android/server/am/ActivityRecord;
    iget-object v14, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v14, v2, :cond_5

    .line 589
    iget-boolean v14, v13, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v14, :cond_7

    iget v14, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v14

    and-int/lit16 v14, v14, 0x2000

    if-eqz v14, :cond_8

    .line 590
    :cond_7
    iget v14, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v9, v14

    .line 591
    goto :goto_2

    .line 585
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 597
    .end local v3           #currentZone:I
    .end local v6           #j:I
    .end local v10           #option:I
    .end local v13           #temp:Lcom/android/server/am/ActivityRecord;
    :cond_9
    if-nez v8, :cond_0

    const/high16 v14, 0x100

    if-ne v7, v14, :cond_0

    .line 598
    move-object v8, v11

    .line 599
    iget-boolean v14, v11, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v14, :cond_0

    .line 600
    move-object v4, v11

    goto/16 :goto_1

    .line 605
    .end local v7           #mode:I
    .end local v11           #r:Lcom/android/server/am/ActivityRecord;
    :cond_a
    if-eqz v8, :cond_b

    const/16 v14, 0x1e

    if-eq v9, v14, :cond_b

    .line 606
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_b
    return-object v12
.end method

.method checkReadyForSleepLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1019
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    if-nez v4, :cond_a

    .line 1026
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_4

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    .line 1029
    .local v3, resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1033
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_0

    .line 1036
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1057
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto :goto_0

    .line 1042
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_5

    .line 1046
    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    goto :goto_0

    .line 1049
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1065
    :cond_6
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1069
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_9

    .line 1070
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1071
    .restart local v2       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_7

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_8

    .line 1072
    :cond_7
    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1069
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1076
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1084
    .end local v0           #i:I
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1086
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1087
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1089
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_0

    .line 1090
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 6
    .parameter "r"
    .parameter "cleanServices"
    .parameter "setState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5122
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    .line 5123
    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5125
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 5126
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5129
    :cond_1
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 5130
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 5132
    if-eqz p3, :cond_2

    .line 5134
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5140
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5141
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5144
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_5

    .line 5145
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 5146
    .local v0, apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 5147
    .local v2, rec:Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_3

    .line 5148
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .line 5151
    .end local v0           #apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2           #rec:Lcom/android/server/am/PendingIntentRecord;
    :cond_4
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 5154
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_6

    .line 5155
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5158
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 5162
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5166
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5167
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 5205
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 5206
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5207
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 5209
    .local v0, c:Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 5211
    .end local v0           #c:Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 5213
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 7
    .parameter "owner"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 5224
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v4

    .line 5226
    .local v4, resumed:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v2, 0x0

    .line 5227
    .local v2, lastIsOpaque:Z
    const/4 v0, 0x0

    .line 5228
    .local v0, activityRemoved:Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_6

    .line 5229
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5230
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    invoke-static {p3, v3}, Lcom/android/server/am/ActivityStack$Injector;->isDestroyHomeReasonAlwaysOrFinishing(Ljava/lang/String;Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5228
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5233
    :cond_1
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v5, :cond_2

    .line 5234
    const/4 v2, 0x1

    .line 5236
    :cond_2
    if-eqz p1, :cond_3

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, p1, :cond_0

    .line 5239
    :cond_3
    if-eqz v2, :cond_0

    .line 5246
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v5, :cond_4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_2
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_3
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_0

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    .line 5255
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5256
    const/4 v0, 0x1

    goto :goto_1

    .line 5246
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v5, :cond_0

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v5, :cond_0

    goto :goto_3

    .line 5260
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v0, :cond_7

    .line 5261
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5263
    :cond_7
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
    .locals 10
    .parameter "r"
    .parameter "removeFromApp"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 5276
    const/16 v6, 0x7542

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5280
    const/4 v4, 0x0

    .line 5282
    .local v4, removedFromHistory:Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 5284
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    .line 5286
    .local v1, hadApp:Z
    :goto_0
    if-eqz v1, :cond_7

    .line 5287
    if-eqz p2, :cond_2

    .line 5288
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 5289
    .local v2, idx:I
    if-ltz v2, :cond_0

    .line 5290
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5292
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 5293
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 5294
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5297
    :cond_1
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 5300
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 5304
    .end local v2           #idx:I
    :cond_2
    const/4 v5, 0x0

    .line 5308
    .local v5, skipDestroy:Z
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5322
    :cond_3
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5323
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 5332
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_6

    if-nez v5, :cond_6

    .line 5335
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5336
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 5337
    .local v3, msg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5338
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5356
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #skipDestroy:Z
    :goto_2
    const/4 v6, 0x0

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 5358
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v1, :cond_4

    .line 5359
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " being finished, but not in LRU list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5362
    :cond_4
    return v4

    .line 5284
    .end local v1           #hadApp:Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 5310
    .restart local v1       #hadApp:Z
    .restart local v5       #skipDestroy:Z
    :catch_0
    move-exception v0

    .line 5315
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_3

    .line 5316
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5317
    const/4 v4, 0x1

    .line 5318
    const/4 v5, 0x1

    goto :goto_1

    .line 5342
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 5346
    .end local v5           #skipDestroy:Z
    :cond_7
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_8

    .line 5347
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5348
    const/4 v4, 0x1

    goto :goto_2

    .line 5352
    :cond_8
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2
.end method

.method public dismissKeyguardOnNextActivityLocked()V
    .locals 1

    .prologue
    .line 6352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 6353
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 3
    .parameter "starting"
    .parameter "configChanges"

    .prologue
    const/4 v2, 0x0

    .line 1891
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1892
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 1895
    const/high16 v1, 0x1000

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    .line 1896
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1899
    :cond_0
    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1901
    :cond_1
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 24
    .parameter "top"
    .parameter "starting"
    .parameter "onlyThisProcess"
    .parameter "configChanges"

    .prologue
    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1645
    .local v13, count:I
    add-int/lit8 v17, v13, -0x1

    .line 1646
    .local v17, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    .line 1647
    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .line 1650
    :cond_0
    const/4 v7, 0x0

    .line 1651
    .local v7, homeActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    .line 1654
    .local v3, behindFullscreen:Z
    const/4 v4, 0x0

    .line 1655
    .local v4, obscuredMask:I
    const/4 v5, -0x1

    .line 1656
    .local v5, currentTaskId:I
    const/16 v18, 0x0

    .line 1658
    .local v18, isForceTitleBar:Z
    :goto_1
    if-ltz v17, :cond_10

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 1660
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_1

    move-object v7, v6

    .line 1664
    :cond_1
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_3

    .line 1658
    :cond_2
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 1668
    :cond_3
    if-eqz p3, :cond_4

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_4
    const/4 v14, 0x1

    .line 1674
    .local v14, doThisProcess:Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_14

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->shouldHideActivity(ZIILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1675
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_7

    .line 1676
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_5

    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_7

    .line 1679
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1681
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1682
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v22

    if-eq v2, v0, :cond_6

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v22

    if-ne v2, v0, :cond_7

    :cond_6
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_7

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_7

    .line 1687
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1788
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseWindowLayoutParam(Landroid/view/IApplicationToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    .line 1789
    .local v19, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x0

    .line 1790
    .local v16, hasFullOpaqueFlag:Z
    const/16 v20, 0x0

    .line 1791
    .local v20, requestedFullOpaque:Z
    if-eqz v19, :cond_8

    .line 1794
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v19, :cond_9

    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v22, 0x400

    and-int v2, v2, v22

    const/high16 v22, 0x400

    move/from16 v0, v22

    if-ne v2, v0, :cond_9

    .line 1797
    const/16 v16, 0x1

    .line 1801
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1802
    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->requestedFullOpaque:Z

    move/from16 v20, v0

    .line 1809
    :cond_a
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v2, :cond_b

    if-nez v16, :cond_b

    if-eqz v20, :cond_c

    :cond_b
    iget v2, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v22, 0x100

    move/from16 v0, v22

    if-eq v2, v0, :cond_d

    :cond_c
    const/16 v2, 0x1e

    if-ne v4, v2, :cond_2

    .line 1819
    :cond_d
    move/from16 v10, v17

    .line 1820
    .local v10, belowIndex:I
    const/4 v9, 0x0

    .local v9, bPinupWindow:Z
    move v11, v10

    .line 1821
    .end local v10           #belowIndex:I
    .local v11, belowIndex:I
    :goto_4
    add-int/lit8 v10, v11, -0x1

    .end local v11           #belowIndex:I
    .restart local v10       #belowIndex:I
    if-lez v11, :cond_f

    .line 1822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget v12, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 1823
    .local v12, belowMode:I
    const/high16 v2, 0x80

    and-int/2addr v2, v12

    if-nez v2, :cond_e

    if-eqz v7, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v22

    move/from16 v0, v22

    if-le v2, v0, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v2, :cond_20

    .line 1827
    :cond_e
    const/4 v9, 0x1

    .line 1833
    .end local v12           #belowMode:I
    :cond_f
    const/4 v3, 0x1

    .line 1835
    if-nez v9, :cond_2

    .line 1836
    add-int/lit8 v17, v17, -0x1

    .line 1845
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    .end local v9           #bPinupWindow:Z
    .end local v10           #belowIndex:I
    .end local v14           #doThisProcess:Z
    .end local v16           #hasFullOpaqueFlag:Z
    .end local v19           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v20           #requestedFullOpaque:Z
    :cond_10
    :goto_5
    if-ltz v17, :cond_22

    .line 1846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 1851
    .restart local v6       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_12

    .line 1852
    if-eqz v3, :cond_21

    .line 1853
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_12

    .line 1856
    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1858
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1859
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v22

    if-eq v2, v0, :cond_11

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v22

    if-ne v2, v0, :cond_12

    :cond_11
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_12

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_12

    .line 1864
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1882
    :cond_12
    :goto_6
    add-int/lit8 v17, v17, -0x1

    goto :goto_5

    .line 1668
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1689
    .restart local v14       #doThisProcess:Z
    :catch_0
    move-exception v15

    .line 1692
    .local v15, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception thrown making hidden: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1702
    .end local v15           #e:Ljava/lang/Exception;
    :cond_14
    move-object/from16 v0, p2

    if-eq v6, v0, :cond_15

    if-eqz v14, :cond_15

    .line 1703
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 1706
    :cond_15
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_16

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_1d

    .line 1707
    :cond_16
    if-eqz p3, :cond_17

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1714
    :cond_17
    move-object/from16 v0, p2

    if-eq v6, v0, :cond_18

    .line 1715
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move/from16 v0, p4

    invoke-virtual {v6, v2, v0}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1717
    :cond_18
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_19

    .line 1720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1722
    :cond_19
    move-object/from16 v0, p2

    if-eq v6, v0, :cond_1a

    .line 1723
    const/4 v2, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v2, v1}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1759
    :cond_1a
    :goto_7
    iget v2, v6, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int p4, p4, v2

    .line 1762
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1763
    .local v8, activityMetaData:Landroid/os/Bundle;
    if-eqz v8, :cond_1b

    .line 1764
    const-string v2, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1765
    .local v21, style:Ljava/lang/String;
    const-string v2, "forceTitleBar"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget v2, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v22, 0x200

    move/from16 v0, v22

    if-ne v2, v0, :cond_1b

    .line 1767
    const/16 v18, 0x1

    .line 1771
    .end local v21           #style:Ljava/lang/String;
    :cond_1b
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v2, :cond_1c

    if-eqz v18, :cond_7

    .line 1772
    :cond_1c
    const/16 v18, 0x0

    .line 1773
    iget v2, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v22, 0x100

    move/from16 v0, v22

    if-ne v2, v0, :cond_1f

    .line 1774
    or-int/lit8 v4, v4, 0x1e

    .line 1778
    :goto_8
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v5, v2, :cond_7

    .line 1779
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    goto/16 :goto_3

    .line 1727
    .end local v8           #activityMetaData:Landroid/os/Bundle;
    :cond_1d
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1e

    .line 1732
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_7

    .line 1734
    :cond_1e
    if-nez p3, :cond_1a

    .line 1737
    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1738
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v22

    if-eq v2, v0, :cond_1a

    move-object/from16 v0, p2

    if-eq v6, v0, :cond_1a

    .line 1744
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1745
    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1746
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1747
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 1748
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 1749
    :catch_1
    move-exception v15

    .line 1752
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception thrown making visibile: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1776
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v8       #activityMetaData:Landroid/os/Bundle;
    :cond_1f
    iget v2, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v4, v2

    goto/16 :goto_8

    .end local v8           #activityMetaData:Landroid/os/Bundle;
    .restart local v9       #bPinupWindow:Z
    .restart local v10       #belowIndex:I
    .restart local v12       #belowMode:I
    .restart local v16       #hasFullOpaqueFlag:Z
    .restart local v19       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v20       #requestedFullOpaque:Z
    :cond_20
    move v11, v10

    .line 1830
    .end local v10           #belowIndex:I
    .restart local v11       #belowIndex:I
    goto/16 :goto_4

    .line 1866
    .end local v9           #bPinupWindow:Z
    .end local v11           #belowIndex:I
    .end local v12           #belowMode:I
    .end local v14           #doThisProcess:Z
    .end local v16           #hasFullOpaqueFlag:Z
    .end local v19           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v20           #requestedFullOpaque:Z
    :catch_2
    move-exception v15

    .line 1869
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception thrown making hidden: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1876
    .end local v15           #e:Ljava/lang/Exception;
    :cond_21
    iget-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_12

    .line 1879
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 1884
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    :cond_22
    return-void
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 7
    .parameter "r"
    .parameter "globalChanges"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6030
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v5, :cond_1

    .line 6142
    :cond_0
    :goto_0
    return v3

    .line 6041
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 6042
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v5, v1, :cond_2

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_0

    .line 6049
    :cond_2
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_3

    .line 6052
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 6058
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 6059
    .local v2, oldConfig:Landroid/content/res/Configuration;
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 6065
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 6066
    .local v0, changes:I
    if-nez v0, :cond_4

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_0

    .line 6074
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_6

    .line 6077
    :cond_5
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 6078
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    goto :goto_0

    .line 6089
    :cond_6
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    if-nez v5, :cond_7

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_c

    .line 6091
    :cond_7
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v0, v1}, Landroid/app/MiuiThemeHelper;->needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v5, v0

    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 6092
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v5, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 6093
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 6094
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_9

    .line 6097
    :cond_8
    const-string v5, "config"

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    :goto_1
    move v3, v4

    .line 6124
    goto :goto_0

    .line 6098
    :cond_9
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_a

    .line 6104
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    goto :goto_0

    .line 6106
    :cond_a
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_b

    .line 6113
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 6114
    iput v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 6118
    :cond_b
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 6119
    iput v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 6132
    :cond_c
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_d

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_d

    .line 6135
    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v6}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6140
    :cond_d
    :goto_2
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_0

    .line 6136
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method final finishActivityAffinityLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "token"

    .prologue
    const/4 v3, 0x0

    .line 4881
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 4884
    .local v2, index:I
    if-gez v2, :cond_0

    .line 4903
    :goto_0
    return v3

    .line 4887
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4889
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-ltz v2, :cond_1

    .line 4890
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4891
    .local v1, cur:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v4, :cond_2

    .line 4903
    .end local v1           #cur:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 4894
    .restart local v1       #cur:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4897
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4900
    :cond_4
    const/4 v4, 0x0

    const-string v5, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 4901
    add-int/lit8 v2, v2, -0x1

    .line 4902
    goto :goto_1
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 7
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    .line 4939
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->setForegroundProcess(Z)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 8
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"
    .parameter "immediate"

    .prologue
    .line 4948
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    .line 4949
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate finish request for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 4950
    const/4 v4, 0x0

    .line 5038
    :goto_0
    return v4

    .line 4954
    :cond_0
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    .line 4955
    .local v3, option:I
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x80

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->numActivities:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4958
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->moveMwPinupToFront()V

    .line 4962
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 4963
    const/16 v4, 0x7531

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p5, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4966
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p2, v4, :cond_3

    .line 4967
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4968
    .local v2, next:Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v5, :cond_3

    .line 4969
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_2

    .line 4971
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 4973
    :cond_2
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 4977
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4983
    .end local v2           #next:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_5

    if-lez p2, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v4, v5, :cond_5

    .line 4984
    :cond_4
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 4986
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v4}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizedSlot(I)V

    .line 4990
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 4991
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v4, :cond_6

    .line 4992
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_6

    .line 4993
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4997
    :cond_6
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4999
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 5003
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5006
    :cond_7
    if-eqz p6, :cond_9

    .line 5007
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 5009
    :cond_9
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_d

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_e

    .line 5010
    :cond_a
    if-lez p2, :cond_b

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v4, v5, :cond_f

    :cond_b
    const/4 v0, 0x1

    .line 5014
    .local v0, endTask:Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_10

    const/16 v4, 0x2009

    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5019
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 5022
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5025
    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 5038
    .end local v0           #endTask:Z
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 5009
    :cond_d
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v4, p1, :cond_a

    .line 5028
    :cond_e
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_c

    .line 5032
    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_12

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 5010
    :cond_f
    const/4 v0, 0x0

    goto :goto_1

    .line 5014
    .restart local v0       #endTask:Z
    :cond_10
    const/16 v4, 0x2007

    goto :goto_2

    .line 5022
    :cond_11
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_c

    goto :goto_3

    .line 5032
    .end local v0           #endTask:Z
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 7
    .parameter "r"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v6, 0x0

    .line 4908
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4909
    .local v0, resultTo:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 4913
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v1, :cond_0

    .line 4914
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 4918
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4920
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4927
    :cond_1
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4928
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4929
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4930
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4931
    return-void
.end method

.method final finishSubActivityLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .parameter "token"
    .parameter "resultWho"
    .parameter "requestCode"

    .prologue
    .line 4862
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 4863
    .local v6, self:Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_1

    .line 4878
    :cond_0
    return-void

    .line 4868
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 4869
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4870
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v6, :cond_4

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_4

    .line 4871
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4873
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "request-sub"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 4868
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public getFrontActivityPosition()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 4359
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 4360
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4361
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    const/high16 v7, 0x200

    if-ne v5, v7, :cond_1

    .line 4362
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v2

    .line 4363
    .local v2, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v5, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 4365
    .local v4, winInfo:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 4366
    .local v1, lastSize:Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 4367
    const-string v5, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 4369
    .restart local v1       #lastSize:Landroid/graphics/Rect;
    :cond_0
    monitor-exit v6

    .line 4375
    .end local v1           #lastSize:Landroid/graphics/Rect;
    .end local v2           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v4           #winInfo:Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 4372
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4373
    .local v0, fullscreen:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 4375
    new-instance v1, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    monitor-exit v6

    goto :goto_0

    .line 4376
    .end local v0           #fullscreen:Landroid/graphics/Point;
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;
    .locals 13
    .parameter "taskId"
    .parameter "inclThumbs"

    .prologue
    .line 5925
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5926
    .local v7, resumed:Lcom/android/server/am/ActivityRecord;
    new-instance v11, Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {v11}, Lcom/android/server/am/TaskAccessInfo;-><init>()V

    .line 5928
    .local v11, thumbs:Lcom/android/server/am/TaskAccessInfo;
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5929
    .local v0, NA:I
    const/4 v4, 0x0

    .line 5930
    .local v4, j:I
    const/4 v2, 0x0

    .line 5931
    .local v2, holder:Lcom/android/server/am/ThumbnailHolder;
    :goto_0
    if-ge v4, v0, :cond_0

    .line 5932
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5933
    .local v1, ar:Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_2

    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v12, p1, :cond_2

    .line 5934
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 5940
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-lt v4, v0, :cond_3

    .line 5999
    :cond_1
    :goto_1
    return-object v11

    .line 5937
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 5938
    goto :goto_0

    .line 5944
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iput-object v12, v11, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    .line 5945
    iput v4, v11, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    .line 5947
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5948
    .local v10, subtasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/TaskAccessInfo$SubTask;>;"
    iput-object v10, v11, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    .line 5949
    const/4 v5, 0x0

    .line 5950
    .local v5, lastActivity:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_2
    if-ge v4, v0, :cond_5

    .line 5951
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5952
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v4, v4, 0x1

    .line 5953
    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_4

    .line 5956
    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v12, p1, :cond_8

    .line 5970
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 5972
    iget-boolean v12, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v12, :cond_9

    .line 5973
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v8

    .line 5974
    .local v8, resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 5975
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    if-ne v6, v5, :cond_6

    .line 5976
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 5977
    .local v9, sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v12, v5, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12, v5}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v9, Lcom/android/server/am/TaskAccessInfo$SubTask;->thumbnail:Landroid/graphics/Bitmap;

    .line 5989
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    .end local v8           #resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v9           #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    :cond_7
    :goto_3
    iget v12, v11, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    if-lez v12, :cond_1

    .line 5990
    new-instance v12, Lcom/android/server/am/ActivityStack$4;

    invoke-direct {v12, p0, v11}, Lcom/android/server/am/ActivityStack$4;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskAccessInfo;)V

    iput-object v12, v11, Lcom/android/server/am/TaskAccessInfo;->retriever:Landroid/app/IThumbnailRetriever;

    goto :goto_1

    .line 5959
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object v5, v1

    .line 5960
    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eq v12, v2, :cond_4

    if-eqz v2, :cond_4

    .line 5961
    iget v12, v11, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    .line 5962
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 5963
    new-instance v9, Lcom/android/server/am/TaskAccessInfo$SubTask;

    invoke-direct {v9}, Lcom/android/server/am/TaskAccessInfo$SubTask;-><init>()V

    .line 5964
    .restart local v9       #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v12, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v12, v9, Lcom/android/server/am/TaskAccessInfo$SubTask;->thumbnail:Landroid/graphics/Bitmap;

    .line 5965
    iput-object v1, v9, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    .line 5966
    add-int/lit8 v12, v4, -0x1

    iput v12, v9, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    .line 5967
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5982
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    .end local v9           #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    :cond_9
    if-ne v7, v5, :cond_7

    .line 5983
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 5984
    .restart local v9       #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v12, v5, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12, v5}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v9, Lcom/android/server/am/TaskAccessInfo$SubTask;->thumbnail:Landroid/graphics/Bitmap;

    goto :goto_3
.end method

.method public getTaskThumbnailsLocked(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$TaskThumbnails;
    .locals 6
    .parameter "tr"

    .prologue
    .line 5867
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v1

    .line 5869
    .local v1, info:Lcom/android/server/am/TaskAccessInfo;
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_1

    .line 5870
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    .line 5871
    .local v3, resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5872
    .local v2, resumed:Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, p1, :cond_0

    .line 5873
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 5885
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #resumedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :goto_0
    return-object v1

    .line 5879
    .end local v2           #resumed:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5880
    .restart local v2       #resumed:Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, p1, :cond_2

    .line 5881
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 5883
    :cond_2
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 6
    .parameter "token"

    .prologue
    .line 4329
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 4330
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 4331
    .local v0, index:I
    if-gez v0, :cond_0

    .line 4332
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4

    .line 4337
    :goto_0
    return-object v3

    .line 4334
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4336
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 4337
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v5}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 4338
    .end local v0           #index:I
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getWindowMode(Landroid/os/IBinder;)I
    .locals 4
    .parameter "token"

    .prologue
    .line 4318
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4319
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 4320
    .local v0, index:I
    if-gez v0, :cond_0

    .line 4321
    const/high16 v2, 0x100

    monitor-exit v3

    .line 4324
    :goto_0
    return v2

    .line 4323
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4324
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    monitor-exit v3

    goto :goto_0

    .line 4325
    .end local v0           #index:I
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method final indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .parameter "r"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final indexOfTokenLocked(Landroid/os/IBinder;)I
    .locals 2
    .parameter "token"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "token"

    .prologue
    .line 622
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 623
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v0

    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isTaskResumed(I)Z
    .locals 6
    .parameter "taskID"

    .prologue
    .line 2590
    const/4 v3, 0x0

    .line 2591
    .local v3, resumed:Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2593
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 2594
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2595
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, p1, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_1

    .line 2596
    const/4 v3, 0x1

    .line 2601
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    return v3

    .line 2593
    .restart local v2       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method final moveHomeToFrontFromLaunchLocked(I)V
    .locals 2
    .parameter "launchFlags"

    .prologue
    const v1, 0x10004000

    .line 3473
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    .line 3478
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontLocked()V

    .line 3480
    :cond_0
    return-void
.end method

.method final moveHomeToFrontLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5465
    const/4 v0, 0x0

    .line 5466
    .local v0, homeTask:Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 5467
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5468
    .local v1, hr:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_2

    .line 5469
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 5473
    .end local v1           #hr:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v0, :cond_1

    .line 5474
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 5476
    :cond_1
    return-void

    .line 5466
    .restart local v1       #hr:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public moveMwAppTokensToTopLocked()V
    .locals 8

    .prologue
    .line 5416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5420
    .local v0, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 5421
    .local v4, top:I
    move v2, v4

    .line 5422
    .local v2, pos:I
    if-gez v4, :cond_1

    .line 5441
    :cond_0
    :goto_0
    return-void

    .line 5427
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5428
    .local v5, topRecord:Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-ltz v2, :cond_3

    .line 5429
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5430
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget v6, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 5431
    .local v1, option:I
    const/high16 v6, 0x80

    and-int/2addr v6, v1

    if-eqz v6, :cond_2

    const/high16 v6, 0x8

    and-int/2addr v6, v1

    if-nez v6, :cond_2

    .line 5433
    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5435
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 5436
    goto :goto_1

    .line 5438
    .end local v1           #option:I
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 5439
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    goto :goto_0
.end method

.method final moveTaskToBackLocked(ILcom/android/server/am/ActivityRecord;)Z
    .locals 13
    .parameter "task"
    .parameter "reason"

    .prologue
    .line 5770
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "moveTaskToBack: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5775
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v10, :cond_1

    .line 5776
    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 5777
    .local v7, next:Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_0

    .line 5778
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 5780
    :cond_0
    if-eqz v7, :cond_1

    .line 5782
    const/4 v4, 0x1

    .line 5784
    .local v4, moveOK:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 5788
    :goto_0
    if-nez v4, :cond_1

    .line 5789
    const/4 v10, 0x0

    .line 5863
    .end local v4           #moveOK:Z
    .end local v7           #next:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v10

    .line 5785
    .restart local v4       #moveOK:Z
    .restart local v7       #next:Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v2

    .line 5786
    .local v2, e:Landroid/os/RemoteException;
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_0

    .line 5794
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #moveOK:Z
    .end local v7           #next:Lcom/android/server/am/ActivityRecord;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5799
    .local v5, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5800
    .local v0, N:I
    const/4 v1, 0x0

    .line 5801
    .local v1, bottom:I
    const/4 v8, 0x0

    .line 5803
    .local v8, pos:I
    const/4 v3, 0x0

    .line 5808
    .local v3, frontActivity:Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-ge v8, v0, :cond_3

    .line 5809
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 5812
    .local v9, r:Lcom/android/server/am/ActivityRecord;
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v10, p1, :cond_2

    .line 5820
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5821
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5822
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5823
    iget v10, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v11, 0x8

    or-int/2addr v10, v11

    iput v10, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5824
    add-int/lit8 v1, v1, 0x1

    .line 5827
    iget-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v10, :cond_2

    .line 5828
    move-object v3, v9

    .line 5832
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 5833
    goto :goto_2

    .line 5836
    .end local v9           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_4

    if-eqz v3, :cond_4

    .line 5837
    iget v10, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v10}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v10

    const/high16 v11, 0x10

    and-int/2addr v10, v11

    if-eqz v10, :cond_4

    .line 5839
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v6

    .line 5840
    .local v6, mw:Lcom/android/server/am/MultiWindowManagerService;
    invoke-virtual {v6, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizedSlot(I)V

    .line 5845
    .end local v6           #mw:Lcom/android/server/am/MultiWindowManagerService;
    :cond_4
    if-eqz p2, :cond_6

    iget-object v10, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x1

    and-int/2addr v10, v11

    if-eqz v10, :cond_6

    .line 5847
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5849
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 5850
    .restart local v9       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_5

    .line 5851
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5857
    .end local v9           #r:Lcom/android/server/am/ActivityRecord;
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 5862
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 5863
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 5854
    :cond_6
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v11, 0x200b

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .locals 1
    .parameter "tr"
    .parameter "reason"
    .parameter "options"

    .prologue
    .line 5521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V

    .line 5522
    return-void
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V
    .locals 35
    .parameter "tr"
    .parameter "reason"
    .parameter "options"
    .parameter "flags"

    .prologue
    .line 5527
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v25, v0

    .line 5528
    .local v25, task:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v27, v32, -0x1

    .line 5529
    .local v27, top:I
    const/4 v8, 0x0

    .line 5530
    .local v8, hasMetHome:Z
    const/4 v9, 0x0

    .line 5531
    .local v9, homeActivity:Lcom/android/server/am/ActivityRecord;
    const/4 v10, -0x1

    .line 5533
    .local v10, homeTask:I
    if-ltz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 5535
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getFlags()I

    move-result v32

    const/high16 v33, 0x1

    and-int v32, v32, v33

    if-eqz v32, :cond_1

    .line 5536
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 5542
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v32

    if-nez v32, :cond_2

    .line 5752
    :goto_1
    return-void

    .line 5538
    :cond_1
    const/16 v32, 0x100a

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 5548
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5552
    .local v15, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v27, v32, -0x1

    .line 5553
    move/from16 v20, v27

    .line 5556
    .local v20, pos:I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 5557
    .local v19, pinupmoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5558
    .local v6, freemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v5, 0x0

    .line 5559
    .local v5, bMoveTask:Z
    const/high16 v22, 0x100

    .line 5560
    .local v22, reasonWindowMode:I
    const/16 v23, 0x0

    .line 5561
    .local v23, reasonWindowZone:I
    if-eqz p2, :cond_3

    .line 5562
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v22

    .line 5563
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 5566
    :cond_3
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move/from16 v0, v27

    if-ge v11, v0, :cond_4

    .line 5567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityRecord;

    .line 5568
    .local v21, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    .line 5569
    move-object/from16 v9, v21

    .line 5570
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v10, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 5578
    .end local v21           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_3
    if-ltz v20, :cond_19

    .line 5579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityRecord;

    .line 5581
    .restart local v21       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v18

    .line 5585
    .local v18, option:I
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 5593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5595
    const/16 v32, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v33, v0

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5596
    add-int/lit8 v27, v27, -0x1

    .line 5599
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v17, v0

    .line 5600
    .local v17, oldWindowMode:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v14

    .line 5601
    .local v14, mode:I
    const/16 v29, 0x0

    .line 5602
    .local v29, windowPosition:Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v16

    .line 5604
    .local v16, mw:Lcom/android/server/am/MultiWindowManagerService;
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    .line 5605
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v0, v10, :cond_5

    .line 5606
    const/4 v8, 0x1

    .line 5609
    :cond_5
    const/high16 v32, 0x8

    and-int v32, v32, v18

    if-eqz v32, :cond_f

    .line 5610
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const v33, -0x80001

    and-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5615
    :cond_6
    :goto_4
    const/high16 v32, 0x200

    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 5617
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const/high16 v33, 0x20

    and-int v32, v32, v33

    if-eqz v32, :cond_9

    .line 5618
    const/high16 v32, 0x100

    move/from16 v0, v32

    if-ne v14, v0, :cond_7

    .line 5619
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5622
    :cond_7
    if-eqz v23, :cond_10

    .line 5623
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    move/from16 v0, v32

    and-int/lit16 v0, v0, -0x100

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5624
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    or-int v32, v32, v23

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5625
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5630
    :cond_8
    :goto_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    .line 5631
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v29

    .line 5632
    if-eqz v29, :cond_9

    .line 5633
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v28

    .line 5634
    .local v28, windowInfo:Landroid/os/Bundle;
    const-string v32, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5667
    .end local v28           #windowInfo:Landroid/os/Bundle;
    :cond_9
    :goto_6
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    if-eqz v29, :cond_b

    .line 5668
    :cond_a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 5669
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 5673
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 5674
    if-nez p2, :cond_c

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v32

    const/high16 v33, 0x200

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    .line 5676
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    .line 5677
    .local v30, zoneInfo:I
    if-eqz v30, :cond_c

    const/16 v32, 0x1e

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_c

    .line 5679
    xor-int/lit8 v32, v30, -0x1

    and-int/lit8 v24, v32, 0x1e

    .line 5680
    .local v24, reverseZone:I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontZoneActivity(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v31

    .line 5681
    .local v31, zoneRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz v31, :cond_c

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_c

    .line 5682
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 5683
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 5689
    .end local v24           #reverseZone:I
    .end local v30           #zoneInfo:I
    .end local v31           #zoneRecord:Lcom/android/server/am/ActivityRecord;
    :cond_c
    const/high16 v32, 0x80

    and-int v32, v32, v18

    if-nez v32, :cond_d

    .line 5690
    const/4 v5, 0x1

    .line 5710
    .end local v14           #mode:I
    .end local v16           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v17           #oldWindowMode:I
    .end local v29           #windowPosition:Landroid/graphics/Rect;
    :cond_d
    :goto_7
    add-int/lit8 v20, v20, -0x1

    .line 5711
    goto/16 :goto_3

    .line 5566
    .end local v18           #option:I
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 5611
    .restart local v14       #mode:I
    .restart local v16       #mw:Lcom/android/server/am/MultiWindowManagerService;
    .restart local v17       #oldWindowMode:I
    .restart local v18       #option:I
    .restart local v29       #windowPosition:Landroid/graphics/Rect;
    :cond_f
    const/high16 v32, 0x10

    and-int v32, v32, v18

    if-eqz v32, :cond_6

    .line 5612
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const v33, -0x100001

    and-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_4

    .line 5626
    :cond_10
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const/high16 v33, 0x80

    and-int v32, v32, v33

    if-nez v32, :cond_8

    .line 5627
    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    goto/16 :goto_5

    .line 5638
    :cond_11
    const/high16 v32, 0x200

    move/from16 v0, v32

    if-ne v14, v0, :cond_9

    .line 5647
    if-eqz p2, :cond_12

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getFlags()I

    move-result v32

    const/high16 v33, 0x40

    and-int v32, v32, v33

    if-eqz v32, :cond_12

    const/high16 v32, 0x100

    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 5650
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const v33, 0x23e000

    and-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 5651
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    const/high16 v33, 0x100

    or-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_6

    .line 5653
    :cond_12
    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 5657
    .local v7, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v13, 0x0

    .line 5658
    .local v13, isFrontResumed:Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_13
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ActivityRecord;

    .line 5659
    .local v26, temp:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v32, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 5660
    const/4 v13, 0x1

    goto :goto_8

    .line 5662
    .end local v26           #temp:Lcom/android/server/am/ActivityRecord;
    :cond_14
    if-nez v13, :cond_9

    .line 5663
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    goto/16 :goto_6

    .line 5695
    .end local v7           #frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #isFrontResumed:Z
    .end local v14           #mode:I
    .end local v16           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v17           #oldWindowMode:I
    .end local v29           #windowPosition:Landroid/graphics/Rect;
    :cond_15
    const/high16 v32, 0x80

    and-int v32, v32, v18

    if-eqz v32, :cond_16

    const/high16 v32, 0x8

    and-int v32, v32, v18

    if-nez v32, :cond_16

    .line 5696
    const/16 v32, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 5697
    :cond_16
    const/high16 v32, 0x10

    and-int v32, v32, v18

    if-eqz v32, :cond_17

    .line 5698
    move/from16 v0, v25

    if-ne v0, v10, :cond_d

    .line 5699
    const/16 v32, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 5701
    :cond_17
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v32

    const/high16 v33, 0x200

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 5702
    move/from16 v0, v25

    if-ne v0, v10, :cond_d

    and-int/lit8 v32, p4, 0x2

    if-eqz v32, :cond_d

    .line 5703
    if-eqz v8, :cond_18

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    move/from16 v32, v0

    if-eqz v32, :cond_d

    .line 5704
    :cond_18
    const/16 v32, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v33, v0

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5705
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    goto/16 :goto_7

    .line 5715
    .end local v18           #option:I
    .end local v21           #r:Lcom/android/server/am/ActivityRecord;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1a

    .line 5716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 5722
    :cond_1a
    if-eqz p2, :cond_1e

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getFlags()I

    move-result v32

    const/high16 v33, 0x1

    and-int v32, v32, v33

    if-eqz v32, :cond_1e

    .line 5724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5726
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 5727
    .restart local v21       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v21, :cond_1b

    .line 5728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5730
    :cond_1b
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 5735
    .end local v21           #r:Lcom/android/server/am/ActivityRecord;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 5737
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_1c

    .line 5738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 5741
    :cond_1c
    if-eqz v5, :cond_1d

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_1d

    .line 5742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 5750
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 5751
    const/16 v32, 0x7532

    move/from16 v0, v32

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    goto/16 :goto_1

    .line 5732
    :cond_1e
    const/16 v32, 0x100a

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_9
.end method

.method final needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 11
    .parameter "reason"
    .parameter "taskId"

    .prologue
    const/4 v7, 0x0

    const v10, -0x23e001

    const/4 v8, 0x1

    .line 5492
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5518
    :cond_0
    :goto_0
    return v7

    .line 5496
    :cond_1
    if-eqz p1, :cond_0

    .line 5497
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getWindowMode()I

    move-result v4

    .line 5498
    .local v4, reasonMode:I
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_2

    move v7, v8

    .line 5499
    goto :goto_0

    .line 5500
    :cond_2
    if-eqz v4, :cond_0

    .line 5501
    and-int/lit16 v6, v4, 0xff

    .line 5502
    .local v6, reasonZone:I
    and-int v5, v4, v10

    .line 5504
    .local v5, reasonOption:I
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5505
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, p2, :cond_3

    .line 5506
    iget v9, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v1, v9, 0xff

    .line 5507
    .local v1, currentZone:I
    iget v9, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int v0, v9, v10

    .line 5508
    .local v0, currentOption:I
    if-eqz v6, :cond_4

    if-eq v1, v6, :cond_4

    move v7, v8

    .line 5509
    goto :goto_0

    .line 5510
    :cond_4
    if-eq v5, v0, :cond_0

    move v7, v8

    .line 5511
    goto :goto_0
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 8
    .parameter "remove"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4637
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4638
    .local v0, N:I
    if-gtz v0, :cond_1

    const/4 v4, 0x0

    .line 4681
    :cond_0
    return-object v4

    .line 4640
    :cond_1
    const/4 v4, 0x0

    .line 4643
    .local v4, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v7, :cond_7

    move v2, v5

    .line 4646
    .local v2, nowVisible:Z
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v7, :cond_2

    .line 4648
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    move v2, v5

    .line 4651
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 4652
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4656
    .local v3, s:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 4657
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4658
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 4659
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_3

    .line 4666
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4669
    :cond_3
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    if-eqz p1, :cond_6

    .line 4671
    if-nez v4, :cond_5

    .line 4672
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4674
    .restart local v4       #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4675
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4676
    add-int/lit8 v0, v0, -0x1

    .line 4677
    add-int/lit8 v1, v1, -0x1

    .line 4651
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #nowVisible:Z
    .end local v3           #s:Lcom/android/server/am/ActivityRecord;
    :cond_7
    move v2, v6

    .line 4643
    goto :goto_0

    .restart local v2       #nowVisible:Z
    :cond_8
    move v2, v6

    .line 4648
    goto :goto_1
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    .locals 21
    .parameter "r"
    .parameter "app"
    .parameter "andResume"
    .parameter "checkConfig"
    .parameter "pauseJIT"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 757
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 761
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 769
    if-eqz p4, :cond_0

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v17

    .line 773
    .local v17, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 776
    .end local v17           #config:Landroid/content/res/Configuration;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 777
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 781
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 782
    .local v19, idx:I
    if-gez v19, :cond_1

    .line 783
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 788
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_3

    .line 789
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :catch_0
    move-exception v18

    .line 867
    .local v18, e:Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v2, :cond_11

    .line 870
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second failure launching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", giving up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 874
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "2nd-crash"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 876
    const/4 v2, 0x0

    .line 929
    .end local v18           #e:Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 770
    .end local v19           #idx:I
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 791
    .restart local v19       #idx:I
    :cond_3
    const/4 v10, 0x0

    .line 792
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v11, 0x0

    .line 793
    .local v11, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_4

    .line 794
    :try_start_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 795
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 801
    :cond_4
    if-eqz p3, :cond_5

    .line 802
    const/16 v2, 0x7536

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 806
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_6

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 809
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 810
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 811
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 812
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 814
    const/4 v14, 0x0

    .line 815
    .local v14, profileFile:Ljava/lang/String;
    const/4 v15, 0x0

    .line 816
    .local v15, profileFd:Landroid/os/ParcelFileDescriptor;
    const/16 v16, 0x0

    .line 817
    .local v16, profileAutoStop:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_8

    .line 819
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move/from16 v16, v0

    .line 825
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 826
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 827
    if-eqz v15, :cond_9

    .line 829
    :try_start_2
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v15

    .line 835
    :cond_9
    :goto_2
    if-eqz p5, :cond_a

    .line 836
    :try_start_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const-wide/16 v3, 0x3

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->requestDelayJITCompilation(J)V

    .line 839
    :cond_a
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    if-nez p3, :cond_10

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v13

    invoke-interface/range {v2 .. v16}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 846
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 851
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_b

    .line 854
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when already running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 861
    .local v20, msg:Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 887
    .end local v20           #msg:Landroid/os/Message;
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 888
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 889
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " being launched, but already in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_d
    if-eqz p3, :cond_12

    .line 896
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 899
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 900
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 901
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 902
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_e

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 905
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 908
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 909
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 925
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_f

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 929
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 830
    :catch_1
    move-exception v18

    .line 831
    .local v18, e:Ljava/io/IOException;
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 839
    .end local v18           #e:Ljava/io/IOException;
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 881
    .end local v10           #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11           #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #profileAutoStop:Z
    .local v18, e:Landroid/os/RemoteException;
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 882
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 883
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 884
    throw v18

    .line 917
    .end local v18           #e:Landroid/os/RemoteException;
    .restart local v10       #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11       #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v14       #profileFile:Ljava/lang/String;
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #profileAutoStop:Z
    :cond_12
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 918
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_4
.end method

.method final removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 5178
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    .line 5179
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 5180
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 5186
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5187
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 5190
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5191
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 5195
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5196
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 5198
    :cond_0
    return-void
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 5407
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 5408
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 5409
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 5410
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 5411
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 5412
    return-void
.end method

.method public removeTaskActivitiesLocked(IIZ)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "taskId"
    .parameter "subTaskIndex"
    .parameter "taskRequired"

    .prologue
    const/4 v3, 0x0

    .line 5890
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 5891
    .local v0, info:Lcom/android/server/am/TaskAccessInfo;
    iget-object v4, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_1

    .line 5892
    if-eqz p3, :cond_0

    .line 5893
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTaskLocked: unknown taskId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5921
    :cond_0
    :goto_0
    return-object v3

    .line 5898
    :cond_1
    if-gez p2, :cond_3

    .line 5900
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_2

    .line 5901
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 5902
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeWindowInfo(I)V

    .line 5907
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    :cond_2
    iget v3, v0, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 5908
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 5911
    :cond_3
    iget-object v4, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p2, v4, :cond_4

    .line 5912
    if-eqz p3, :cond_0

    .line 5913
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTaskLocked: unknown subTaskIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5919
    :cond_4
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 5920
    .local v2, subtask:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget v3, v2, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 5921
    iget-object v3, v2, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    goto :goto_0
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 5
    .parameter "timeout"
    .parameter "r"
    .parameter "thisTime"
    .parameter "totalTime"

    .prologue
    .line 4170
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4171
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 4172
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 4173
    if-eqz p2, :cond_0

    .line 4174
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 4176
    :cond_0
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 4177
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 4170
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4179
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 4180
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .parameter "r"

    .prologue
    const/4 v6, 0x0

    .line 4183
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4184
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 4185
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean v6, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 4186
    if-eqz p1, :cond_0

    .line 4187
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 4189
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 4190
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 4183
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4192
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 4194
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v2, :cond_2

    .line 4195
    iput-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 4196
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 4198
    :cond_2
    return-void
.end method

.method public requestFakeOpaqueFull(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "requestFullOpaque"

    .prologue
    .line 6401
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 6402
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 6403
    .local v0, index:I
    if-gez v0, :cond_0

    .line 6404
    monitor-exit v3

    .line 6410
    :goto_0
    return-void

    .line 6406
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 6407
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iput-boolean p2, v1, Lcom/android/server/am/ActivityRecord;->requestedFullOpaque:Z

    .line 6408
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 6409
    monitor-exit v3

    goto :goto_0

    .end local v0           #index:I
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 6
    .parameter "token"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    .line 4847
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 4852
    .local v2, index:I
    if-gez v2, :cond_0

    .line 4853
    const/4 v0, 0x0

    .line 4858
    :goto_0
    return v0

    .line 4855
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, r:Lcom/android/server/am/ActivityRecord;
    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 4857
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 4858
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resizeArrangedWindow(IILandroid/graphics/Rect;)V
    .locals 9
    .parameter "direction"
    .parameter "type"
    .parameter "rect"

    .prologue
    .line 4527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4529
    .local v2, origId:J
    const/16 v6, 0x1e

    if-ne p2, v6, :cond_1

    .line 4531
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4532
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v7, 0xffff00

    and-int/2addr v6, v7

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4533
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v7, 0x100

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4534
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 4535
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 4536
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4572
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4574
    return-void

    .line 4537
    :cond_1
    and-int/lit16 v6, p2, 0xff

    if-eqz v6, :cond_5

    .line 4538
    :try_start_1
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 4539
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v5

    .line 4540
    .local v5, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4541
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4542
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 4543
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v6, v6, -0x100

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4544
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v6, v6, 0x18

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4572
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    .end local v5           #resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 4545
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #mw:Lcom/android/server/am/MultiWindowManagerService;
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v5       #resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_3
    :try_start_2
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x18

    if-ne v6, v7, :cond_2

    .line 4546
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v6, v6, -0x100

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4547
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v6, v6, 0x6

    iput v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_0

    .line 4551
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->arrange:I

    invoke-virtual {v1, v6, v7, v5}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    .line 4553
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4554
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 4555
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto :goto_1

    .line 4560
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    .end local v5           #resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_5
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 4562
    .restart local v1       #mw:Lcom/android/server/am/MultiWindowManagerService;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v5

    .line 4563
    .restart local v5       #resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4564
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->arrange:I

    invoke-virtual {v1, v6, v7, v5}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    .line 4565
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4566
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "userId"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 3881
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10480

    invoke-interface {v0, p1, p2, v1, p6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 3889
    .local v8, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_3

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3894
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    .local v6, aInfo:Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v6, :cond_2

    .line 3899
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3903
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 3904
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3905
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 3909
    :cond_0
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    .line 3910
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3911
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 3915
    :cond_1
    if-eqz p4, :cond_2

    .line 3916
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3917
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_4

    :goto_1
    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 3923
    :cond_2
    return-object v6

    .line 3889
    .end local v6           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v8       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 3890
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    .line 3891
    .local v7, e:Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .end local v7           #e:Landroid/os/RemoteException;
    :cond_4
    move v5, v3

    .line 3917
    goto :goto_1
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .parameter "prev"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "prev"
    .parameter "options"

    .prologue
    const/4 v5, 0x0

    .line 1918
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_4

    .line 1921
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    .line 1922
    .local v3, resumes:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v2, 0x0

    .line 1923
    .local v2, resumed:Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1924
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->arrangedWindowStateLocked(Ljava/util/List;)V

    .line 1925
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1926
    .local v1, next:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1927
    const/4 v2, 0x1

    goto :goto_0

    .line 1930
    .end local v1           #next:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-nez v2, :cond_2

    .line 1931
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1938
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #resumed:Z
    .end local v3           #resumes:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_2
    :goto_1
    return v2

    .line 1934
    .restart local v2       #resumed:Z
    .restart local v3       #resumes:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_3
    invoke-virtual {p0, p1, p2, v5, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v2

    goto :goto_1

    .line 1938
    .end local v2           #resumed:Z
    .end local v3           #resumes:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_4
    invoke-virtual {p0, p1, p2, v5, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v2

    goto :goto_1
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z
    .locals 29
    .parameter "prev"
    .parameter "options"
    .parameter "next"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1944
    .local p4, resumes:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p3, :cond_0

    .line 1945
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object p3

    .line 1951
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    move/from16 v28, v0

    .line 1952
    .local v28, userLeaving:Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 1954
    if-nez p3, :cond_1

    .line 1957
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_1

    .line 1958
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v3

    .line 2389
    :goto_0
    return v3

    .line 1963
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1966
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_5

    .line 1971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1973
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1976
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_9

    .line 1977
    const/16 v26, 0x0

    .line 1978
    .local v26, startPausing:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v24

    .line 1979
    .local v24, resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityRecord;

    .line 1980
    .local v25, rs:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1982
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1983
    const/16 v26, 0x1

    goto :goto_1

    .line 1966
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v24           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v25           #rs:Lcom/android/server/am/ActivityRecord;
    .end local v26           #startPausing:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    if-eq v3, v0, :cond_2

    .line 2005
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v3, :cond_b

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    if-ne v3, v0, :cond_b

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_b

    .line 2012
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2014
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2015
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1988
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v24       #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #startPausing:Z
    :cond_8
    if-nez v26, :cond_9

    .line 1989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_9

    .line 1990
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 1996
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v24           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v26           #startPausing:Z
    :cond_9
    if-eqz p1, :cond_a

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_a

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_a

    .line 1997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2000
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2020
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2022
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2025
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2032
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_c

    .line 2033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2035
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2038
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_d

    .line 2040
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2077
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_10

    .line 2078
    const/16 v26, 0x0

    .line 2079
    .restart local v26       #startPausing:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v24

    .line 2080
    .restart local v24       #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityRecord;

    .line 2081
    .restart local v25       #rs:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2083
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2084
    const/16 v26, 0x1

    goto :goto_2

    .line 2087
    .end local v25           #rs:Lcom/android/server/am/ActivityRecord;
    :cond_f
    if-eqz v26, :cond_11

    .line 2088
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2091
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v24           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v26           #startPausing:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_11

    .line 2093
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 2094
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2101
    :cond_11
    :try_start_0
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v3, :cond_12

    .line 2102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 2112
    :cond_12
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    .line 2113
    .local v19, last:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-eqz v3, :cond_14

    if-eqz v19, :cond_14

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_14

    .line 2114
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x4000

    and-int/2addr v3, v4

    if-nez v3, :cond_13

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_14

    .line 2119
    :cond_13
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "no-history"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 2124
    :cond_14
    if-eqz p1, :cond_15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_15

    .line 2125
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v3, :cond_1c

    if-eqz p3, :cond_1c

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_1c

    .line 2126
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 2127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2157
    :cond_15
    :goto_4
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2168
    :goto_5
    const/16 v23, 0x0

    .line 2169
    .local v23, noAnim:Z
    if-eqz p1, :cond_22

    .line 2170
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1f

    .line 2173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2181
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 2182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2212
    :cond_16
    :goto_7
    if-nez v23, :cond_24

    .line 2213
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 2218
    :goto_8
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2c

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2c

    .line 2222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2225
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v20, v0

    .line 2228
    .local v20, lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    .line 2230
    .local v21, lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2233
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2234
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2235
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 2236
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_17

    .line 2237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2239
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 2240
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2244
    const/16 v27, 0x0

    .line 2245
    .local v27, updated:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_19

    .line 2246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2247
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_9
    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v16

    .line 2250
    .local v16, config:Landroid/content/res/Configuration;
    if-eqz v16, :cond_18

    .line 2251
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2253
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v27

    .line 2254
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2256
    .end local v16           #config:Landroid/content/res/Configuration;
    :cond_19
    if-nez v27, :cond_27

    .line 2263
    const/16 v22, 0x0

    .line 2264
    .local v22, nextNext:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_26

    .line 2265
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNextActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 2273
    :goto_a
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_1a

    .line 2275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2279
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_1b

    .line 2280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2283
    :cond_1b
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2286
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2139
    .end local v20           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v21           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v22           #nextNext:Lcom/android/server/am/ActivityRecord;
    .end local v23           #noAnim:Z
    .end local v27           #updated:Z
    :cond_1c
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_15

    .line 2140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_4

    .line 2160
    :catch_0
    move-exception v17

    .line 2161
    .local v17, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2177
    .end local v17           #e:Ljava/lang/IllegalArgumentException;
    .restart local v23       #noAnim:Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_1e

    const/16 v3, 0x2007

    :goto_b
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_6

    :cond_1e
    const/16 v3, 0x2009

    goto :goto_b

    .line 2186
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2187
    const/16 v23, 0x1

    .line 2188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_7

    .line 2191
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_21

    const/16 v3, 0x1006

    :goto_c
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_7

    :cond_21
    const/16 v3, 0x1008

    goto :goto_c

    .line 2200
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_16

    .line 2203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2204
    const/16 v23, 0x1

    .line 2205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_7

    .line 2208
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x1006

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_7

    .line 2215
    :cond_24
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_8

    .line 2247
    .restart local v20       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v21       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v27       #updated:Z
    :cond_25
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 2254
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2267
    .restart local v22       #nextNext:Lcom/android/server/am/ActivityRecord;
    :cond_26
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    goto/16 :goto_a

    .line 2291
    .end local v22           #nextNext:Lcom/android/server/am/ActivityRecord;
    :cond_27
    :try_start_4
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2292
    .local v15, a:Ljava/util/ArrayList;
    if-eqz v15, :cond_28

    .line 2293
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2294
    .local v14, N:I
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_28

    if-lez v14, :cond_28

    .line 2298
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v15}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2302
    .end local v14           #N:I
    :cond_28
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_29

    .line 2303
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 2306
    :cond_29
    const/16 v3, 0x7537

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2310
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2311
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2312
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2313
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 2316
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2349
    const/4 v3, 0x1

    :try_start_5
    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2350
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2362
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2363
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 2364
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2389
    .end local v15           #a:Ljava/util/ArrayList;
    .end local v20           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v21           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v27           #updated:Z
    :goto_d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2318
    .restart local v20       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v21       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v27       #updated:Z
    :catch_1
    move-exception v17

    .line 2322
    .local v17, e:Ljava/lang/Exception;
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2323
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2324
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_2b

    .line 2326
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2342
    :cond_2a
    :goto_e
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2343
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2328
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_2a

    .line 2330
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_2a

    .line 2332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_e

    .line 2351
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v15       #a:Ljava/util/ArrayList;
    :catch_2
    move-exception v17

    .line 2354
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2355
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "resume-exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 2357
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2368
    .end local v15           #a:Ljava/util/ArrayList;
    .end local v17           #e:Ljava/lang/Exception;
    .end local v20           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v21           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v27           #updated:Z
    :cond_2c
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_2e

    .line 2369
    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2386
    :cond_2d
    :goto_f
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_d

    .line 2373
    :cond_2e
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_2d

    .line 2375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_f

    .line 2159
    .end local v23           #noAnim:Z
    :catch_3
    move-exception v3

    goto/16 :goto_5

    .line 2104
    .end local v19           #last:Lcom/android/server/am/ActivityRecord;
    :catch_4
    move-exception v3

    goto/16 :goto_3
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 3
    .parameter "owner"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 5216
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5217
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5218
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5219
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 4685
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4686
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4687
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4688
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 1095
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v4, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-object v3

    .line 1099
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1100
    .local v1, res:Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1101
    .local v2, w:I
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1102
    .local v0, h:I
    if-gez v2, :cond_2

    .line 1110
    const v4, 0x1050002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1112
    const v4, 0x1050001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1117
    :cond_2
    if-lez v2, :cond_0

    .line 1118
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8
    .parameter "callingUid"
    .parameter "r"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4203
    if-lez p1, :cond_0

    .line 4204
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p6, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 4211
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_3

    .line 4213
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4214
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4216
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4224
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_0
    return-void

    .line 4211
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p2, :cond_1

    .line 4223
    :cond_3
    :goto_1
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0

    .line 4218
    :catch_0
    move-exception v6

    .line 4219
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 7
    .parameter "token"
    .parameter "winInfo"

    .prologue
    .line 4342
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 4343
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 4344
    .local v0, index:I
    if-gez v0, :cond_0

    .line 4345
    monitor-exit v4

    .line 4356
    :goto_0
    return-void

    .line 4347
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4349
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    .line 4350
    .local v1, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v5, p2}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 4352
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 4355
    monitor-exit v4

    goto :goto_0

    .end local v0           #index:I
    .end local v1           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setWindowMode(Landroid/os/IBinder;IZZ)V
    .locals 23
    .parameter "token"
    .parameter "windowMode"
    .parameter "allInTask"
    .parameter "bResume"

    .prologue
    .line 4236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 4237
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v4

    .line 4238
    .local v4, index:I
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v7

    .line 4239
    .local v7, mw:Lcom/android/server/am/MultiWindowManagerService;
    if-gez v4, :cond_0

    .line 4240
    monitor-exit v19

    .line 4312
    :goto_0
    return-void

    .line 4243
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 4244
    .local v13, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityRecord;

    .line 4246
    .local v15, r:Lcom/android/server/am/ActivityRecord;
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v12

    .line 4247
    .local v12, oldOption:I
    invoke-static/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v9

    .line 4248
    .local v9, newOption:I
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v11

    .line 4249
    .local v11, oldMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    .line 4253
    .local v8, newMode:I
    const/high16 v18, 0x100

    move/from16 v0, v18

    if-ne v11, v0, :cond_7

    const/high16 v18, 0x200

    move/from16 v0, v18

    if-ne v8, v0, :cond_7

    const/4 v5, 0x1

    .line 4257
    .local v5, isModeChanged:Z
    :goto_1
    const/high16 v18, 0x80

    and-int v18, v18, v12

    if-eqz v18, :cond_8

    const/high16 v18, 0x80

    and-int v18, v18, v9

    if-nez v18, :cond_8

    const/4 v6, 0x1

    .line 4260
    .local v6, isPinupReleased:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->arrange:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x3c

    if-eqz v18, :cond_9

    const/16 v16, 0x1

    .line 4262
    .local v16, splitedModes:Z
    :goto_3
    if-eqz v6, :cond_1

    if-nez v16, :cond_2

    :cond_1
    if-eqz v5, :cond_4

    .line 4263
    :cond_2
    const/16 v20, 0x0

    if-nez v5, :cond_a

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v15}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v18

    or-int p2, p2, v18

    .line 4265
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 4266
    .local v17, zoneInfo:I
    if-eqz v17, :cond_3

    .line 4267
    new-instance v10, Landroid/content/Intent;

    const-string v18, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4268
    .local v10, notifyFocusIntent:Landroid/content/Intent;
    const-string v18, "com.sec.android.extra.ARRAGE_TYPE"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4272
    .end local v10           #notifyFocusIntent:Landroid/content/Intent;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 4275
    .end local v17           #zoneInfo:I
    :cond_4
    const/high16 v18, 0x100

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    .line 4276
    const v18, 0x23e000

    and-int p2, p2, v18

    .line 4277
    const/high16 v18, 0x100

    or-int p2, p2, v18

    .line 4281
    :cond_5
    if-eqz p3, :cond_b

    .line 4282
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    .line 4288
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityStack;->updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4290
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    .line 4293
    if-eqz p4, :cond_6

    .line 4294
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4297
    const/high16 v18, 0x200

    move/from16 v0, v18

    if-ne v11, v0, :cond_6

    const/high16 v18, 0x100

    move/from16 v0, v18

    if-ne v8, v0, :cond_6

    .line 4299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/android/server/am/ActivityStack$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack$2;-><init>(Lcom/android/server/am/ActivityStack;)V

    const-wide/16 v21, 0x1f4

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4310
    :cond_6
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4311
    monitor-exit v19

    goto/16 :goto_0

    .end local v4           #index:I
    .end local v5           #isModeChanged:Z
    .end local v6           #isPinupReleased:Z
    .end local v7           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v8           #newMode:I
    .end local v9           #newOption:I
    .end local v11           #oldMode:I
    .end local v12           #oldOption:I
    .end local v13           #origId:J
    .end local v15           #r:Lcom/android/server/am/ActivityRecord;
    .end local v16           #splitedModes:Z
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 4253
    .restart local v4       #index:I
    .restart local v7       #mw:Lcom/android/server/am/MultiWindowManagerService;
    .restart local v8       #newMode:I
    .restart local v9       #newOption:I
    .restart local v11       #oldMode:I
    .restart local v12       #oldOption:I
    .restart local v13       #origId:J
    .restart local v15       #r:Lcom/android/server/am/ActivityRecord;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 4257
    .restart local v5       #isModeChanged:Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 4260
    .restart local v6       #isPinupReleased:Z
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 4263
    .restart local v16       #splitedModes:Z
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 4284
    :cond_b
    :try_start_1
    move/from16 v0, p2

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 4285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v20, v0

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5
.end method

.method final showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 710
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 711
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 712
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v1, v1, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 713
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 714
    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 23
    .parameter "caller"
    .parameter "callingUid"
    .parameter "intents"
    .parameter "resolvedTypes"
    .parameter "resultTo"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 4092
    if-nez p3, :cond_0

    .line 4093
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "intents is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4095
    :cond_0
    if-nez p4, :cond_1

    .line 4096
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "resolvedTypes is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4098
    :cond_1
    move-object/from16 v0, p3

    array-length v1, v0

    move-object/from16 v0, p4

    array-length v3, v0

    if-eq v1, v3, :cond_2

    .line 4099
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "intents are length different than resolvedTypes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4102
    :cond_2
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    .line 4105
    .local v16, outActivity:[Lcom/android/server/am/ActivityRecord;
    if-ltz p2, :cond_3

    .line 4106
    const/4 v11, -0x1

    .line 4113
    .local v11, callingPid:I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 4115
    .local v19, origId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4117
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    :try_start_1
    move-object/from16 v0, p3

    array-length v1, v0

    move/from16 v0, v17

    if-ge v0, v1, :cond_c

    .line 4118
    aget-object v18, p3, v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4119
    .local v18, intent:Landroid/content/Intent;
    if-nez v18, :cond_5

    move-object/from16 v2, v18

    .line 4117
    .end local v18           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 4107
    .end local v2           #intent:Landroid/content/Intent;
    .end local v11           #callingPid:I
    .end local v17           #i:I
    .end local v19           #origId:J
    :cond_3
    if-nez p1, :cond_4

    .line 4108
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 4109
    .restart local v11       #callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 4111
    .end local v11           #callingPid:I
    :cond_4
    const/16 p2, -0x1

    move/from16 v11, p2

    .restart local v11       #callingPid:I
    goto :goto_0

    .line 4124
    .restart local v17       #i:I
    .restart local v18       #intent:Landroid/content/Intent;
    .restart local v19       #origId:J
    :cond_5
    if-eqz v18, :cond_6

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4160
    .end local v18           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4162
    .end local v17           #i:I
    :catchall_1
    move-exception v1

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4128
    .restart local v17       #i:I
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v15, 0x1

    .line 4131
    .local v15, componentSpecified:Z
    :goto_3
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4134
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    aget-object v3, p4, v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 4137
    .local v7, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p7

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 4139
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_8

    if-eqz v7, :cond_8

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 4141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4128
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v15           #componentSpecified:Z
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 4146
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v15       #componentSpecified:Z
    :cond_8
    if-eqz p6, :cond_9

    move-object/from16 v0, p3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_9

    .line 4147
    move-object/from16 v14, p6

    .line 4151
    .local v14, theseOptions:Landroid/os/Bundle;
    :goto_4
    aget-object v6, p4, v17

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v8, p5

    move/from16 v12, p2

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v21

    .line 4154
    .local v21, res:I
    if-gez v21, :cond_a

    .line 4155
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4162
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4165
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v14           #theseOptions:Landroid/os/Bundle;
    .end local v15           #componentSpecified:Z
    .end local v21           #res:I
    :goto_5
    return v21

    .line 4149
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v15       #componentSpecified:Z
    :cond_9
    const/4 v14, 0x0

    .restart local v14       #theseOptions:Landroid/os/Bundle;
    goto :goto_4

    .line 4158
    .restart local v21       #res:I
    :cond_a
    const/4 v1, 0x0

    :try_start_5
    aget-object v1, v16, v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v16, v1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p5, v0

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 p5, 0x0

    goto :goto_6

    .line 4160
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v14           #theseOptions:Landroid/os/Bundle;
    .end local v15           #componentSpecified:Z
    .end local v21           #res:I
    :cond_c
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4162
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4165
    const/16 v21, 0x0

    goto :goto_5
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .locals 57
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "aInfo"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "callingPid"
    .parameter "callingUid"
    .parameter "startFlags"
    .parameter "options"
    .parameter "componentSpecified"
    .parameter "outActivity"

    .prologue

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mCpuBooster:Lcom/android/server/am/ActivityStack$CpuBooster;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack$CpuBooster;->start()V

    const/16 v28, 0x0

    .local v28, err:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, 0x10104000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowMode()I

    move-result v3

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_0

    .line 3109
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x4001

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3113
    :cond_0
    const/16 v23, 0x0

    .line 3114
    .local v23, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_1

    .line 3115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v23

    .line 3116
    if-eqz v23, :cond_7

    .line 3117
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p8, v0

    .line 3118
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p9, v0

    .line 3131
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v41

    .line 3132
    .local v41, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v41

    invoke-direct {v3, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3135
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    .line 3136
    .local v24, cmp:Landroid/content/ComponentName;
    if-eqz v24, :cond_a

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3138
    :try_start_0
    const-string v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v48

    .line 3139
    .local v48, rp:Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v48, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, v48

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3140
    const/16 v32, 0x0

    .line 3141
    .local v32, isActivityAllowed:Z
    const-string v3, ":android:show_fragment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3142
    .local v21, activity:Ljava/lang/String;
    if-nez v21, :cond_2

    .line 3143
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 3145
    :cond_2
    sget-object v22, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .local v22, arr$:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v37, v0

    .local v37, len$:I
    const/16 v30, 0x0

    .local v30, i$:I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_3

    aget-object v29, v22, v30

    .line 3146
    .local v29, exception:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3147
    const/16 v32, 0x1

    .line 3151
    .end local v29           #exception:Ljava/lang/String;
    :cond_3
    if-eqz v32, :cond_9

    .line 3152
    const/high16 v3, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3205
    .end local v21           #activity:Ljava/lang/String;
    .end local v22           #arr$:[Ljava/lang/String;
    .end local v30           #i$:I
    .end local v32           #isActivityAllowed:Z
    .end local v37           #len$:I
    .end local v48           #rp:Landroid/app/enterprise/IRestrictionPolicy;
    :cond_4
    :goto_2
    invoke-static/range {v41 .. v41}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3208
    if-nez v28, :cond_5

    .line 3209
    if-eqz p4, :cond_f

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserId;->getUserId(I)I

    move-result v53

    .line 3210
    .local v53, userId:I
    :goto_3
    const-string v4, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "START {"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " u="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "} from pid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v23, :cond_10

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    :try_start_1
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_5

    .line 3223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 3231
    .end local v53           #userId:I
    :cond_5
    :goto_6
    const/16 v49, 0x0

    .line 3232
    .local v49, sourceRecord:Lcom/android/server/am/ActivityRecord;
    const/4 v5, 0x0

    .line 3233
    .local v5, resultRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz p5, :cond_6

    .line 3234
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v31

    .line 3237
    .local v31, index:I
    if-ltz v31, :cond_6

    .line 3238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    .end local v49           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    check-cast v49, Lcom/android/server/am/ActivityRecord;

    .line 3239
    .restart local v49       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    if-ltz p7, :cond_6

    move-object/from16 v0, v49

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_6

    .line 3240
    move-object/from16 v5, v49

    .line 3245
    .end local v31           #index:I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v36

    .line 3247
    .local v36, launchFlags:I
    const/high16 v3, 0x200

    and-int v3, v3, v36

    if-eqz v3, :cond_13

    if-eqz v49, :cond_13

    .line 3251
    if-ltz p7, :cond_12

    .line 3252
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3253
    const/4 v3, -0x3

    .line 3469
    .end local v5           #resultRecord:Lcom/android/server/am/ActivityRecord;
    .end local v36           #launchFlags:I
    .end local v49           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :goto_7
    return v3

    .line 3120
    .end local v24           #cmp:Landroid/content/ComponentName;
    .end local v41           #oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :cond_7
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " (pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") when starting: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    const/16 v28, -0x4

    goto/16 :goto_0

    .line 3145
    .restart local v21       #activity:Ljava/lang/String;
    .restart local v22       #arr$:[Ljava/lang/String;
    .restart local v24       #cmp:Landroid/content/ComponentName;
    .restart local v29       #exception:Ljava/lang/String;
    .restart local v30       #i$:I
    .restart local v32       #isActivityAllowed:Z
    .restart local v37       #len$:I
    .restart local v41       #oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    .restart local v48       #rp:Landroid/app/enterprise/IRestrictionPolicy;
    :cond_8
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 3154
    .end local v29           #exception:Ljava/lang/String;
    :cond_9
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, v48

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    .line 3155
    invoke-static/range {v41 .. v41}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3156
    const/4 v3, 0x0

    goto :goto_7

    .line 3159
    .end local v21           #activity:Ljava/lang/String;
    .end local v22           #arr$:[Ljava/lang/String;
    .end local v30           #i$:I
    .end local v32           #isActivityAllowed:Z
    .end local v37           #len$:I
    .end local v48           #rp:Landroid/app/enterprise/IRestrictionPolicy;
    :catch_0
    move-exception v27

    .line 3160
    .local v27, e:Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 3163
    .end local v27           #e:Ljava/lang/Exception;
    :cond_a
    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    sget-object v3, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3166
    :try_start_3
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v34

    .line 3168
    .local v34, km:Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v34, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3169
    invoke-static/range {v41 .. v41}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3170
    const/4 v3, 0x0

    goto :goto_7

    .line 3172
    .end local v34           #km:Landroid/app/enterprise/kioskmode/IKioskMode;
    :catch_1
    move-exception v27

    .line 3173
    .restart local v27       #e:Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v4, "Is edm running?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3176
    .end local v27           #e:Ljava/lang/Exception;
    :cond_b
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3178
    :try_start_4
    const-string v3, "password_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v45

    .line 3179
    .local v45, pwdPolicy:Landroid/app/enterprise/IPasswordPolicy;
    if-eqz v45, :cond_4

    invoke-interface/range {v45 .. v45}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequested()I

    move-result v3

    if-lez v3, :cond_4

    .line 3180
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v3, v4, v7, v8}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v38

    .line 3181
    .local v38, list:Ljava/util/List;
    if-eqz v38, :cond_4

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3182
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v52

    .line 3183
    .local v52, topActivity:Ljava/lang/String;
    const/16 v32, 0x0

    .line 3184
    .restart local v32       #isActivityAllowed:Z
    const/16 v33, 0x0

    .line 3185
    .local v33, isTopActivityException:Z
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 3186
    .restart local v21       #activity:Ljava/lang/String;
    sget-object v22, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .restart local v22       #arr$:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v37, v0

    .restart local v37       #len$:I
    const/16 v30, 0x0

    .restart local v30       #i$:I
    :goto_8
    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_d

    aget-object v29, v22, v30

    .line 3187
    .restart local v29       #exception:Ljava/lang/String;
    if-eqz v52, :cond_c

    move-object/from16 v0, v52

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3188
    const/16 v33, 0x1

    .line 3190
    :cond_c
    if-eqz v21, :cond_e

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3191
    const/16 v32, 0x1

    .line 3195
    .end local v29           #exception:Ljava/lang/String;
    :cond_d
    if-eqz v33, :cond_4

    if-nez v32, :cond_4

    .line 3196
    invoke-static/range {v41 .. v41}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3197
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 3186
    .restart local v29       #exception:Ljava/lang/String;
    :cond_e
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 3201
    .end local v21           #activity:Ljava/lang/String;
    .end local v22           #arr$:[Ljava/lang/String;
    .end local v29           #exception:Ljava/lang/String;
    .end local v30           #i$:I
    .end local v32           #isActivityAllowed:Z
    .end local v33           #isTopActivityException:Z
    .end local v37           #len$:I
    .end local v38           #list:Ljava/util/List;
    .end local v45           #pwdPolicy:Landroid/app/enterprise/IPasswordPolicy;
    .end local v52           #topActivity:Ljava/lang/String;
    :catch_2
    move-exception v27

    .line 3202
    .restart local v27       #e:Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 3209
    .end local v27           #e:Ljava/lang/Exception;
    :cond_f
    const/16 v53, 0x0

    goto/16 :goto_3

    .restart local v53       #userId:I
    :cond_10
    move/from16 v3, p8

    .line 3210
    goto/16 :goto_4

    .line 3217
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 3255
    .end local v53           #userId:I
    .restart local v5       #resultRecord:Lcom/android/server/am/ActivityRecord;
    .restart local v36       #launchFlags:I
    .restart local v49       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_12
    move-object/from16 v0, v49

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3256
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p6, v0

    .line 3257
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p7, v0

    .line 3258
    const/4 v3, 0x0

    move-object/from16 v0, v49

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3259
    if-eqz v5, :cond_13

    .line 3260
    move-object/from16 v0, v49

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 3265
    :cond_13
    if-nez v28, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_14

    .line 3268
    const/16 v28, -0x1

    .line 3271
    :cond_14
    if-nez v28, :cond_15

    if-nez p4, :cond_15

    .line 3274
    const/16 v28, -0x2

    .line 3277
    :cond_15
    if-eqz v28, :cond_17

    .line 3278
    if-eqz v5, :cond_16

    .line 3279
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3283
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3284
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move/from16 v3, v28

    .line 3285
    goto/16 :goto_7

    .line 3288
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v51

    .line 3290
    .local v51, startAnyPerm:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v25

    .line 3292
    .local v25, componentPerm:I
    if-eqz v51, :cond_1a

    if-eqz v25, :cond_1a

    .line 3293
    if-eqz v5, :cond_18

    .line 3294
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3298
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3300
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_19

    .line 3301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exported from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 3311
    .local v39, msg:Ljava/lang/String;
    :goto_9
    const-string v3, "ActivityManager"

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    new-instance v3, Ljava/lang/SecurityException;

    move-object/from16 v0, v39

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3306
    .end local v39           #msg:Ljava/lang/String;
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .restart local v39       #msg:Ljava/lang/String;
    goto :goto_9

    .line 3315
    .end local v39           #msg:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_1d

    .line 3316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v3, :cond_1d

    .line 3317
    const/16 v20, 0x0

    .line 3321
    .local v20, abort:Z
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v54

    .line 3322
    .local v54, watchIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-interface {v3, v0, v4}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v3

    if-nez v3, :cond_1c

    const/16 v20, 0x1

    .line 3328
    .end local v54           #watchIntent:Landroid/content/Intent;
    :goto_a
    if-eqz v20, :cond_1d

    .line 3329
    if-eqz v5, :cond_1b

    .line 3330
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3336
    :cond_1b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3337
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3338
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 3322
    .restart local v54       #watchIntent:Landroid/content/Intent;
    :cond_1c
    const/16 v20, 0x0

    goto :goto_a

    .line 3324
    .end local v54           #watchIntent:Landroid/content/Intent;
    :catch_3
    move-exception v27

    .line 3325
    .local v27, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_a

    .line 3347
    .end local v20           #abort:Z
    .end local v27           #e:Landroid/os/RemoteException;
    :cond_1d
    const/16 v44, 0x0

    .line 3350
    .local v44, parentActivityRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz v49, :cond_26

    .line 3351
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_1e

    const-string v3, "ActivityManager"

    const-string v4, "Setting parentActivityRecord from sourceRecord"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    :cond_1e
    move-object/from16 v44, v49

    .line 3360
    :cond_1f
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowMode()I

    move-result v19

    .line 3361
    .local v19, windowMode:I
    if-nez v19, :cond_20

    if-eqz v44, :cond_20

    .line 3363
    move-object/from16 v0, v44

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v19

    .line 3365
    :cond_20
    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    if-nez v3, :cond_21

    .line 3366
    const/high16 v19, 0x100

    .line 3369
    :cond_21
    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_23

    .line 3370
    if-nez v44, :cond_22

    .line 3371
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v44

    .line 3373
    :cond_22
    if-eqz v44, :cond_23

    .line 3374
    invoke-static/range {v19 .. v19}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zonePolicy(I)I

    move-result v56

    .line 3375
    .local v56, zonePolicy:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->arrange:I

    and-int/lit8 v3, v3, 0x3c

    if-eqz v3, :cond_28

    const/16 v50, 0x1

    .line 3377
    .local v50, splitedModes:Z
    :goto_c
    const/4 v3, 0x1

    move/from16 v0, v56

    if-ne v0, v3, :cond_2c

    .line 3378
    if-eqz v50, :cond_29

    move/from16 v0, v19

    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_29

    .line 3380
    move-object/from16 v0, v44

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0xff

    or-int v19, v19, v3

    .line 3406
    .end local v50           #splitedModes:Z
    .end local v56           #zonePolicy:I
    :cond_23
    :goto_d
    new-instance v6, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v8, p0

    move-object/from16 v9, v23

    move/from16 v10, p9

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v15, v5

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p12

    invoke-direct/range {v6 .. v19}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZI)V

    .line 3411
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    if-eqz p13, :cond_24

    .line 3412
    const/4 v3, 0x0

    aput-object v6, p13, v3

    .line 3415
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_30

    .line 3418
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v46

    .line 3419
    .local v46, resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface/range {v46 .. v46}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2d

    const/16 v26, 0x1

    .line 3420
    .local v26, doPending:Z
    :goto_e
    if-nez v26, :cond_2e

    .line 3421
    invoke-interface/range {v46 .. v46}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_25
    :goto_f
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ActivityRecord;

    .line 3422
    .local v47, resumedActivity:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p9

    if-eq v3, v0, :cond_25

    .line 3423
    const/16 v26, 0x1

    goto :goto_f

    .line 3353
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    .end local v19           #windowMode:I
    .end local v26           #doPending:Z
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v46           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v47           #resumedActivity:Lcom/android/server/am/ActivityRecord;
    :cond_26
    if-eqz v23, :cond_1f

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1f

    .line 3355
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_27

    const-string v3, "ActivityManager"

    const-string v4, "Setting parentActivityRecord from callerApp"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :cond_27
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    .end local v44           #parentActivityRecord:Lcom/android/server/am/ActivityRecord;
    check-cast v44, Lcom/android/server/am/ActivityRecord;

    .restart local v44       #parentActivityRecord:Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_b

    .line 3375
    .restart local v19       #windowMode:I
    .restart local v56       #zonePolicy:I
    :cond_28
    const/16 v50, 0x0

    goto/16 :goto_c

    .line 3383
    .restart local v50       #splitedModes:Z
    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v42

    .line 3384
    .local v42, overridePosition:Landroid/graphics/Rect;
    if-eqz v42, :cond_2a

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    .line 3385
    :cond_2a
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v40

    .line 3386
    .local v40, mw:Lcom/android/server/am/MultiWindowManagerService;
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v55

    .line 3387
    .local v55, winInfo:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v35

    check-cast v35, Landroid/graphics/Rect;

    .line 3388
    .local v35, lastSize:Landroid/graphics/Rect;
    if-nez v35, :cond_2b

    .line 3389
    const-string v3, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v35

    .end local v35           #lastSize:Landroid/graphics/Rect;
    check-cast v35, Landroid/graphics/Rect;

    .line 3391
    .restart local v35       #lastSize:Landroid/graphics/Rect;
    :cond_2b
    const-string v3, "android.intent.extra.WINDOW_POSITION"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_d

    .line 3394
    .end local v35           #lastSize:Landroid/graphics/Rect;
    .end local v40           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v42           #overridePosition:Landroid/graphics/Rect;
    .end local v55           #winInfo:Landroid/os/Bundle;
    :cond_2c
    const/4 v3, 0x2

    move/from16 v0, v56

    if-ne v0, v3, :cond_23

    .line 3395
    if-eqz v50, :cond_23

    move/from16 v0, v19

    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_23

    .line 3396
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v40

    .line 3397
    .restart local v40       #mw:Lcom/android/server/am/MultiWindowManagerService;
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    or-int v19, v19, v3

    goto/16 :goto_d

    .line 3419
    .end local v40           #mw:Lcom/android/server/am/MultiWindowManagerService;
    .end local v50           #splitedModes:Z
    .end local v56           #zonePolicy:I
    .restart local v6       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v46       #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_2d
    const/16 v26, 0x0

    goto/16 :goto_e

    .line 3429
    .restart local v26       #doPending:Z
    :cond_2e
    if-eqz v26, :cond_2f

    .line 3431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "Activity start"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 3432
    new-instance v43, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    invoke-direct/range {v43 .. v43}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>()V

    .line 3433
    .local v43, pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object/from16 v0, v43

    iput-object v6, v0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 3434
    move-object/from16 v0, v49

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 3435
    move/from16 v0, p10

    move-object/from16 v1, v43

    iput v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->startFlags:I

    .line 3436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3437
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3438
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3439
    const/4 v3, 0x4

    goto/16 :goto_7

    .line 3443
    .end local v43           #pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v3, :cond_32

    .line 3449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 3454
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 3457
    .end local v26           #doPending:Z
    .end local v46           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_30
    const/4 v11, 0x1

    move-object/from16 v7, p0

    move-object v8, v6

    move-object/from16 v9, v49

    move/from16 v10, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I

    move-result v28

    .line 3460
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3466
    :goto_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    :cond_31
    move/from16 v3, v28

    .line 3469
    goto/16 :goto_7

    .line 3451
    .restart local v26       #doPending:Z
    .restart local v46       #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_10

    .line 3460
    .end local v26           #doPending:Z
    .end local v46           #resumedActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_31

    goto :goto_11

    .line 3225
    .end local v5           #resultRecord:Lcom/android/server/am/ActivityRecord;
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    .end local v19           #windowMode:I
    .end local v25           #componentPerm:I
    .end local v36           #launchFlags:I
    .end local v44           #parentActivityRecord:Lcom/android/server/am/ActivityRecord;
    .end local v49           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    .end local v51           #startAnyPerm:I
    .restart local v53       #userId:I
    :catch_4
    move-exception v3

    goto/16 :goto_6
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 35
    .parameter "caller"
    .parameter "callingUid"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "outResult"
    .parameter "config"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 3932
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3933
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3935
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_9

    const/16 v20, 0x1

    .line 3938
    .local v20, componentSpecified:Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p3
    .local v3, intent:Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move/from16 v8, p14

    .line 3941
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 3943
    .local v12, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/ActivityStack;->checkRunningCompatibility(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_miui_0

    const/4 v2, 0x5

    return v2

    :cond_miui_0
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3944
    const/16 p14, 0x0

    .line 3946
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p14

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v22

    .line 3948
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .local v22, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 3950
    if-ltz p2, :cond_a

    .line 3951
    const/16 v16, -0x1

    .line 3959
    .local v16, callingPid:I
    :goto_1
    if-eqz p12, :cond_c

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 3964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v27

    .line 3966
    .local v27, origId:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_12

    if-eqz v22, :cond_12

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x1000

    and-int/2addr v2, v4

    if-eqz v2, :cond_12

    .line 3970
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3974
    :cond_2
    move/from16 v31, v16

    .line 3975
    .local v31, realCallingPid:I
    move/from16 v7, p2

    .line 3976
    .local v7, realCallingUid:I
    if-eqz p1, :cond_3

    .line 3977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v23

    .line 3978
    .local v23, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz v23, :cond_d

    .line 3979
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v31, v0

    .line 3980
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3990
    .end local v23           #callerApp:Lcom/android/server/am/ProcessRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x1

    new-array v11, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v11, v2

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v12, v2

    const/high16 v13, 0x5000

    const/4 v14, 0x0

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v33

    .line 3996
    .local v33, target:Landroid/content/IIntentSender;
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 3997
    .local v26, newIntent:Landroid/content/Intent;
    if-ltz p7, :cond_4

    .line 3999
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4001
    :cond_4
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 4004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityRecord;

    .line 4005
    .local v25, hist:Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4007
    const-string v2, "cur_task"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4010
    .end local v25           #hist:Lcom/android/server/am/ActivityRecord;
    :cond_5
    const-string v2, "new_app"

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4012
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4013
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4015
    move-object/from16 p3, v26

    .line 4016
    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    const/16 p4, 0x0

    .line 4017
    const/16 p1, 0x0

    .line 4018
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 4019
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v16

    .line 4020
    const/16 v20, 0x1

    .line 4022
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10400

    move-object/from16 v0, p3

    move/from16 v1, p14

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .line 4027
    .local v30, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v30, :cond_e

    move-object/from16 v0, v30

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4028
    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p14

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v12

    .line 4036
    .end local v7           #realCallingUid:I
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v30           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    :goto_4
    const/16 v21, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v17, p2

    move/from16 v18, p8

    move-object/from16 v19, p13

    :try_start_4
    invoke-virtual/range {v8 .. v21}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v32

    .line 4040
    .local v32, res:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_6

    .line 4045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4047
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 4050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 4053
    :cond_6
    invoke-static/range {v27 .. v28}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4055
    if-eqz p11, :cond_8

    .line 4056
    move/from16 v0, v32

    move-object/from16 v1, p11

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 4057
    if-nez v32, :cond_f

    .line 4058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4061
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4064
    :goto_5
    :try_start_6
    move-object/from16 v0, p11

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p11

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_7

    .line 4085
    :cond_8
    :goto_6
    monitor-exit v34
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v32           #res:I
    :goto_7
    return v32

    .line 3935
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v16           #callingPid:I
    .end local v20           #componentSpecified:Z
    .end local v27           #origId:J
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 3952
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v20       #componentSpecified:Z
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_a
    if-nez p1, :cond_b

    .line 3953
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 3954
    .restart local v16       #callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto/16 :goto_1

    .line 3956
    .end local v16           #callingPid:I
    :cond_b
    const/16 p2, -0x1

    move/from16 v16, p2

    .restart local v16       #callingPid:I
    goto/16 :goto_1

    .line 3959
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3982
    .restart local v7       #realCallingUid:I
    .restart local v23       #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v27       #origId:J
    .restart local v31       #realCallingPid:I
    :cond_d
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    invoke-static/range {p13 .. p13}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3986
    const/16 v32, -0x4

    monitor-exit v34
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto :goto_7

    .line 4027
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v23           #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v26       #newIntent:Landroid/content/Intent;
    .restart local v30       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v33       #target:Landroid/content/IIntentSender;
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4029
    .end local v30           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v24

    move-object/from16 v12, v22

    .line 4030
    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    .local v24, e:Landroid/os/RemoteException;
    :goto_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 4065
    .end local v7           #realCallingUid:I
    .end local v24           #e:Landroid/os/RemoteException;
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    .restart local v32       #res:I
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_8

    .line 4066
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v29

    .line 4067
    .local v29, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v29

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_10

    .line 4068
    const/4 v2, 0x0

    move-object/from16 v0, p11

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 4069
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p11

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 4070
    const-wide/16 v4, 0x0

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 4071
    const-wide/16 v4, 0x0

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_6

    .line 4086
    .end local v16           #callingPid:I
    .end local v27           #origId:J
    .end local v29           #r:Lcom/android/server/am/ActivityRecord;
    .end local v32           #res:I
    :catchall_0
    move-exception v2

    :goto_9
    monitor-exit v34
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 4073
    .restart local v16       #callingPid:I
    .restart local v27       #origId:J
    .restart local v29       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v32       #res:I
    :cond_10
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 4074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4077
    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 4080
    :goto_a
    :try_start_b
    move-object/from16 v0, p11

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p11

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v2, :cond_11

    goto/16 :goto_6

    .line 4086
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v16           #callingPid:I
    .end local v27           #origId:J
    .end local v29           #r:Lcom/android/server/am/ActivityRecord;
    .end local v32           #res:I
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v2

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto :goto_9

    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v7       #realCallingUid:I
    .restart local v16       #callingPid:I
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v26       #newIntent:Landroid/content/Intent;
    .restart local v27       #origId:J
    .restart local v31       #realCallingPid:I
    .restart local v33       #target:Landroid/content/IIntentSender;
    :catchall_2
    move-exception v2

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_9

    .line 4078
    .end local v7           #realCallingUid:I
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    .restart local v29       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v32       #res:I
    :catch_1
    move-exception v2

    goto :goto_a

    .line 4062
    .end local v29           #r:Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v2

    goto/16 :goto_5

    .line 4029
    .end local v32           #res:I
    .restart local v7       #realCallingUid:I
    .restart local v26       #newIntent:Landroid/content/Intent;
    .restart local v30       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v31       #realCallingPid:I
    .restart local v33       #target:Landroid/content/IIntentSender;
    :catch_3
    move-exception v24

    goto :goto_8

    .end local v7           #realCallingUid:I
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v30           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_12
    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto/16 :goto_4
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .locals 29
    .parameter "r"
    .parameter "sourceRecord"
    .parameter "startFlags"
    .parameter "doResume"
    .parameter "options"

    .prologue
    .line 3485
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    .line 3486
    .local v18, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 3487
    .local v13, callingUid:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v27, v0

    .line 3489
    .local v27, userId:I
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v19

    .line 3490
    .local v19, launchFlags:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_0

    .line 3491
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 3494
    .local v25, taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_0
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getSupportLaunchFlag(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    or-int v19, v19, v3

    .line 3499
    .end local v25           #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/high16 v3, 0x4

    and-int v3, v3, v19

    if-nez v3, :cond_f

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 3506
    if-nez p4, :cond_1

    .line 3507
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 3510
    :cond_1
    const/high16 v3, 0x100

    and-int v3, v3, v19

    if-eqz v3, :cond_10

    move-object/from16 v21, p1

    .line 3517
    .local v21, notTop:Lcom/android/server/am/ActivityRecord;
    :goto_2
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3

    .line 3518
    move-object/from16 v14, p2

    .line 3519
    .local v14, checkedCaller:Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_2

    .line 3520
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 3522
    :cond_2
    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3524
    and-int/lit8 p3, p3, -0x2

    .line 3528
    .end local v14           #checkedCaller:Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-nez p2, :cond_11

    .line 3531
    const/high16 v3, 0x1000

    and-int v3, v3, v19

    if-nez v3, :cond_4

    .line 3532
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    const/high16 v3, 0x1000

    or-int v19, v19, v3

    .line 3548
    :cond_4
    :goto_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_5

    const/high16 v3, 0x1000

    and-int v3, v3, v19

    if-eqz v3, :cond_5

    .line 3554
    const-string v3, "ActivityManager"

    const-string v4, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3558
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3561
    :cond_5
    const/4 v11, 0x0

    .line 3562
    .local v11, addingToTask:Z
    const/16 v20, 0x0

    .line 3563
    .local v20, movedHome:Z
    const/16 v23, 0x0

    .line 3564
    .local v23, reuseTask:Lcom/android/server/am/TaskRecord;
    const/high16 v3, 0x1000

    and-int v3, v3, v19

    if-eqz v3, :cond_6

    const/high16 v3, 0x800

    and-int v3, v3, v19

    if-eqz v3, :cond_7

    :cond_6
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_24

    .line 3571
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_24

    .line 3576
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_14

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 3579
    .restart local v25       #taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_4
    if-eqz v25, :cond_24

    .line 3580
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v3, :cond_8

    .line 3585
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3593
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 3594
    .local v15, curTop:Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_9

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_a

    :cond_9
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3598
    :cond_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3599
    if-eqz p2, :cond_b

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_15

    :cond_b
    const/4 v12, 0x1

    .line 3601
    .local v12, callerAtFront:Z
    :goto_5
    if-eqz v12, :cond_c

    .line 3604
    const/16 v20, 0x1

    .line 3605
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(I)V

    .line 3606
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 3607
    const/16 p5, 0x0

    .line 3612
    .end local v12           #callerAtFront:Z
    :cond_c
    const/high16 v3, 0x20

    and-int v3, v3, v19

    if-eqz v3, :cond_d

    .line 3613
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 3615
    :cond_d
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_17

    .line 3620
    if-eqz p4, :cond_16

    .line 3621
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 3625
    :goto_6
    const/4 v3, 0x1

    .line 3873
    .end local v15           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v25           #taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_7
    return v3

    .line 3491
    .end local v11           #addingToTask:Z
    .end local v20           #movedHome:Z
    .end local v21           #notTop:Lcom/android/server/am/ActivityRecord;
    .end local v23           #reuseTask:Lcom/android/server/am/TaskRecord;
    :cond_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    goto/16 :goto_0

    .line 3499
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 3510
    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 3536
    .restart local v21       #notTop:Lcom/android/server/am/ActivityRecord;
    :cond_11
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    .line 3540
    const/high16 v3, 0x1000

    or-int v19, v19, v3

    goto/16 :goto_3

    .line 3541
    :cond_12
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 3545
    :cond_13
    const/high16 v3, 0x1000

    or-int v19, v19, v3

    goto/16 :goto_3

    .line 3576
    .restart local v11       #addingToTask:Z
    .restart local v20       #movedHome:Z
    .restart local v23       #reuseTask:Lcom/android/server/am/TaskRecord;
    :cond_14
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    goto/16 :goto_4

    .line 3599
    .restart local v15       #curTop:Lcom/android/server/am/ActivityRecord;
    .restart local v25       #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_15
    const/4 v12, 0x0

    goto :goto_5

    .line 3623
    :cond_16
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_6

    .line 3627
    :cond_17
    const v3, 0x10008000

    and-int v3, v3, v19

    const v4, 0x10008000

    if-ne v3, v4, :cond_19

    .line 3633
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    .line 3634
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(I)V

    .line 3635
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3705
    :cond_18
    :goto_8
    if-nez v11, :cond_24

    if-nez v23, :cond_24

    .line 3709
    if-eqz p4, :cond_23

    .line 3711
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_22

    .line 3712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    .line 3713
    .local v24, rt:Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    goto :goto_9

    .line 3636
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v24           #rt:Lcom/android/server/am/ActivityRecord;
    :cond_19
    const/high16 v3, 0x400

    and-int v3, v3, v19

    if-nez v3, :cond_1a

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    .line 3643
    :cond_1a
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 3645
    .local v26, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v26, :cond_1c

    .line 3646
    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_1b

    .line 3651
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3653
    :cond_1b
    const/16 v3, 0x7533

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3654
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto :goto_8

    .line 3660
    :cond_1c
    const/4 v11, 0x1

    .line 3664
    move-object/from16 p2, v25

    goto :goto_8

    .line 3666
    .end local v26           #top:Lcom/android/server/am/ActivityRecord;
    :cond_1d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3673
    const/high16 v3, 0x2000

    and-int v3, v3, v19

    if-eqz v3, :cond_1f

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3675
    const/16 v3, 0x7533

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3676
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_1e

    .line 3677
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3679
    :cond_1e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_8

    .line 3680
    :cond_1f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 3684
    const/4 v11, 0x1

    .line 3685
    move-object/from16 p2, v25

    goto/16 :goto_8

    .line 3687
    :cond_20
    const/high16 v3, 0x20

    and-int v3, v3, v19

    if-nez v3, :cond_21

    .line 3693
    const/4 v11, 0x1

    .line 3694
    move-object/from16 p2, v25

    goto/16 :goto_8

    .line 3695
    :cond_21
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v3, :cond_18

    .line 3703
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_8

    .line 3717
    :cond_22
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 3721
    :goto_a
    const/4 v3, 0x2

    goto/16 :goto_7

    .line 3719
    :cond_23
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_a

    .line 3733
    .end local v15           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v25           #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_24
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 3737
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 3738
    .restart local v26       #top:Lcom/android/server/am/ActivityRecord;
    if-eqz v26, :cond_2a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_2a

    .line 3739
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_2a

    .line 3740
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2a

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2a

    .line 3741
    const/high16 v3, 0x2000

    and-int v3, v3, v19

    if-nez v3, :cond_25

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_25

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 3744
    :cond_25
    const/16 v3, 0x7533

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3747
    if-eqz p4, :cond_26

    .line 3748
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3750
    :cond_26
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3751
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_27

    .line 3755
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 3757
    :cond_27
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3758
    const/4 v3, 0x3

    goto/16 :goto_7

    .line 3765
    .end local v26           #top:Lcom/android/server/am/ActivityRecord;
    :cond_28
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_29

    .line 3766
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3770
    :cond_29
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3771
    const/4 v3, -0x2

    goto/16 :goto_7

    .line 3774
    .restart local v26       #top:Lcom/android/server/am/ActivityRecord;
    :cond_2a
    const-string v3, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3775
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "CU_Flag"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 3776
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHECK_CU_VAS"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3777
    .local v17, in:Landroid/content/Intent;
    const/high16 v3, 0x5000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3778
    const-string v3, "CU_Vas"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3780
    const/4 v3, 0x4

    goto/16 :goto_7

    .line 3784
    .end local v17           #in:Landroid/content/Intent;
    :cond_2b
    const/4 v5, 0x0

    .line 3785
    .local v5, newTask:Z
    const/4 v7, 0x0

    .line 3788
    .local v7, keepCurTransition:Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_30

    if-nez v11, :cond_30

    const/high16 v3, 0x1000

    and-int v3, v3, v19

    if-eqz v3, :cond_30

    .line 3790
    if-nez v23, :cond_2f

    .line 3792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 3793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v3, :cond_2c

    .line 3794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 3796
    :cond_2c
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3802
    :goto_b
    const/4 v5, 0x1

    .line 3803
    if-nez v20, :cond_2d

    .line 3804
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(I)V

    .line 3865
    :cond_2d
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v3, v13, v4, v0, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 3868
    if-eqz v5, :cond_2e

    .line 3869
    const/16 v3, 0x7534

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3871
    :cond_2e
    const/16 v3, 0x7535

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    .line 3872
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 3873
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 3800
    :cond_2f
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto :goto_b

    .line 3807
    :cond_30
    if-eqz p2, :cond_35

    .line 3808
    if-nez v11, :cond_32

    const/high16 v3, 0x400

    and-int v3, v3, v19

    if-eqz v3, :cond_32

    .line 3813
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 3815
    const/4 v7, 0x1

    .line 3816
    if-eqz v26, :cond_34

    .line 3817
    const/16 v3, 0x7533

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3818
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3821
    if-eqz p4, :cond_31

    .line 3822
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3824
    :cond_31
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3825
    const/4 v3, 0x3

    goto/16 :goto_7

    .line 3827
    :cond_32
    if-nez v11, :cond_34

    const/high16 v3, 0x2

    and-int v3, v3, v19

    if-eqz v3, :cond_34

    .line 3832
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I

    move-result v28

    .line 3833
    .local v28, where:I
    if-ltz v28, :cond_34

    .line 3834
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 3835
    const/16 v3, 0x7533

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3836
    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 3837
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3838
    if-eqz p4, :cond_33

    .line 3839
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3841
    :cond_33
    const/4 v3, 0x3

    goto/16 :goto_7

    .line 3847
    .end local v28           #where:I
    :cond_34
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_c

    .line 3855
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3856
    .local v10, N:I
    if-lez v10, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v22, v3

    .line 3858
    .local v22, prev:Lcom/android/server/am/ActivityRecord;
    :goto_d
    if-eqz v22, :cond_37

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_e
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_c

    .line 3856
    .end local v22           #prev:Lcom/android/server/am/ActivityRecord;
    :cond_36
    const/16 v22, 0x0

    goto :goto_d

    .line 3858
    .restart local v22       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_37
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    goto :goto_e
.end method

.method stopIfSleepingLocked()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 984
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 985
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 986
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 987
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 989
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 993
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 994
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 995
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 997
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method final switchUser(I)Z
    .locals 9
    .parameter "userId"

    .prologue
    .line 721
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 722
    :try_start_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 725
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_0

    .line 726
    const/4 v1, 0x0

    monitor-exit v7

    .line 749
    :goto_0
    return v1

    .line 728
    :cond_0
    const/4 v1, 0x0

    .line 730
    .local v1, haveActivities:Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 731
    .local v5, top:Lcom/android/server/am/ActivityRecord;
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_1

    const/4 v1, 0x1

    monitor-exit v7

    goto :goto_0

    .line 750
    .end local v1           #haveActivities:Z
    .end local v5           #top:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 733
    .restart local v1       #haveActivities:Z
    .restart local v5       #top:Lcom/android/server/am/ActivityRecord;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 734
    .local v0, N:I
    const/4 v2, 0x0

    .line 735
    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 736
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 737
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_2

    .line 738
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 739
    .local v3, moveToTop:Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    add-int/lit8 v0, v0, -0x1

    .line 742
    const/4 v1, 0x1

    .line 743
    goto :goto_1

    .line 744
    .end local v3           #moveToTop:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 748
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 749
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final topResumedActivitiesLocked()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 535
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 536
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 537
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_0

    .line 538
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 541
    goto :goto_0

    .line 542
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v2
.end method

.method final topRunningActivityLocked(I)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "taskId"

    .prologue
    .line 4475
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 4476
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4477
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4479
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne p1, v2, :cond_0

    .line 4484
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 4482
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 4483
    goto :goto_0

    .line 4484
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "token"
    .parameter "taskId"

    .prologue
    .line 499
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 500
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 501
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 503
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p2, v2, :cond_0

    .line 508
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 506
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 507
    goto :goto_0

    .line 508
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "notTop"

    .prologue
    .line 464
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 465
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 466
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 467
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 472
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 470
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 471
    goto :goto_0

    .line 472
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningNextActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "baseTop"

    .prologue
    .line 516
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 517
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 518
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 520
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    .line 525
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 523
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 524
    goto :goto_0

    .line 525
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "notTop"

    .prologue
    .line 477
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 478
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 479
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 480
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 485
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 483
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 484
    goto :goto_0

    .line 485
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateTaskOrderLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x1

    .line 4520
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 4521
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v0, :cond_0

    .line 4522
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/am/ActivityStack;->setWindowMode(Landroid/os/IBinder;IZZ)V

    .line 4524
    :cond_0
    return-void
.end method

.method public updateTasksOrderLocked(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v10, 0x0

    .line 4488
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4489
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 4490
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4491
    .local v3, r:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    .line 4492
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 4493
    .local v1, activity:Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-boolean v6, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v6, :cond_0

    .line 4496
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->setWindowMode(Landroid/os/IBinder;IZZ)V

    .line 4489
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4499
    .end local v1           #activity:Lcom/android/server/am/ActivityRecord;
    .end local v3           #r:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 4501
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4503
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4504
    .local v4, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_2

    .line 4505
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v6, 0xff

    .line 4506
    .local v5, zoneInfo:I
    if-eqz v5, :cond_2

    .line 4507
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/ActivityStack$3;

    invoke-direct {v7, p0, v5}, Lcom/android/server/am/ActivityStack$3;-><init>(Lcom/android/server/am/ActivityStack;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4517
    .end local v5           #zoneInfo:I
    :cond_2
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "transit"
    .parameter "options"

    .prologue
    .line 5479
    if-eqz p2, :cond_0

    .line 5480
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5481
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 5482
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 5487
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5488
    return-void

    .line 5484
    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 4451
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v0

    .line 4452
    .local v0, mw:Lcom/android/server/am/MultiWindowManagerService;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v1

    .line 4453
    .local v1, winInfo:Landroid/os/Bundle;
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfo(ILandroid/os/Bundle;)V

    .line 4454
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    .line 4455
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 4456
    :cond_0
    return-void
.end method

.method public updateWindowInfosLocked(Landroid/content/res/Configuration;I)V
    .locals 7
    .parameter "values"
    .parameter "changes"

    .prologue
    const/4 v6, 0x0

    .line 4431
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v2

    .line 4434
    .local v2, mw:Lcom/android/server/am/MultiWindowManagerService;
    const/4 v5, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 4435
    .local v4, resumedActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget v5, p1, Landroid/content/res/Configuration;->arrange:I

    invoke-virtual {v2, p2, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    .line 4437
    invoke-direct {p0, v6, v6}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 4438
    const/high16 v5, 0x1000

    and-int/2addr v5, p2

    if-eqz v5, :cond_1

    .line 4439
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4440
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 4441
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4442
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->updateTaskOrderLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4440
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4445
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    .line 4446
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4448
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method final validateAppTokensLocked()V
    .locals 3

    .prologue
    .line 2606
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2607
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2608
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2609
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2611
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(Ljava/util/List;)V

    .line 2612
    return-void
.end method

.method setForegroundProcess(Z)Z
    .locals 3
    .parameter "resumed"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, next:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "sys.foreground_process"

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method private initCpuBooster()V
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/am/ActivityStack$CpuBooster;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack$CpuBooster;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mCpuBooster:Lcom/android/server/am/ActivityStack$CpuBooster;

    return-void
.end method

.method private checkRunningCompatibility(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .parameter "aInfo"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
