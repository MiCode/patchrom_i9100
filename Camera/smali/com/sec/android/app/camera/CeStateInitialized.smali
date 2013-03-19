.class public Lcom/sec/android/app/camera/CeStateInitialized;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStateInitialized.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateInitialized"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V
    .locals 0
    .parameter "cameraEngine"
    .parameter "requestQueue"
    .parameter "id"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AbstractCeState;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sec/android/app/camera/CeRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 34
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 37
    const-string v0, "CeStateInitialized"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 40
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 43
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 47
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->imageStoringCompleted()V

    goto :goto_0

    .line 51
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 55
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 61
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 66
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 70
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x4 -> :sswitch_5
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0xa -> :sswitch_7
        0x65 -> :sswitch_6
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .locals 4
    .parameter "request"

    .prologue
    const/4 v2, 0x1

    .line 78
    const-string v0, "CeStateInitialized"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleRequest - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 147
    const-string v0, "CeStateInitialized"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 150
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 81
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 83
    goto :goto_0

    .line 85
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    move v0, v2

    .line 86
    goto :goto_0

    .line 88
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewDummySync()V

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 90
    goto :goto_0

    .line 92
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doAutoFocusAsync()V

    move v0, v2

    .line 93
    goto :goto_0

    .line 95
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doTakePictureAsync()V

    move v0, v2

    .line 96
    goto :goto_0

    .line 98
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->doSetParametersSync(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 100
    goto :goto_0

    .line 102
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 104
    goto :goto_0

    .line 106
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doPostInitSync()V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 108
    goto :goto_0

    .line 110
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doSetAllParamsSync()V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 112
    goto/16 :goto_0

    .line 114
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine;->doWaitAsync(I)V

    move v0, v2

    .line 115
    goto/16 :goto_0

    .line 117
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doProcessBackSync()V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 119
    goto/16 :goto_0

    .line 121
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine;->doShutterTimerAsync(I)V

    move v0, v2

    .line 122
    goto/16 :goto_0

    .line 125
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doPrepareVideoRecordingAsync()V

    move v0, v2

    .line 126
    goto/16 :goto_0

    .line 128
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartVideoRecordingAsync()V

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    move v0, v2

    .line 130
    goto/16 :goto_0

    .line 132
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 135
    goto/16 :goto_0

    .line 137
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doWaitForSurfaceAsync()V

    move v0, v2

    .line 138
    goto/16 :goto_0

    .line 140
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doLaunchGallerySync(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 142
    goto/16 :goto_0

    :sswitch_11
    move v0, v2

    .line 144
    goto/16 :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_7
        0x3 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0x9 -> :sswitch_b
        0xa -> :sswitch_8
        0xd -> :sswitch_9
        0x18 -> :sswitch_a
        0x1a -> :sswitch_10
        0x1b -> :sswitch_2
        0x1c -> :sswitch_11
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x69 -> :sswitch_e
        0x6b -> :sswitch_f
    .end sparse-switch
.end method
