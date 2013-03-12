.class Lcom/android/server/PowerManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 658
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 666
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 667
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 668
    .local v0, fVal:Ljava/lang/Float;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2
    :cond_0
    return p2

    .line 667
    .end local v0           #fVal:Ljava/lang/Float;
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 660
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 661
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 662
    .local v0, iVal:Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2
    :cond_0
    return p2

    .line 661
    .end local v0           #iVal:Ljava/lang/Integer;
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 19
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v18

    monitor-enter v18

    .line 674
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "stay_on_while_plugged_in"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mStayOnConditions:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$2202(Lcom/android/server/PowerManagerService;I)I

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)I

    move-result v14

    .line 680
    .local v14, prevScreenOffTimeoutSetting:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x3a98

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$2302(Lcom/android/server/PowerManagerService;I)I

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "is_secured_lock"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mIsSecuredLock:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$2402(Lcom/android/server/PowerManagerService;I)I

    .line 686
    const/4 v11, 0x0

    .line 687
    .local v11, bButtonSettingChanged:Z
    const-string v2, "button_key_light"

    const/16 v3, 0x5dc

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 688
    .local v12, newButtonOffTimeoutSetting:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-eq v2, v12, :cond_0

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I
    invoke-static {v2, v12}, Lcom/android/server/PowerManagerService;->access$2502(Lcom/android/server/PowerManagerService;I)I

    .line 690
    const/4 v11, 0x1

    .line 695
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "intelligent_sleep_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "intelligent_screen_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    #setter for: Lcom/android/server/PowerManagerService;->mSmartSleepEnabled:Z
    invoke-static {v3, v2}, Lcom/android/server/PowerManagerService;->access$2602(Lcom/android/server/PowerManagerService;Z)Z

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "screen_brightness"

    const/16 v4, 0xc0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$2802(Lcom/android/server/PowerManagerService;I)I

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$2902(Lcom/android/server/PowerManagerService;F)F

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;I)V

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-eq v14, v2, :cond_1

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$TimeoutTask;

    move-result-object v5

    iget v5, v5, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;JI)V

    .line 719
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)I

    move-result v13

    .line 720
    .local v13, prevAutoPowerOffTimeoutSetting:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_power_off"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$3402(Lcom/android/server/PowerManagerService;I)I

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-eq v13, v2, :cond_2

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3500(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long v16, v2, v4

    .line 724
    .local v16, when:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3500(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 747
    .end local v16           #when:J
    :cond_2
    const/4 v2, 0x1

    if-ne v11, v2, :cond_3

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 749
    const-string v2, "PowerManagerService"

    const-string v3, "SettingsObserver : update : userActivity()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "SettingsObserver1"

    #setter for: Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$1402(Lcom/android/server/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    #calls: Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V
    invoke-static/range {v2 .. v10}, Lcom/android/server/PowerManagerService;->access$3800(Lcom/android/server/PowerManagerService;JJZIZZ)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "SettingsObserver2"

    #setter for: Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$1402(Lcom/android/server/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    #calls: Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V
    invoke-static/range {v2 .. v10}, Lcom/android/server/PowerManagerService;->access$3800(Lcom/android/server/PowerManagerService;JJZIZZ)V

    .line 757
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v3, "window_animation_scale"

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$3902(Lcom/android/server/PowerManagerService;F)F

    .line 758
    const-string v2, "transition_animation_scale"

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v15

    .line 759
    .local v15, transitionScale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$4002(Lcom/android/server/PowerManagerService;I)I

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3900(Lcom/android/server/PowerManagerService;)F

    move-result v2

    const/high16 v3, 0x3f00

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$4076(Lcom/android/server/PowerManagerService;I)I

    .line 763
    :cond_4
    const/high16 v2, 0x3f00

    cmpl-float v2, v15, v2

    if-lez v2, :cond_5

    .line 767
    :cond_5
    monitor-exit v18

    .line 768
    return-void

    .line 695
    .end local v13           #prevAutoPowerOffTimeoutSetting:I
    .end local v15           #transitionScale:F
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 767
    .end local v11           #bButtonSettingChanged:Z
    .end local v12           #newButtonOffTimeoutSetting:I
    .end local v14           #prevScreenOffTimeoutSetting:I
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
