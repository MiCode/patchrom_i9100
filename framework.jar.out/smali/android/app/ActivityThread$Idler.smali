.class Landroid/app/ActivityThread$Idler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1474
    iput-object p1, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1474
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1476
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v4, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1477
    .local v0, a:Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v3, 0x0

    .line 1478
    .local v3, stopProfiling:Z
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v4, v4, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v4, v4, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    if-eqz v4, :cond_0

    .line 1480
    const/4 v3, 0x1

    .line 1482
    :cond_0
    if-eqz v0, :cond_3

    .line 1483
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iput-object v6, v4, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1484
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1491
    .local v1, am:Landroid/app/IActivityManager;
    :cond_1
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_2

    .line 1493
    :try_start_0
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v4, v5, v3}, Landroid/app/IActivityManager;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 1494
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    :cond_2
    :goto_0
    move-object v2, v0

    .line 1500
    .local v2, prev:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1501
    iput-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1502
    if-nez v0, :cond_1

    .line 1504
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #prev:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_3
    if-eqz v3, :cond_4

    .line 1505
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v4}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 1507
    :cond_4
    iget-object v4, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 1508
    const/4 v4, 0x0

    return v4

    .line 1495
    .restart local v1       #am:Landroid/app/IActivityManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
