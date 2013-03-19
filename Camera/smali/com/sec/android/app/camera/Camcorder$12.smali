.class Lcom/sec/android/app/camera/Camcorder$12;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camcorder;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
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
    .line 3915
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xbd4

    const/4 v6, 0x0

    .line 3920
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3921
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/16 v3, 0xbd2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->access$1402(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 3923
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camcorder;->access$2502(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 3924
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$2500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3925
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->access$2502(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 3929
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$2500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3931
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$12$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$12$1;-><init>(Lcom/sec/android/app/camera/Camcorder$12;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3947
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3948
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3949
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3950
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3953
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->moveModeButton()V

    .line 3954
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->access$2602(Lcom/sec/android/app/camera/Camcorder;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3956
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3957
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3958
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$12;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->resetFocus(Landroid/view/View;)V

    .line 3961
    :cond_3
    return-void
.end method
