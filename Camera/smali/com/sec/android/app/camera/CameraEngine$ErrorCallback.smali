.class public final Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# static fields
.field private static final CAMERA_ERROR_MSG_NO_ERROR:I = 0x0

.field private static final CAMERA_ERROR_WRONG_FW:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 5
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v4, 0x1

    .line 613
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCallback.onError ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    if-eqz v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 619
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->closeCamera()V

    .line 656
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    sparse-switch p1, :sswitch_data_0

    .line 653
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finishOnError(I)V

    goto :goto_0

    .line 631
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 632
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError : CAMERA_ERROR_WRONG_FW ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mInformedAboutFirmwareVersion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] IMEI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mInformedAboutFirmwareVersion:Z

    if-nez v1, :cond_2

    const-string v1, "357858010034783"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "004400152020002"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_4

    .line 634
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finishOnError(I)V

    .line 635
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/CameraEngine;->mInformedAboutFirmwareVersion:Z

    goto :goto_0

    .line 637
    :cond_4
    const-string v1, "CameraEngine"

    const-string v2, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 641
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :sswitch_2
    const-string v1, "CameraEngine"

    const-string v2, "!!!Camera retry!!! - start!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 643
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStartEngineAsync()V

    .line 644
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 645
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    .line 646
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 647
    const-string v1, "CameraEngine"

    const-string v2, "!!!Camera retry!!! before return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 650
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, -0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finishOnError(I)V

    goto/16 :goto_0

    .line 627
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_3
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
    .end sparse-switch
.end method
