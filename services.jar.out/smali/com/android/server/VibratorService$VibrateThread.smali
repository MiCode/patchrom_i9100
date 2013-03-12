.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .parameter
    .parameter "vib"

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 712
    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 713
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 714
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 715
    return-void
.end method

.method private delay(J)V
    .locals 6
    .parameter "duration"

    .prologue
    const-wide/16 v4, 0x0

    .line 718
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 719
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 722
    .local v0, bedtime:J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 733
    .end local v0           #bedtime:J
    :cond_1
    :goto_1
    return-void

    .line 729
    .restart local v0       #bedtime:J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    sub-long p1, v2, v0

    .line 731
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 724
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 736
    const/4 v7, -0x8

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 737
    monitor-enter p0

    .line 738
    const/4 v2, 0x0

    .line 739
    .local v2, index:I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 740
    .local v5, pattern:[J
    array-length v4, v5

    .line 741
    .local v4, len:I
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 742
    .local v6, repeat:I
    const-wide/16 v0, 0x0

    .local v0, duration:J
    move v3, v2

    .line 744
    .end local v2           #index:I
    .local v3, index:I
    :goto_0
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v7, :cond_9

    .line 746
    if-ge v3, v4, :cond_0

    .line 747
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_2
    aget-wide v7, v5, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-long/2addr v0, v7

    move v3, v2

    .line 751
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_0
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 752
    iget-boolean v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_3

    move v2, v3

    .line 780
    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_1
    :try_start_4
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 781
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 782
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8

    .line 783
    :try_start_5
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v7, v7, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v7, p0, :cond_1

    .line 784
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 786
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v7, :cond_2

    .line 789
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 790
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #calls: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v7, v9}, Lcom/android/server/VibratorService;->access$1800(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 791
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v7}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 793
    :cond_2
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 794
    return-void

    .line 756
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_3
    if-ge v3, v4, :cond_6

    .line 759
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_6
    aget-wide v0, v5, v3

    .line 760
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_8

    .line 761
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->USE_VIBETONZ:Z
    invoke-static {v7}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 762
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 763
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    #calls: Lcom/android/server/VibratorService;->doVibratorOn(JI)V
    invoke-static {v7, v0, v1, v8}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;JI)V

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 765
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_4
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;)I

    move-result v8

    #calls: Lcom/android/server/VibratorService;->doVibratorOn(JI)V
    invoke-static {v7, v0, v1, v8}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;JI)V

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto/16 :goto_0

    .line 768
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_5
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->doVibratorOn(J)V
    invoke-static {v7, v0, v1}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;J)V

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto/16 :goto_0

    .line 772
    :cond_6
    if-gez v6, :cond_7

    move v2, v3

    .line 773
    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 775
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_7
    move v2, v6

    .line 776
    .end local v3           #index:I
    .restart local v2       #index:I
    const-wide/16 v0, 0x0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto/16 :goto_0

    .line 781
    .end local v0           #duration:J
    .end local v3           #index:I
    .end local v4           #len:I
    .end local v5           #pattern:[J
    .end local v6           #repeat:I
    .restart local v2       #index:I
    :catchall_0
    move-exception v7

    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v7

    .line 793
    .restart local v0       #duration:J
    .restart local v4       #len:I
    .restart local v5       #pattern:[J
    .restart local v6       #repeat:I
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v7

    .line 781
    .end local v2           #index:I
    .restart local v3       #index:I
    :catchall_2
    move-exception v7

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_2

    :cond_8
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto/16 :goto_0

    :cond_9
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto/16 :goto_1
.end method
