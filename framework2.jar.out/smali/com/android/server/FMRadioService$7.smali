.class Lcom/android/server/FMRadioService$7;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v6, -0x2

    const/16 v5, 0xc8

    const/16 v4, 0xa

    .line 373
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$1200(Lcom/android/server/FMRadioService;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "Going for resuming FM"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->on()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "making call to audiomanager setRadioSpeakerOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$1800(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1200(Lcom/android/server/FMRadioService;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 383
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1200(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-long v1, v1

    #setter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v0, v1, v2}, Lcom/android/server/FMRadioService;->access$1602(Lcom/android/server/FMRadioService;J)J

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slowly increase the volume till :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v1

    #setter for: Lcom/android/server/FMRadioService;->mCurrentResumeVol:J
    invoke-static {v0, v1, v2}, Lcom/android/server/FMRadioService;->access$1702(Lcom/android/server/FMRadioService;J)J

    .line 391
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 392
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    iget-object v0, v0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    :goto_0
    const-string v0, "Turning on FM player"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 402
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-string v0, "com.app.fm.auto.on"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local p2
    const-string v0, "freq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1200(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v0, v6, v7}, Lcom/android/server/FMRadioService;->access$1202(Lcom/android/server/FMRadioService;J)J

    .line 410
    :cond_0
    :goto_1
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$7;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mResumeVol:J
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 407
    :cond_2
    const-string v0, "Not able to resume FM player"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
