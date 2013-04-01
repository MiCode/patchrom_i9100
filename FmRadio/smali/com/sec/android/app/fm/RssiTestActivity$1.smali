.class Lcom/sec/android/app/fm/RssiTestActivity$1;
.super Landroid/os/Handler;
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
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/fm/RssiTestActivity$1;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity$1;->removeMessages(I)V

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$1;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mTextCurrent:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$100(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current freq : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/RssiTestActivity$1;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-static {v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$000(Lcom/sec/android/app/fm/RssiTestActivity;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   rssi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/RssiTestActivity$1;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-static {v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$000(Lcom/sec/android/app/fm/RssiTestActivity;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentRSSI()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$1;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mRssi:I
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$200(Lcom/sec/android/app/fm/RssiTestActivity;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/sec/android/app/fm/RssiTestActivity$1;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-static {v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$000(Lcom/sec/android/app/fm/RssiTestActivity;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentRSSI()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$1;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$308(Lcom/sec/android/app/fm/RssiTestActivity;)I

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$1;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mCount:I
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$300(Lcom/sec/android/app/fm/RssiTestActivity;)I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$1;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/fm/RssiTestActivity;->mCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/RssiTestActivity;->access$302(Lcom/sec/android/app/fm/RssiTestActivity;I)I

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity$1;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-static {v1}, Lcom/sec/android/app/fm/RssiTestActivity;->access$000(Lcom/sec/android/app/fm/RssiTestActivity;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->seekUp()J

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/fm/RssiTestActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 72
    :catch_1
    move-exception v1

    goto :goto_0
.end method
