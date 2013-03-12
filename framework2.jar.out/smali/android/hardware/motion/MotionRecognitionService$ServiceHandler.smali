.class final Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;
.super Landroid/os/Handler;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1275
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    .line 1276
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1277
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1281
    if-eqz p1, :cond_1

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x55

    if-ne v5, v6, :cond_1

    .line 1283
    const/4 v4, 0x0

    .line 1285
    .local v4, motionEvent:Landroid/hardware/motion/MREvent;
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Landroid/hardware/motion/MREvent;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :goto_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v6, v5, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1291
    :try_start_1
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v5, v5, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 1292
    .local v3, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    invoke-virtual {v3, v4}, Landroid/hardware/motion/MotionRecognitionService$Listener;->callback(Landroid/hardware/motion/MREvent;)V

    goto :goto_1

    .line 1296
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1286
    :catch_0
    move-exception v1

    .line 1287
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "MotionRecognitionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassCastException in handleMessage: msg.obj = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1294
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_2
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v5, v5, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-virtual {v5, v4}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->recycle(Landroid/hardware/motion/MREvent;)V

    .line 1295
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v5, v5, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1296
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1299
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #motionEvent:Landroid/hardware/motion/MREvent;
    :cond_1
    return-void
.end method
