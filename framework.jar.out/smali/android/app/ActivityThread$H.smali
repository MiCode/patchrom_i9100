.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_THUMBNAIL:I = 0x75

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b

.field public static final WINDOW_STATUS_CHANGED:I = 0x8f


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1127
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1127
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    .line 1448
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1451
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1452
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1454
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1455
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1456
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1459
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1460
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez v4, :cond_2

    .line 1461
    const-string v5, "ActivityThread"

    const-string v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1466
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1467
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1469
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    .line 1464
    .restart local v0       #context:Landroid/content/Context;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 1226
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v9, 0x40

    .line 1230
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1445
    :goto_0
    return-void

    .line 1232
    :pswitch_0
    const-string v4, "activityStart"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1233
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1235
    .local v3, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v4

    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1237
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    invoke-static {v4, v3, v7}, Landroid/app/ActivityThread;->access$700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    .line 1238
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1241
    .end local v3           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_1
    const-string v4, "activityRestart"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1242
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1243
    .restart local v3       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    invoke-static {v4, v3}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 1244
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1247
    .end local v3           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-string v4, "activityPause"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1248
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_0

    :goto_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V
    invoke-static {v7, v4, v6, v5, v8}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1249
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1250
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_0
    move v5, v6

    .line 1248
    goto :goto_1

    .line 1253
    :pswitch_3
    const-string v4, "activityPause"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1254
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_1

    move v6, v5

    :cond_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V
    invoke-static {v7, v4, v5, v6, v8}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    .line 1255
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1258
    :pswitch_4
    const-string v4, "activityStop"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1259
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v7, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v6, v4, v5, v7}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1260
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1263
    :pswitch_5
    const-string v4, "activityStop"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1264
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v7, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V
    invoke-static {v5, v4, v6, v7}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1265
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1268
    :pswitch_6
    const-string v4, "activityShowWindow"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1269
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v6, v4, v5}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1270
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1273
    :pswitch_7
    const-string v4, "activityHideWindow"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1274
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V
    invoke-static {v5, v4, v6}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1275
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1278
    :pswitch_8
    const-string v4, "activityResume"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1279
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {v7, v4, v5, v6}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZ)V

    .line 1281
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1284
    :pswitch_9
    const-string v4, "activityDeliverResult"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1285
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ResultData;

    #calls: Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 1286
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1289
    :pswitch_a
    const-string v4, "activityDestroy"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1290
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_3

    :goto_2
    iget v8, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    invoke-static {v7, v4, v5, v8, v6}, Landroid/app/ActivityThread;->access$1300(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 1292
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_3
    move v5, v6

    .line 1290
    goto :goto_2

    .line 1295
    :pswitch_b
    const-string v4, "bindApplication"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1296
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$AppBindData;

    .line 1297
    .local v1, data:Landroid/app/ActivityThread$AppBindData;
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    invoke-static {v4, v1}, Landroid/app/ActivityThread;->access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1298
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1301
    .end local v1           #data:Landroid/app/ActivityThread$AppBindData;
    :pswitch_c
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v4, :cond_4

    .line 1302
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->onTerminate()V

    .line 1304
    :cond_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1307
    :pswitch_d
    const-string v4, "activityNewIntent"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1308
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$NewIntentData;

    #calls: Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 1309
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1312
    :pswitch_e
    const-string v4, "broadcastReceiveComp"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1313
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ReceiverData;

    #calls: Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1314
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1315
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1318
    :pswitch_f
    const-string/jumbo v4, "serviceCreate"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1319
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateServiceData;

    #calls: Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 1320
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1323
    :pswitch_10
    const-string/jumbo v4, "serviceBind"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1324
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$BindServiceData;

    #calls: Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1325
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1328
    :pswitch_11
    const-string/jumbo v4, "serviceUnbind"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1329
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$BindServiceData;

    #calls: Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1330
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1333
    :pswitch_12
    const-string/jumbo v4, "serviceStart"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1334
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ServiceArgsData;

    #calls: Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$2000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 1335
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1338
    :pswitch_13
    const-string/jumbo v4, "serviceStop"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1339
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1340
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1341
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1344
    :pswitch_14
    const-string/jumbo v4, "requestThumbnail"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1345
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    #calls: Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$2200(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1346
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1349
    :pswitch_15
    const-string v4, "configChanged"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1350
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    invoke-virtual {v5, v4, v7}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1351
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1354
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1355
    .local v0, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v4, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v5, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v6, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1358
    .end local v0           #cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_17
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    .line 1361
    :pswitch_18
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1364
    :pswitch_19
    const-string v4, "lowMemory"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1365
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 1366
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1369
    :pswitch_1a
    const-string v4, "activityConfigChanged"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1370
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 1371
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1374
    :pswitch_1b
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_5

    :goto_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ProfilerControlData;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v5, v4, v6}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;I)V

    goto/16 :goto_0

    :cond_5
    move v5, v6

    goto :goto_3

    .line 1377
    :pswitch_1c
    const-string v4, "backupCreateAgent"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1379
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateBackupAgentData;

    #calls: Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    :goto_4
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1380
    :catch_0
    move-exception v2

    .line 1381
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1386
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_1d
    const-string v4, "backupDestroyAgent"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1387
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateBackupAgentData;

    #calls: Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1388
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1391
    :pswitch_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 1394
    :pswitch_1f
    const-string/jumbo v4, "providerRemove"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1395
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 1396
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1399
    :pswitch_20
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    .line 1402
    :pswitch_21
    const-string v4, "broadcastPackage"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1403
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1404
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1407
    :pswitch_22
    new-instance v5, Landroid/app/RemoteServiceException;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1409
    :pswitch_23
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_6

    :goto_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_6
    move v5, v6

    goto :goto_5

    .line 1412
    :pswitch_24
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1415
    :pswitch_25
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    #calls: Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1418
    :pswitch_26
    const-string/jumbo v4, "sleeping"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1419
    iget-object v7, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_7

    :goto_6
    #calls: Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V
    invoke-static {v7, v4, v5}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1420
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_7
    move v5, v6

    .line 1419
    goto :goto_6

    .line 1423
    :pswitch_27
    const-string/jumbo v4, "setCoreSettings"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1424
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    #calls: Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1425
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1428
    :pswitch_28
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$UpdateCompatibilityData;

    #calls: Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->access$3000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    .line 1431
    :pswitch_29
    const-string/jumbo v4, "trimMemory"

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1432
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 1433
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1436
    :pswitch_2a
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v5, v4, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 1440
    :pswitch_2b
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v7}, Landroid/app/ActivityThread;->handleWindowStatusChanged(Landroid/os/IBinder;II)V

    goto/16 :goto_0

    .line 1230
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_10
        :pswitch_11
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_25
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method
