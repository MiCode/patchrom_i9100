.class Lcom/samsung/media/fmradio/FMEventListener$2;
.super Landroid/os/Handler;
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
    .line 191
    iput-object p1, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 197
    .local v7, freq:Ljava/lang/Long;
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/media/fmradio/FMEventListener;->onChannelFound(J)V

    goto :goto_0

    .line 201
    .end local v7           #freq:Ljava/lang/Long;
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStarted()V

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    move-object v8, v0

    check-cast v8, [J

    .line 206
    .local v8, freqArry:[J
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v8}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStopped([J)V

    goto :goto_0

    .line 210
    .end local v8           #freqArry:[J
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    move-object v8, v0

    check-cast v8, [J

    .line 211
    .restart local v8       #freqArry:[J
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v8}, Lcom/samsung/media/fmradio/FMEventListener;->onScanFinished([J)V

    goto :goto_0

    .line 215
    .end local v8           #freqArry:[J
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->onOn()V

    goto :goto_0

    .line 219
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 220
    .local v10, reasonCode:I
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v10}, Lcom/samsung/media/fmradio/FMEventListener;->onOff(I)V

    goto :goto_0

    .line 224
    .end local v10           #reasonCode:I
    :pswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 225
    .restart local v7       #freq:Ljava/lang/Long;
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto :goto_0

    .line 229
    .end local v7           #freq:Ljava/lang/Long;
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneConnected()V

    goto :goto_0

    .line 233
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneDisconnected()V

    goto :goto_0

    .line 238
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    .line 239
    .local v9, obArry:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    aget-object v0, v9, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aget-object v0, v9, v5

    check-cast v0, Ljava/lang/String;

    aget-object v1, v9, v6

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v9           #obArry:[Ljava/lang/Object;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, [Ljava/lang/Object;

    .line 246
    .local v11, rtpArry:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    aget-object v1, v11, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, v11, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, v11, v6

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v11, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v11, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v11, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/media/fmradio/FMEventListener;->onRTPlusReceived(IIIIII)V

    goto/16 :goto_0

    .line 251
    .end local v11           #rtpArry:[Ljava/lang/Object;
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSEnabled()V

    goto/16 :goto_0

    .line 255
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSDisabled()V

    goto/16 :goto_0

    .line 259
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->onAFStarted()V

    goto/16 :goto_0

    .line 263
    :pswitch_e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 264
    .restart local v7       #freq:Ljava/lang/Long;
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/media/fmradio/FMEventListener;->onAFReceived(J)V

    .line 265
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto/16 :goto_0

    .line 270
    .end local v7           #freq:Ljava/lang/Long;
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->volumeLock()V

    goto/16 :goto_0

    .line 274
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->recFinish()V

    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method
