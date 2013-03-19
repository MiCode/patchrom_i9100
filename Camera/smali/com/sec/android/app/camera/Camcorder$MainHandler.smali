.class Lcom/sec/android/app/camera/Camcorder$MainHandler;
.super Landroid/os/Handler;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$200()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$300()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 252
    :cond_2
    :goto_0
    return-void

    .line 221
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$200()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$404(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$500()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$200()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$300()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camcorder;->access$402(Lcom/sec/android/app/camera/Camcorder;I)I

    goto :goto_0

    .line 230
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_8

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 236
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleWait(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mwLostWinFocus:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camcorder;->access$702(Lcom/sec/android/app/camera/Camcorder;Z)Z

    goto/16 :goto_0

    .line 241
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f6

    if-eq v0, v1, :cond_2

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$MainHandler;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0
.end method
