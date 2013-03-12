.class final Landroid/hardware/motion/MotionRecognitionService$Listener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mMotionSensors:I

.field final mToken:Landroid/os/IBinder;

.field mUseAlways:Z

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/IBinder;I)V
    .locals 1
    .parameter
    .parameter "token"
    .parameter "motion_sensors"

    .prologue
    .line 1214
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    iput-object p2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    .line 1216
    iput p3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    .line 1218
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1221
    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1222
    const-string v0, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .binderDied : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1224
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1226
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V
    invoke-static {v0}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 1227
    monitor-exit v1

    .line 1228
    return-void

    .line 1227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public callback(Landroid/hardware/motion/MREvent;)V
    .locals 7
    .parameter "motionEvent"

    .prologue
    .line 1231
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v3

    .line 1233
    .local v3, motion:I
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1249
    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v5}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 1251
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/hardware/motion/MotionRecognitionService;->access$800(Landroid/hardware/motion/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/16 v6, 0x44

    if-ne v5, v6, :cond_3

    .line 1252
    const/4 v4, 0x0

    .line 1254
    .local v4, packageName:Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/hardware/motion/MotionRecognitionService;->access$800(Landroid/hardware/motion/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1255
    .local v2, mActivtyMngr:Landroid/app/ActivityManager;
    if-eqz v2, :cond_1

    .line 1256
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 1261
    .end local v2           #mActivtyMngr:Landroid/app/ActivityManager;
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1262
    invoke-interface {v0, p1}, Landroid/hardware/motion/IMotionRecognitionCallback;->motionCallback(Landroid/hardware/motion/MREvent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1271
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1238
    :sswitch_0
    iget v5, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    goto :goto_1

    .line 1243
    :sswitch_1
    iget v5, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    goto :goto_1

    .line 1266
    .restart local v0       #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :cond_3
    :try_start_3
    invoke-interface {v0, p1}, Landroid/hardware/motion/IMotionRecognitionCallback;->motionCallback(Landroid/hardware/motion/MREvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1268
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :catch_0
    move-exception v1

    .line 1269
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "MotionRecognitionService"

    const-string v6, "Failed motionCallback"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1258
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    .restart local v4       #packageName:Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 1233
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x3d -> :sswitch_1
        0x48 -> :sswitch_1
    .end sparse-switch
.end method
