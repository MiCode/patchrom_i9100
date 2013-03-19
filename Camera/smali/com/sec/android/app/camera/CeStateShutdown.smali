.class public Lcom/sec/android/app/camera/CeStateShutdown;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStateShutdown.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateShuttingDown"


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
    const-string v0, "CeStateShuttingDown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    const-string v0, "CeStateShuttingDown"

    const-string v1, "message-coming means engine is still alive.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "CeStateShuttingDown"

    const-string v1, "stopping engine.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 50
    return-void

    .line 41
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->imageStoringCompleted()V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .locals 5
    .parameter "request"

    .prologue
    const/4 v4, 0x7

    const/4 v0, 0x1

    .line 53
    const-string v1, "CeStateShuttingDown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleRequest - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 72
    const-string v0, "CeStateShuttingDown"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 75
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 56
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewDummySync()V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 61
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 66
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateShutdown;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method
