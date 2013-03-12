.class Lcom/samsung/media/fmradio/FMEventListener$1;
.super Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;
.source "FMEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/FMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/media/fmradio/FMEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/media/fmradio/FMEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public earPhoneConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void
.end method

.method public earPhoneDisconnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method public onAFReceived(J)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    return-void
.end method

.method public onAFStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    return-void
.end method

.method public onChannelFound(J)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method

.method public onOff(I)V
    .locals 4
    .parameter "reasonCode"

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method

.method public onOn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method public onRDSDisabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    return-void
.end method

.method public onRDSEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    return-void
.end method

.method public onRTPlusReceived(IIIIII)V
    .locals 6
    .parameter "contentType1"
    .parameter "startPos1"
    .parameter "additionalLen1"
    .parameter "contentType2"
    .parameter "startPos2"
    .parameter "additionalLen2"

    .prologue
    const/4 v5, 0x0

    .line 152
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v5, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public onScanFinished([J)V
    .locals 3
    .parameter "freqArry"

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method

.method public onScanStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    return-void
.end method

.method public onScanStopped([J)V
    .locals 3
    .parameter "freqArry"

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void
.end method

.method public onTune(J)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    return-void
.end method

.method public recFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    return-void
.end method

.method public volumeLock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-void
.end method
