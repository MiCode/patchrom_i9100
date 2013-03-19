.class Lcom/sec/android/app/camera/CamcorderEngine$5;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderEngine;->doStartPreviewAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$5;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1437
    const-string v0, "CamcorderEngine"

    const-string v1, "starting preview..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :try_start_0
    const-string v0, "CamcorderEngine"

    const-string v1, "mCameraDevice.startPreview()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$5;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #getter for: Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->access$700(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$5;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1452
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$5;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    #calls: Lcom/sec/android/app/camera/CamcorderEngine;->updateOutdoorVisibility()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->access$800(Lcom/sec/android/app/camera/CamcorderEngine;)V

    .line 1453
    return-void

    .line 1441
    :catch_0
    move-exception v0

    goto :goto_0
.end method
