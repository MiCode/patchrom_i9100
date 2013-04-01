.class final Lcom/sec/android/app/fm/MediaButtonReceiver$1;
.super Landroid/os/Handler;
.source "MediaButtonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    invoke-static {}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$100()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 37
    invoke-static {}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cant handle Message cause mContext"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$100()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FMPlayer"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    .line 41
    .local v1, player:Lcom/samsung/media/fmradio/FMPlayer;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 61
    invoke-static {v4}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$202(I)I

    goto :goto_0

    .line 43
    :pswitch_0
    invoke-static {v4}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$202(I)I

    .line 45
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-static {}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$100()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.player.off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$100()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.player.on"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$300()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/MediaButtonReceiver$1;->removeMessages(I)V

    .line 57
    :cond_2
    invoke-static {v4}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$202(I)I

    .line 58
    invoke-static {}, Lcom/sec/android/app/fm/MediaButtonReceiver;->access$100()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.player.tune.next"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
