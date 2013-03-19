.class public Lcom/sec/android/app/camera/CeStateRecording;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStateRecording.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateRecording"


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
    .locals 2
    .parameter "msg"

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 40
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 43
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->handleVideoRecordingStarted()V

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 47
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .locals 3
    .parameter "request"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 91
    const-string v0, "CeStateRecording"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 94
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 58
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraEngine;->doWaitAsync(I)V

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doProcessBackSync()V

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 63
    goto :goto_0

    .line 67
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doPauseVideoRecordingSync()V

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doResumeVideoRecordingSync()V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 73
    goto :goto_0

    .line 75
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doAutoFocusAsync()V

    move v0, v1

    .line 86
    goto/16 :goto_0

    .line 88
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateRecording;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doTakePictureAsync()V

    move v0, v1

    .line 89
    goto/16 :goto_0

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0xd -> :sswitch_0
        0x18 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_5
    .end sparse-switch
.end method
