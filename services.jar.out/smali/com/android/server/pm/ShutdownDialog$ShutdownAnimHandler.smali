.class Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownAnimHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShutdownDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShutdownDialog;Lcom/android/server/pm/ShutdownDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;-><init>(Lcom/android/server/pm/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0x12c

    const/16 v4, 0xc8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->handle:I
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$100(Lcom/android/server/pm/ShutdownDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->buf:[I
    invoke-static {v1}, Lcom/android/server/pm/ShutdownDialog;->access$200(Lcom/android/server/pm/ShutdownDialog;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/LibQmg;->qmgLoadFrame(I[I)I

    move-result v9

    .line 177
    .local v9, ret:I
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #setter for: Lcom/android/server/pm/ShutdownDialog;->mDrawState:I
    invoke-static {v0, v4}, Lcom/android/server/pm/ShutdownDialog;->access$302(Lcom/android/server/pm/ShutdownDialog;I)I

    .line 182
    const-string v0, "ShutdownDialog"

    const-string v1, "getting animation lock acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #setter for: Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownDialog;->access$402(Lcom/android/server/pm/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$400(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    new-instance v1, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler$1;-><init>(Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;)V

    #setter for: Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownDialog;->access$502(Lcom/android/server/pm/ShutdownDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 200
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$600(Lcom/android/server/pm/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "ShutdownDialog"

    const-string v1, "getting animation lock acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #setter for: Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownDialog;->access$702(Lcom/android/server/pm/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$700(Lcom/android/server/pm/ShutdownDialog;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->soundThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$800(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #setter for: Lcom/android/server/pm/ShutdownDialog;->mDrawState:I
    invoke-static {v0, v10}, Lcom/android/server/pm/ShutdownDialog;->access$302(Lcom/android/server/pm/ShutdownDialog;I)I

    .line 217
    :cond_1
    if-ltz v9, :cond_4

    .line 218
    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Draw frame: ret="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$1100(Lcom/android/server/pm/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->buf:[I
    invoke-static {v1}, Lcom/android/server/pm/ShutdownDialog;->access$200(Lcom/android/server/pm/ShutdownDialog;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->width:I
    invoke-static {v3}, Lcom/android/server/pm/ShutdownDialog;->access$900(Lcom/android/server/pm/ShutdownDialog;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->width:I
    invoke-static {v4}, Lcom/android/server/pm/ShutdownDialog;->access$900(Lcom/android/server/pm/ShutdownDialog;)I

    move-result v6

    iget-object v4, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->height:I
    invoke-static {v4}, Lcom/android/server/pm/ShutdownDialog;->access$1000(Lcom/android/server/pm/ShutdownDialog;)I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$1100(Lcom/android/server/pm/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 221
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$1200(Lcom/android/server/pm/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/pm/ShutdownDialog;->access$1100(Lcom/android/server/pm/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 223
    if-nez v9, :cond_3

    .line 224
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$500(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$500(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->handle:I
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$100(Lcom/android/server/pm/ShutdownDialog;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/LibQmg;->qmgClose(I)I

    .line 228
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    const/16 v1, 0x190

    #setter for: Lcom/android/server/pm/ShutdownDialog;->mDrawState:I
    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownDialog;->access$302(Lcom/android/server/pm/ShutdownDialog;I)I

    .line 241
    :goto_2
    return-void

    .line 186
    :catch_0
    move-exception v8

    .line 187
    .local v8, e:Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #setter for: Lcom/android/server/pm/ShutdownDialog;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0, v5}, Lcom/android/server/pm/ShutdownDialog;->access$402(Lcom/android/server/pm/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    .line 188
    const-string v0, "ShutdownDialog"

    const-string v1, "!@Exception occurs while sAnimationEndedLock.acquire()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v8

    .line 206
    .restart local v8       #e:Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #setter for: Lcom/android/server/pm/ShutdownDialog;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0, v5}, Lcom/android/server/pm/ShutdownDialog;->access$702(Lcom/android/server/pm/ShutdownDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    .line 207
    const-string v0, "ShutdownDialog"

    const-string v1, "!@Exception occurs while sAnimationSoundEndedLock.acquire()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 231
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_3
    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v10, v0, v1}, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 235
    :cond_4
    const-string v0, "ShutdownDialog"

    const-string v1, "libQmg.qmgLoadFrame() return < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$500(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 237
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$500(Lcom/android/server/pm/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/ShutdownDialog$ShutdownAnimHandler;->this$0:Lcom/android/server/pm/ShutdownDialog;

    #getter for: Lcom/android/server/pm/ShutdownDialog;->handle:I
    invoke-static {v0}, Lcom/android/server/pm/ShutdownDialog;->access$100(Lcom/android/server/pm/ShutdownDialog;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/LibQmg;->qmgClose(I)I

    goto :goto_2
.end method
