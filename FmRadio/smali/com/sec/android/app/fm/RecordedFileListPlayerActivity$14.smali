.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;
.super Ljava/lang/Object;
.source "RecordedFileListPlayerActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeValue:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1800(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getVolumeString(I)Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1700(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1418
    if-nez p2, :cond_2

    .line 1419
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1900(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020137

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1424
    :goto_0
    if-eqz p3, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    .line 1427
    .local v0, volumebarPosition:I
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToastAudioShock(Landroid/content/Context;ILandroid/media/AudioManager;)V

    .line 1429
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1433
    .end local v0           #volumebarPosition:I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1434
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mHideVolumePanel:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2200(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1435
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mHideVolumePanel:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2200(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1437
    :cond_1
    return-void

    .line 1421
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1900(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f02014d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1411
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1408
    return-void
.end method
