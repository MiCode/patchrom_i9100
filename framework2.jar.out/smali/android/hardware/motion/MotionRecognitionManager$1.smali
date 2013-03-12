.class Landroid/hardware/motion/MotionRecognitionManager$1;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionManager;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 430
    iget-object v6, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 431
    .local v6, scontext:Landroid/hardware/scontext/SContext;
    new-instance v5, Landroid/hardware/motion/MREvent;

    invoke-direct {v5}, Landroid/hardware/motion/MREvent;-><init>()V

    .line 432
    .local v5, mrevent:Landroid/hardware/motion/MREvent;
    const/4 v3, 0x0

    .line 433
    .local v3, isEnabled:Z
    invoke-virtual {v6}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 435
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getMovementContext()Landroid/hardware/scontext/SContextMovement;

    move-result-object v0

    .line 436
    .local v0, context:Landroid/hardware/scontext/SContextMovement;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextMovement;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 438
    :try_start_0
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    #getter for: Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionManager;->access$000(Landroid/hardware/motion/MotionRecognitionManager;)Landroid/hardware/motion/IMotionRecognitionService;

    move-result-object v8

    invoke-interface {v8}, Landroid/hardware/motion/IMotionRecognitionService;->getMotionStatus()Z

    move-result v3

    .line 439
    const-string v8, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  >> check setting smart alert enabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_1
    if-eqz v3, :cond_0

    .line 445
    const/16 v8, 0x43

    invoke-virtual {v5, v8}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 446
    const-string v8, "MotionRecognitionManager"

    const-string v9, "mySContextMotionListener : Send Smart alert event"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    #getter for: Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionManager;->access$100(Landroid/hardware/motion/MotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 449
    :try_start_1
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    #getter for: Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionManager;->access$100(Landroid/hardware/motion/MotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 450
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v7, :cond_1

    .line 451
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager$1;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    #getter for: Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionManager;->access$100(Landroid/hardware/motion/MotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 452
    .local v4, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v4, v5}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->motionCallback(Landroid/hardware/motion/MREvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 440
    .end local v2           #i:I
    .end local v4           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v7           #size:I
    :catch_0
    move-exception v1

    .line 441
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "MotionRecognitionManager"

    const-string v9, "RemoteException in getMotionStatus: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 454
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #i:I
    .restart local v7       #size:I
    :cond_1
    :try_start_2
    monitor-exit v9

    goto :goto_0

    .end local v2           #i:I
    .end local v7           #size:I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
