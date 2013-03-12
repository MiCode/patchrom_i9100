.class Lcom/android/server/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 979
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 980
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 981
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 982
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 983
    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 984
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 988
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 989
    const-string v2, "AlarmManager"

    const-string v3, "ClockReceiver onReceive() ACTION_TIME_TICK"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    const-string v2, "AlarmManager"

    const-string v3, "ClockReceiver onReceive() ACTION_DATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 998
    .local v1, zone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 999
    .local v0, gmtOffset:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)I

    move-result v3

    const v4, 0xea60

    div-int v4, v0, v4

    neg-int v4, v4

    #calls: Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I
    invoke-static {v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;II)I

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    goto :goto_0
.end method

.method public scheduleDateChangedEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1036
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1037
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1038
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1039
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1040
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1041
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1042
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 1044
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 1045
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .locals 15

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x0

    .line 1005
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1006
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1007
    .local v1, currentTime:J
    const/4 v7, 0x0

    .line 1008
    .local v7, isNeedCheckDST:Z
    const-wide/16 v5, 0x0

    .line 1010
    .local v5, dstTime:J
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1012
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1013
    .local v3, dst:I
    if-eqz v3, :cond_0

    .line 1014
    const/4 v7, 0x1

    .line 1017
    :cond_0
    const/16 v10, 0xc

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 1018
    const/16 v10, 0xd

    invoke-virtual {v0, v10, v12}, Ljava/util/Calendar;->set(II)V

    .line 1019
    const/16 v10, 0xe

    invoke-virtual {v0, v10, v12}, Ljava/util/Calendar;->set(II)V

    .line 1022
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1023
    .local v4, dst2:I
    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    .line 1024
    const-wide/32 v5, 0x36ee80

    .line 1025
    const-string v10, "AlarmManager"

    const-string v11, "scheduleTimeTickEvent DST transiton range"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    sub-long v8, v10, v5

    .line 1031
    .local v8, tickEventDelay:J
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v11, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    add-long/2addr v12, v8

    iget-object v14, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 1033
    return-void
.end method
