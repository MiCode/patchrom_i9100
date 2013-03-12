.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mp"
    .parameter "looper"

    .prologue
    .line 2248
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 2249
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2250
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2251
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 2255
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mNativeContext:I
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2256
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "mediaplayer went away with unhandled events"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2259
    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2386
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2261
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2262
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 2266
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2267
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 2268
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;Z)V

    goto :goto_0

    .line 2272
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2273
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v4}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto :goto_0

    .line 2277
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2278
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto/16 :goto_0

    .line 2282
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2283
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v4, v5}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 2285
    :cond_3
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_5

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_5

    .line 2287
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    #setter for: Landroid/media/MediaPlayer;->mIsVideo:Z
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->access$702(Landroid/media/MediaPlayer;Z)Z

    .line 2288
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mIsStart:Z
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2290
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    iget-boolean v1, v1, Landroid/media/MediaPlayer;->mAIAContext:Z

    if-nez v1, :cond_4

    .line 2292
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.media.IMediaPlayer.videoexist"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2294
    .local v3, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 2295
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Binder;->getOrigCallingUser()I

    move-result v12

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2301
    :goto_1
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "sendBroadcast android.media.IMediaPlayer.videoexist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2298
    :catch_0
    move-exception v13

    .line 2299
    .local v13, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "sendBroadcast fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2304
    .end local v3           #intent:Landroid/content/Intent;
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v1, "MediaPlayer"

    const-string v2, "context is 1, don\'t send BroadcastIntent!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2308
    :cond_5
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t send intent. msg.arg1 = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", msg.arg2 = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2313
    :sswitch_6
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const/4 v14, 0x0

    .line 2315
    .local v14, error_was_handled:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2320
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    const/16 v2, -0x31

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    const/16 v2, -0x3c

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    const/16 v2, -0x3d

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    const/16 v2, -0x40

    if-ne v1, v2, :cond_a

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2324
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 2326
    const-string v2, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayReadyAcquistion Failed \n sending onPlayReadyError "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v4, v5, v6, v1}, Landroid/media/MediaPlayer$OnPlayReadyErrorListener;->onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v14

    .line 2352
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_8

    if-nez v14, :cond_8

    .line 2353
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 2355
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 2331
    :cond_9
    const-string v1, "MediaPlayer"

    const-string v2, "PlayReadyAcquistion Failed \n sending onPlayReadyError NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v4, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v14

    goto :goto_2

    .line 2336
    :cond_a
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_b

    .line 2338
    const-string v1, "MediaPlayer"

    const-string v2, "License Not Found, propagate error to MoviePlaybackService.java"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v4, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v14

    goto :goto_2

    .line 2343
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v4, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v14

    goto/16 :goto_2

    .line 2359
    .end local v14           #error_was_handled:Z
    :sswitch_7
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/16 v2, 0x2bc

    if-eq v1, v2, :cond_c

    .line 2360
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Info ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2363
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v4, v5}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 2368
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2370
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_d

    .line 2371
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 2373
    :cond_d
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_0

    .line 2374
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/Parcel;

    .line 2375
    .local v15, parcel:Landroid/os/Parcel;
    new-instance v16, Landroid/media/TimedText;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 2376
    .local v16, text:Landroid/media/TimedText;
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 2377
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, v16

    invoke-interface {v1, v2, v0}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 2259
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x63 -> :sswitch_8
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
    .end sparse-switch
.end method
