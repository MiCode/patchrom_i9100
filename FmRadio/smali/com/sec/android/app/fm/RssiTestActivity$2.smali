.class Lcom/sec/android/app/fm/RssiTestActivity$2;
.super Lcom/samsung/media/fmradio/FMEventListener;
.source "RssiTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RssiTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RssiTestActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RssiTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOff(I)V
    .locals 4
    .parameter "reasonCode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mTextCurrent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/fm/RssiTestActivity;->access$100(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Current freq : --   rssi : --"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEditRssi:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/fm/RssiTestActivity;->access$400(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEditStartFreq:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/fm/RssiTestActivity;->access$500(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEditEndFreq:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/fm/RssiTestActivity;->access$600(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/RssiTestActivity;->access$700(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #setter for: Lcom/sec/android/app/fm/RssiTestActivity;->mCount:I
    invoke-static {v0, v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$302(Lcom/sec/android/app/fm/RssiTestActivity;I)I

    .line 89
    return-void
.end method

.method public onOn()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x447a

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEditRssi:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$400(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEditStartFreq:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$500(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEditEndFreq:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$600(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mStartFreq:J
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$800(Lcom/sec/android/app/fm/RssiTestActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    int-to-long v2, v2

    #setter for: Lcom/sec/android/app/fm/RssiTestActivity;->mStartFreq:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$802(Lcom/sec/android/app/fm/RssiTestActivity;J)J

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$000(Lcom/sec/android/app/fm/RssiTestActivity;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mStartFreq:J
    invoke-static {v2}, Lcom/sec/android/app/fm/RssiTestActivity;->access$800(Lcom/sec/android/app/fm/RssiTestActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 110
    :goto_1
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mStartFreq:J
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$800(Lcom/sec/android/app/fm/RssiTestActivity;)J

    move-result-wide v1

    sget v3, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mStartFreq:J
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$800(Lcom/sec/android/app/fm/RssiTestActivity;)J

    move-result-wide v1

    sget v3, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    int-to-long v2, v2

    #setter for: Lcom/sec/android/app/fm/RssiTestActivity;->mStartFreq:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$802(Lcom/sec/android/app/fm/RssiTestActivity;J)J
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 108
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onTune(J)V
    .locals 3
    .parameter "frequency"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEndFreq:J
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$900(Lcom/sec/android/app/fm/RssiTestActivity;)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$000(Lcom/sec/android/app/fm/RssiTestActivity;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v1

    goto :goto_0

    .line 125
    .end local v0           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$2;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$700(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
