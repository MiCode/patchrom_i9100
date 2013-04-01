.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;
.super Ljava/lang/Object;
.source "RecordedFileListPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field duration:J

.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "arg0"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1385
    if-eqz p3, :cond_0

    .line 1390
    iget-wide v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->duration:J

    long-to-float v1, v1

    int-to-float v2, p2

    const/high16 v3, 0x4410

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1392
    .local v0, seekTime:I
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerElapsedView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1600(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerElapsedView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1600(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    int-to-long v3, v0

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hmsConvert(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$900(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    .end local v0           #seekTime:I
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    .line 1378
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mbProgressDragStatus:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1502(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;Z)Z

    .line 1379
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1380
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getPlayerDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->duration:J

    .line 1382
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    .line 1363
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #setter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mbProgressDragStatus:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1502(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;Z)Z

    .line 1364
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1365
    .local v0, progress:I
    iget-wide v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->duration:J

    long-to-float v2, v2

    int-to-float v3, v0

    const/high16 v4, 0x4410

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1367
    .local v1, seekTime:I
    const-string v2, "RecordedFileListPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStopTrackingTouch() - seekTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1370
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->seek(IZ)V

    .line 1373
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iput-boolean v5, v2, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isEnableFinishChecker:Z

    .line 1374
    return-void
.end method
