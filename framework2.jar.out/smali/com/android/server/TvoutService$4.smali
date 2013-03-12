.class Lcom/android/server/TvoutService$4;
.super Landroid/content/BroadcastReceiver;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, action:Ljava/lang/String;
    const-string v11, "TvoutService_Java"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TvoutService Action : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v11, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 341
    const-string v11, "state"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 344
    .local v7, bStatus:Z
    const-string v11, "TvoutService_Java"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TvoutService HDMI : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " status : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v11, 0x1

    if-ne v7, v11, :cond_3

    .line 349
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 351
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    .line 352
    const-string v11, "TvoutService_Java"

    const-string v12, "HDMI is connected, send intent to terminate screen recorder"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.SCREENRECORDER_HDMI"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, SRActionIntent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 357
    .local v9, msg:Landroid/os/Message;
    const-string v11, "HDMI connected. ScreenRecorder is  turned off"

    iput-object v11, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1000(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v11

    const-wide/16 v12, 0x7d0

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 361
    .end local v1           #SRActionIntent:Landroid/content/Intent;
    .end local v9           #msg:Landroid/os/Message;
    :cond_0
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 362
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 363
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 365
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutTeminateWFD()Z

    .line 366
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 367
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 368
    .restart local v9       #msg:Landroid/os/Message;
    const-string v11, "HDMI connected. AllShare Cast turned off"

    iput-object v11, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1000(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v11

    const-wide/16 v12, 0x7d0

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 595
    .end local v7           #bStatus:Z
    .end local v9           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    const-string v11, "persist.sys.camera.connect"

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1200(Lcom/android/server/TvoutService;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void

    .line 373
    .restart local v7       #bStatus:Z
    :cond_2
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11, v7}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 374
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11, v7}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 375
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v11, v7}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 376
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    .line 377
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    .line 378
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 379
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 381
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-string v12, "/sys/power/gpu_lock"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    .line 383
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1200(Lcom/android/server/TvoutService;)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v11

    if-nez v11, :cond_1

    .line 385
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    goto :goto_0

    .line 422
    :cond_3
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutGetCableStatus()Z

    move-result v8

    .line 423
    .local v8, cable_status:Z
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11, v7}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 424
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11, v7}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 425
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v11, v7}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 426
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 428
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-string v12, "/sys/power/gpu_lock"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    .line 430
    const-string v11, "persist.sys.camera.transform"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v11, "persist.sys.camera.connect"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 433
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 435
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v12

    if-ne v11, v12, :cond_4

    .line 437
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 440
    :cond_4
    const/4 v11, 0x1

    if-ne v8, v11, :cond_1

    .line 441
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    goto/16 :goto_0

    .line 444
    .end local v7           #bStatus:Z
    .end local v8           #cable_status:Z
    :cond_5
    const-string v11, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 447
    const-string v11, "TvoutService_Java"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Locale changed : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    goto/16 :goto_0

    .line 451
    :cond_6
    const-string v11, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 454
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v12

    if-ne v11, v12, :cond_7

    .line 456
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 458
    :cond_7
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v11

    if-eqz v11, :cond_a

    .line 459
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v12

    add-int/lit16 v12, v12, 0xb4

    rem-int/lit16 v12, v12, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$1302(Lcom/android/server/TvoutService;I)I

    .line 460
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    .line 461
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_9

    .line 462
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v12, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v11, v12, v13}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 465
    :cond_8
    :goto_1
    const-string v11, "persist.sys.camera.transform"

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :goto_2
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 471
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v12, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v11, v12, v13}, Lcom/android/server/TvoutService;->access$1202(Lcom/android/server/TvoutService;J)J

    .line 472
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 473
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 463
    :cond_9
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v11

    const-wide/16 v13, 0x2

    cmp-long v11, v11, v13

    if-nez v11, :cond_8

    .line 464
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v11, v12, v13}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_1

    .line 468
    :cond_a
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    goto :goto_2

    .line 476
    :cond_b
    const-string v11, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 478
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v12

    if-ne v11, v12, :cond_c

    .line 480
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 482
    :cond_c
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_f

    .line 483
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v12

    add-int/lit16 v12, v12, 0xb4

    rem-int/lit16 v12, v12, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$1302(Lcom/android/server/TvoutService;I)I

    .line 484
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    .line 485
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_e

    .line 486
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v12, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v11, v12, v13}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 489
    :cond_d
    :goto_3
    const-string v11, "persist.sys.camera.transform"

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :goto_4
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 495
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 496
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 497
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v12, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v11, v12, v13}, Lcom/android/server/TvoutService;->access$1202(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 487
    :cond_e
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v11

    const-wide/16 v13, 0x2

    cmp-long v11, v11, v13

    if-nez v11, :cond_d

    .line 488
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v11, v12, v13}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_3

    .line 492
    :cond_f
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v12}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    goto :goto_4

    .line 499
    :cond_10
    const-string v11, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 502
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v11

    if-nez v11, :cond_11

    .line 504
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    .line 507
    :cond_11
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 508
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 509
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 510
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v11, v12, v13}, Lcom/android/server/TvoutService;->access$1202(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 512
    :cond_12
    const-string v11, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 514
    const-string v11, "com.sec.android.allshare.intent.extra.CAST_STATE"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 516
    .local v5, bAllShareCastConnectedFlag:Z
    if-eqz v5, :cond_13

    .line 517
    const-string v11, "TvoutService_Java"

    const-string v12, "AllShare Cast Connected !!!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 519
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 520
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 523
    :cond_13
    const-string v11, "TvoutService_Java"

    const-string v12, "AllShare Cast NOT Connected !!!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 525
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 526
    const-string v11, "persist.sys.camera.transform"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v11, "persist.sys.camera.connect"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 532
    .end local v5           #bAllShareCastConnectedFlag:Z
    :cond_14
    const-string v11, "android.intent.action.SCREENRECORDER_INFORMATION"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 534
    const-string v11, "TvoutService_Java"

    const-string v12, "Screen recorder intent is received"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v2, 0x0

    .line 536
    .local v2, SRState:Ljava/lang/String;
    const-string v11, "IsRunning"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    const-string v11, "TvoutService_Java"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenRecorder State is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v11, "run"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 540
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 541
    :cond_15
    const-string v11, "stop"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 542
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 545
    .end local v2           #SRState:Ljava/lang/String;
    :cond_16
    const-string v11, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 547
    const-string v11, "android.intent.extra.device_state"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 548
    .local v6, bMouseDockedFlag:I
    const-string v11, "TvoutService_Java"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Smart Dock Event Received !!!!!  Dock Status :  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v11, 0x1

    if-ne v11, v6, :cond_17

    .line 551
    const-string v11, "TvoutService_Java"

    const-string v12, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$1102(Lcom/android/server/TvoutService;Z)Z

    .line 554
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1200(Lcom/android/server/TvoutService;)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1

    .line 556
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    goto/16 :goto_0

    .line 559
    :cond_17
    if-nez v6, :cond_1

    .line 560
    const-string v11, "TvoutService_Java"

    const-string v12, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$1102(Lcom/android/server/TvoutService;Z)Z

    .line 563
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v12}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 565
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    goto/16 :goto_0

    .line 569
    .end local v6           #bMouseDockedFlag:I
    :cond_18
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 570
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    const/4 v12, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v11, v12}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 576
    :cond_19
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 579
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutGetCableStatus()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 582
    const-string v11, "TvoutService_Java"

    const-string v12, " VIVEK_AUDIO_CHECK Calling TvoutGetAudioChannel !!!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v11}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    move-result v4

    .line 585
    .local v4, audioValue:I
    const-string v11, "TvoutService_Java"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " VIVEK_AUDIO_CHECK TvoutGetAudioChannel audioValue is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v11, -0x1

    if-ne v4, v11, :cond_1

    .line 588
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 589
    .local v10, msg1:Landroid/os/Message;
    const-string v11, "HDMI connected.Audio is not turned on"

    iput-object v11, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 590
    iget-object v11, p0, Lcom/android/server/TvoutService$4;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler1:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/TvoutService;->access$1400(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v11

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
