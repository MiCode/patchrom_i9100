.class Lcom/sec/android/app/camera/Camcorder$3;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 400
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, action:Ljava/lang/String;
    const-string v6, "Camcorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1000(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 403
    const-string v6, "Camcorder"

    const-string v7, "onReceive - camcorder is destroying"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    const-string v6, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 409
    .local v4, myExtras:Landroid/os/Bundle;
    const-string v6, "flash_led_disable"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 411
    .local v1, bLimit:Z
    if-eqz v1, :cond_2

    .line 412
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 414
    const-string v6, "Camcorder"

    const-string v7, "onReceive - flash off"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 416
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v6

    const/16 v7, 0x67

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 417
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    const/16 v7, 0x67

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->doChangeParameterSync(II)V

    .line 418
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const v7, 0x7f09017b

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 435
    .end local v1           #bLimit:Z
    .end local v4           #myExtras:Landroid/os/Bundle;
    :cond_2
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 438
    :cond_3
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, mIsSettingsMMC:Z
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 441
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 442
    const/4 v2, 0x1

    .line 449
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v6, v6, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0xbc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/MenuBase;

    .line 450
    .local v5, storageMenu:Lcom/sec/android/app/camera/MenuBase;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 451
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 454
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 455
    if-eqz v2, :cond_6

    .line 456
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 544
    .end local v2           #mIsSettingsMMC:Z
    .end local v5           #storageMenu:Lcom/sec/android/app/camera/MenuBase;
    :cond_6
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 545
    const/4 v3, 0x0

    .line 546
    .local v3, messageDisplayData:Ljava/lang/String;
    const-string v6, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 547
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 549
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8, v3}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    .line 561
    .end local v3           #messageDisplayData:Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 562
    const-string v6, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "CAMERA_ON"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 563
    const-string v6, "Camcorder"

    const-string v7, "INTENT_MSG_DCMO"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 444
    .restart local v2       #mIsSettingsMMC:Z
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 445
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    goto/16 :goto_1

    .line 457
    .end local v2           #mIsSettingsMMC:Z
    :cond_9
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 458
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v6

    if-nez v6, :cond_a

    .line 459
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    goto/16 :goto_2

    .line 461
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v6

    const/16 v7, 0x75

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_2

    .line 463
    :cond_b
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 464
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 465
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    goto/16 :goto_2

    .line 466
    :cond_c
    const-string v6, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 467
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    goto/16 :goto_2

    .line 468
    :cond_d
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 469
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/sec/android/app/camera/Camcorder;->access$1600(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 470
    :cond_e
    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 471
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1700(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v6, v7, :cond_f

    .line 472
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 473
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    goto/16 :goto_2

    .line 476
    :cond_f
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-boolean v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v6, :cond_6

    .line 477
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 478
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 479
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x0

    #calls: Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V
    invoke-static {v6, v7}, Lcom/sec/android/app/camera/Camcorder;->access$1800(Lcom/sec/android/app/camera/Camcorder;Z)V

    goto/16 :goto_2

    .line 484
    :cond_10
    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 485
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1700(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget v7, v7, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v6, v7, :cond_14

    .line 486
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1700(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v6, v7, :cond_12

    .line 487
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 488
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 489
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 491
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    goto/16 :goto_2

    .line 494
    :cond_12
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 495
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 496
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 498
    :cond_13
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 499
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 500
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x0

    #calls: Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V
    invoke-static {v6, v7}, Lcom/sec/android/app/camera/Camcorder;->access$1800(Lcom/sec/android/app/camera/Camcorder;Z)V

    goto/16 :goto_2

    .line 505
    :cond_14
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 506
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 508
    :cond_15
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 510
    :cond_16
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 511
    const-string v6, "Camcorder"

    const-string v7, "INTENT_MSG_SECURITY"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 522
    :cond_17
    const-string v6, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 523
    const-string v6, "Camcorder"

    const-string v7, "onReceive shutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 526
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 527
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 532
    :cond_18
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 533
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    .line 534
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_19

    .line 535
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    goto/16 :goto_2

    .line 537
    :cond_19
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x1

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/camera/Camcorder;->access$1902(Lcom/sec/android/app/camera/Camcorder;Z)Z

    .line 538
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto/16 :goto_2

    .line 550
    .restart local v3       #messageDisplayData:Ljava/lang/String;
    :cond_1a
    const-string v6, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 551
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 553
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8, v3}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 554
    :cond_1b
    const-string v6, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 555
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 557
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8, v3}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_3
.end method
