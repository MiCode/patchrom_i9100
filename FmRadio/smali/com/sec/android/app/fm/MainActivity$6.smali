.class Lcom/sec/android/app/fm/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/16 v2, 0xc

    .line 994
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 995
    sparse-switch v0, :sswitch_data_0

    .line 1137
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->getFavBtnIndex(I)I
    invoke-static {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->access$4100(Lcom/sec/android/app/fm/MainActivity;I)I

    move-result v0

    .line 1139
    if-ltz v0, :cond_0

    if-ge v0, v2, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v2, 0xc8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 999
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-static {}, Lcom/sec/android/app/fm/MainActivity;->access$2800()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->showVolumeBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1006
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    goto :goto_0

    .line 1010
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    const-wide/16 v2, 0x222e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_3

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "Worker thread is buys ignore it"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Prev]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->showSeekingText()V

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/WorkerThread;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1021
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "WorkerThread died, new WorkerThread created"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$2102(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/WorkerThread;)Lcom/sec/android/app/fm/WorkerThread;

    .line 1024
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isLocked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1025
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->lock()V

    .line 1027
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/fm/WorkerThread;->doOperation(IJLandroid/view/View;I)V

    goto/16 :goto_0

    .line 1031
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->toastOn()V

    goto/16 :goto_0

    .line 1037
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Play/pause]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "test"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1044
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3300(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v2, 0xb

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1048
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_turning_on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1059
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_8

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "Worker thread is buys ignore it"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1063
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[onClick - Control Next]"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-wide v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    const-wide/16 v2, 0x2a30

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->showSeekingText()V

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/WorkerThread;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1070
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "WorkerThread died, new WorkerThread created"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$2102(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/WorkerThread;)Lcom/sec/android/app/fm/WorkerThread;

    .line 1073
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->isLocked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->lock()V

    .line 1076
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/fm/WorkerThread;->doOperation(IJLandroid/view/View;I)V

    goto/16 :goto_0

    .line 1080
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->toastOn()V

    goto/16 :goto_0

    .line 1084
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1089
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_0

    .line 1093
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3400(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->resumeFMRecording()V
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3500(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_0

    .line 1097
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->pauseFMRecording()V
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3600(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_0

    .line 1103
    :sswitch_7
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 1108
    :sswitch_8
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3700(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 1114
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/sec/android/app/fm/MainActivity;->showCustomOptionMenu(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$3800(Lcom/sec/android/app/fm/MainActivity;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1119
    :sswitch_a
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3900(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-class v3, Lcom/sec/android/app/fm/TagsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1124
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1125
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v2, 0x7f0a00c5

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$4002(Lcom/sec/android/app/fm/MainActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1130
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1127
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 1128
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$6;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v0

    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 995
    :sswitch_data_0
    .sparse-switch
        0x7f070040 -> :sswitch_4
        0x7f070047 -> :sswitch_0
        0x7f070049 -> :sswitch_8
        0x7f070055 -> :sswitch_9
        0x7f070059 -> :sswitch_2
        0x7f07005d -> :sswitch_1
        0x7f07005e -> :sswitch_3
        0x7f07005f -> :sswitch_a
        0x7f07007c -> :sswitch_5
        0x7f07007d -> :sswitch_6
        0x7f07007e -> :sswitch_7
    .end sparse-switch
.end method
