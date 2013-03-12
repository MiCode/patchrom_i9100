.class public Lcom/android/server/ThrottleService;
.super Landroid/net/IThrottleManager$Stub;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThrottleService$DataRecorder;,
        Lcom/android/server/ThrottleService$MyHandler;,
        Lcom/android/server/ThrottleService$SettingsObserver;,
        Lcom/android/server/ThrottleService$InterfaceObserver;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.ThrottleManager.action.POLL"

.field private static final ACTION_RESET:Ljava/lang/String; = "com.android.server.ThorottleManager.action.RESET"

.field private static final DBG:Z = true

.field private static final EVENT_IFACE_UP:I = 0x4

.field private static final EVENT_POLICY_CHANGED:I = 0x1

.field private static final EVENT_POLL_ALARM:I = 0x2

.field private static final EVENT_REBOOT_RECOVERY:I = 0x0

.field private static final EVENT_RESET_ALARM:I = 0x3

.field private static final INITIAL_POLL_DELAY_SEC:I = 0x5a

.field private static final MAX_NTP_CACHE_AGE:J = 0x5265c00L

.field private static final NOTIFICATION_WARNING:I = 0x2

.field private static POLL_REQUEST:I = 0x0

.field private static RESET_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThrottleService"

.field private static final TESTING_ENABLED_PROPERTY:Ljava/lang/String; = "persist.throttle.testing"

.field private static final TESTING_POLLING_PERIOD_SEC:I = 0x3c

.field private static final TESTING_RESET_PERIOD_SEC:I = 0x258

.field private static final TESTING_THRESHOLD:J = 0x100000L

.field private static final THROTTLE_INDEX_UNINITIALIZED:I = -0x1

.field private static final THROTTLE_INDEX_UNTHROTTLED:I

.field private static final VDBG:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mInterfaceObserver:Lcom/android/server/ThrottleService$InterfaceObserver;

.field private mLastRead:J

.field private mLastWrite:J

.field private mMaxNtpCacheAge:J

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field private mPendingResetIntent:Landroid/app/PendingIntent;

.field private mPolicyNotificationsAllowedMask:I

.field private mPolicyPollPeriodSec:I

.field private mPolicyResetDay:I

.field private mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPollStickyBroadcast:Landroid/content/Intent;

.field private mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

.field private mSettingsObserver:Lcom/android/server/ThrottleService$SettingsObserver;

.field private mThread:Landroid/os/HandlerThread;

.field private mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mThrottlingNotification:Landroid/app/Notification;

.field private mTime:Landroid/util/TrustedTime;

.field private mWarningNotificationSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ThrottleService;->POLL_REQUEST:I

    .line 105
    const/4 v0, 0x1

    sput v0, Lcom/android/server/ThrottleService;->RESET_REQUEST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 138
    invoke-static {}, Lcom/android/server/ThrottleService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "nmService"
    .parameter "time"
    .parameter "iface"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 143
    invoke-direct {p0}, Landroid/net/IThrottleManager$Stub;-><init>()V

    .line 90
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lcom/android/server/ThrottleService;->mMaxNtpCacheAge:J

    .line 119
    iput-boolean v4, p0, Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z

    .line 145
    iput-object p1, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    .line 147
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    .line 148
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 149
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 151
    iput-object p4, p0, Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.ThrottleManager.action.POLL"

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    .local v0, pollIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/server/ThrottleService;->POLL_REQUEST:I

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ThrottleService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.ThorottleManager.action.RESET"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .local v1, resetIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/server/ThrottleService;->RESET_REQUEST:I

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ThrottleService;->mPendingResetIntent:Landroid/app/PendingIntent;

    .line 158
    iput-object p2, p0, Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;

    .line 159
    iput-object p3, p0, Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;

    .line 161
    iget-object v2, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/ThrottleService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mMaxNtpCacheAge:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/ThrottleService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/android/server/ThrottleService;->mMaxNtpCacheAge:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/server/ThrottleService;Lcom/android/server/ThrottleService$DataRecorder;)Lcom/android/server/ThrottleService$DataRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/ThrottleService;)Landroid/util/TrustedTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ThrottleService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mLastRead:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/ThrottleService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/android/server/ThrottleService;->mLastRead:J

    return-wide p1
.end method

.method static synthetic access$1314(Lcom/android/server/ThrottleService;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mLastRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/ThrottleService;->mLastRead:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/ThrottleService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mLastWrite:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/ThrottleService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/android/server/ThrottleService;->mLastWrite:J

    return-wide p1
.end method

.method static synthetic access$1414(Lcom/android/server/ThrottleService;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/server/ThrottleService;->mLastWrite:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/ThrottleService;->mLastWrite:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/server/ThrottleService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/ThrottleService;->mPollStickyBroadcast:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mPendingPollIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/ThrottleService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/ThrottleService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/ThrottleService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/ThrottleService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/ThrottleService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mPendingResetIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ThrottleService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ThrottleService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/ThrottleService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ThrottleService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/ThrottleService;->mPolicyResetDay:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/ThrottleService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/ThrottleService;->mPolicyResetDay:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ThrottleService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/ThrottleService;->mPolicyNotificationsAllowedMask:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/ThrottleService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/ThrottleService;->mPolicyNotificationsAllowedMask:I

    return p1
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ThrottleService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private static getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    .prologue
    .line 133
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 134
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    return-object v1
.end method

.method private ntpToWallTime(J)J
    .locals 6
    .parameter "ntpTime"

    .prologue
    .line 247
    iget-object v4, p0, Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v4}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v4}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 249
    .local v0, bestNow:J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 250
    .local v2, localNow:J
    sub-long v4, p1, v0

    add-long/2addr v4, v2

    return-wide v4

    .line 247
    .end local v0           #bestNow:J
    .end local v2           #localNow:J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method dispatchPoll()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 376
    return-void
