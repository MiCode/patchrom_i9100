.class final Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 9
    .parameter "afMsg"
    .parameter "camera"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 774
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoFocusCallback.onAutoFocus : msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] focusState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-Autofocus**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->closeCamera()V

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    if-ne p1, v8, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iput v5, v0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopAFHideRectTimer()V

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetPosIndicator()V

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->shrinkFocusRect()V

    goto :goto_0

    .line 796
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iput v7, v0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetPosIndicator()V

    goto :goto_0

    .line 802
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    if-eq v0, v5, :cond_4

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 808
    :cond_4
    if-ne p1, v5, :cond_9

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 810
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_5

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 821
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    if-eq v0, v4, :cond_6

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iput v4, v0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 849
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 851
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 816
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_1

    .line 825
    :cond_9
    if-ne p1, v4, :cond_a

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    goto :goto_2

    .line 827
    :cond_a
    if-nez p1, :cond_6

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 829
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_b

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v4, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 839
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    if-eq v0, v8, :cond_6

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iput v8, v0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    goto :goto_2

    .line 834
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v4, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_3
.end method
