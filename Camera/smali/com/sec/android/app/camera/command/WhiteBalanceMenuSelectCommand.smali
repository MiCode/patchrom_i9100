.class public Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "WhiteBalanceMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WhiteBalanceMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mWB:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    packed-switch p2, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 40
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_0

    .line 44
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_0

    .line 48
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_0

    .line 52
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_0

    .line 56
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_0

    .line 60
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_0

    .line 64
    :pswitch_6
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const-string v0, "WhiteBalanceMenuSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const-string v0, "WhiteBalanceMenuSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    const-string v0, "WhiteBalanceMenuSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mWB:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onWhiteBalanceMenuSelect(I)V

    .line 91
    iget v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method
