.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;
.super Landroid/os/Handler;
.source "RecordedFileListPlayerActivity.java"


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
    .line 1520
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const-wide/16 v10, 0x12c

    const/16 v9, 0x10

    .line 1523
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1525
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1527
    :sswitch_0
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPaused()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1529
    iget-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initProgress()V
    invoke-static {v6}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2300(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    .line 1530
    iget-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;
    invoke-static {v6}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1531
    iget-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    const/4 v7, 0x0

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->changeMode(I)V
    invoke-static {v6, v7}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2500(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;I)V

    goto :goto_0

    .line 1536
    :sswitch_1
    iget-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPrevButton:Landroid/widget/ImageButton;
    invoke-static {v6}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2600(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1537
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1538
    .local v5, rewTime:I
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1539
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPosition()I

    move-result v7

    mul-int/lit16 v8, v5, 0x3e8

    sub-int/2addr v7, v8

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->seek(IZ)V

    .line 1541
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->ProgressHandler:Landroid/os/Handler;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 1542
    .local v3, newMsg:Landroid/os/Message;
    if-ge v5, v9, :cond_2

    .line 1543
    mul-int/lit8 v6, v5, 0x2

    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 1546
    :goto_1
    invoke-virtual {p0, v3, v10, v11}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1545
    :cond_2
    iput v5, v3, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 1552
    .end local v3           #newMsg:Landroid/os/Message;
    .end local v5           #rewTime:I
    :sswitch_2
    iget-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mNextButton:Landroid/widget/ImageButton;
    invoke-static {v6}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$2700(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1553
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1554
    .local v2, ffTime:I
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1555
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getPlayerDuration()I

    move-result v1

    .line 1556
    .local v1, duration:I
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPosition()I

    move-result v0

    .line 1557
    .local v0, curPos:I
    mul-int/lit16 v6, v2, 0x3e8

    add-int v4, v0, v6

    .line 1558
    .local v4, nextPos:I
    if-lt v4, v1, :cond_3

    .line 1559
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v7

    invoke-virtual {v6, v1, v7}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->seek(IZ)V

    goto/16 :goto_0

    .line 1562
    :cond_3
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v7

    invoke-virtual {v6, v4, v7}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->seek(IZ)V

    .line 1565
    .end local v0           #curPos:I
    .end local v1           #duration:I
    .end local v4           #nextPos:I
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-object v6, v6, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->ProgressHandler:Landroid/os/Handler;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 1566
    .restart local v3       #newMsg:Landroid/os/Message;
    if-ge v2, v9, :cond_5

    .line 1567
    mul-int/lit8 v6, v2, 0x2

    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 1570
    :goto_2
    invoke-virtual {p0, v3, v10, v11}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1569
    :cond_5
    iput v2, v3, Landroid/os/Message;->arg1:I

    goto :goto_2

    .line 1525
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7f0700a3 -> :sswitch_1
        0x7f0700a4 -> :sswitch_2
    .end sparse-switch
.end method
