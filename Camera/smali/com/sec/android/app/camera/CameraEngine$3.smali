.class Lcom/sec/android/app/camera/CameraEngine$3;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine;->doStartEngineAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$3;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$3;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #calls: Lcom/sec/android/app/camera/CameraEngine;->openCameraDevice()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1100(Lcom/sec/android/app/camera/CameraEngine;)V

    .line 1418
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$3;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1421
    return-void
.end method
