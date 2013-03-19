.class public Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "FlashMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mFlashMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    packed-switch p2, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 40
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mFlashMode:I

    goto :goto_0

    .line 43
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mFlashMode:I

    goto :goto_0

    .line 46
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mFlashMode:I

    goto :goto_0

    .line 50
    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mFlashMode:I

    goto :goto_0

    .line 53
    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mFlashMode:I

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    const-string v0, "FlashMenuSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "FlashMenuSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    const-string v0, "FlashMenuSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mFlashMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onFlashModeMenuSelect(I)V

    .line 80
    iget v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method