.end method

.method dispatchReset()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 380
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1129
    iget-object v1, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump ThrottleService from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1154
    :cond_0
    return-void

    .line 1137
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The threshold is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", after which you experince throttling to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current period is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v2}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodEnd()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v4}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "and ends in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/ThrottleService;->getResetTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Polling every "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Throttle Index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxNtpCacheAge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/ThrottleService;->mMaxNtpCacheAge:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v1}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Period["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - read:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v2, v0}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodRx(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", written:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v2, v0}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodTx(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getByteCount(Ljava/lang/String;III)J
    .locals 2
    .parameter "iface"
    .parameter "dir"
    .parameter "period"
    .parameter "ago"

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    .line 305
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    if-eqz v0, :cond_1

    .line 306
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v0, p4}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodTx(I)J

    move-result-wide v0

    .line 309
    :goto_0
    return-wide v0

    .line 307
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v0, p4}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodRx(I)J

    move-result-wide v0

    goto :goto_0

    .line 309
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCliffLevel(Ljava/lang/String;I)I
    .locals 1
    .parameter "iface"
    .parameter "cliff"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    .line 290
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCliffThreshold(Ljava/lang/String;I)J
    .locals 2
    .parameter "iface"
    .parameter "cliff"

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    .line 281
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 284
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getHelpUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    .line 298
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "throttle_help_uri"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodStartTime(Ljava/lang/String;)J
    .locals 3
    .parameter "iface"

    .prologue
    .line 269
    const-wide/16 v0, 0x0

    .line 270
    .local v0, startTime:J
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    .line 271
    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v2}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodStart()J

    move-result-wide v0

    .line 274
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/ThrottleService;->ntpToWallTime(J)J

    move-result-wide v0

    .line 275
    return-wide v0
.end method

.method public getResetTime(Ljava/lang/String;)J
    .locals 3
    .parameter "iface"

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    .line 258
    const-wide/16 v0, 0x0

    .line 259
    .local v0, resetTime:J
    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;

    invoke-virtual {v2}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodEnd()J

    move-result-wide v0

    .line 262
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/ThrottleService;->ntpToWallTime(J)J

    move-result-wide v0

    .line 263
    return-wide v0
.end method

.method public getThrottle(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/server/ThrottleService;->enforceAccessPermission()V

    .line 316
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shutdown()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mSettingsObserver:Lcom/android/server/ThrottleService$SettingsObserver;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mSettingsObserver:Lcom/android/server/ThrottleService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/ThrottleService$SettingsObserver;->unregister(Landroid/content/Context;)V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mPollStickyBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ThrottleService;->mPollStickyBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 372
    :cond_2
    return-void
.end method

.method systemReady()V
    .locals 5

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/ThrottleService$1;

    invoke-direct {v2, p0}, Lcom/android/server/ThrottleService$1;-><init>(Lcom/android/server/ThrottleService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.ThrottleManager.action.POLL"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    iget-object v1, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/ThrottleService$2;

    invoke-direct {v2, p0}, Lcom/android/server/ThrottleService$2;-><init>(Lcom/android/server/ThrottleService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.ThorottleManager.action.RESET"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ThrottleService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ThrottleService;->mThread:Landroid/os/HandlerThread;

    .line 342
    iget-object v1, p0, Lcom/android/server/ThrottleService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 343
    new-instance v1, Lcom/android/server/ThrottleService$MyHandler;

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/ThrottleService$MyHandler;-><init>(Lcom/android/server/ThrottleService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    .line 344
    iget-object v1, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 346
    new-instance v1, Lcom/android/server/ThrottleService$InterfaceObserver;

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ThrottleService$InterfaceObserver;-><init>(Landroid/os/Handler;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ThrottleService;->mInterfaceObserver:Lcom/android/server/ThrottleService$InterfaceObserver;

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mInterfaceObserver:Lcom/android/server/ThrottleService$InterfaceObserver;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    new-instance v1, Lcom/android/server/ThrottleService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/server/ThrottleService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/server/ThrottleService;->mSettingsObserver:Lcom/android/server/ThrottleService$SettingsObserver;

    .line 354
    iget-object v1, p0, Lcom/android/server/ThrottleService;->mSettingsObserver:Lcom/android/server/ThrottleService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/ThrottleService$SettingsObserver;->register(Landroid/content/Context;)V

    .line 355
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ThrottleService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not register InterfaceObserver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
