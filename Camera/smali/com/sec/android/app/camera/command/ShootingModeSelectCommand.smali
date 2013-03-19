.class public Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ShootingModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShootingModeSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mShootingMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 36
    packed-switch p2, :pswitch_data_0

    .line 85
    :goto_0
    :pswitch_0
    return-void

    .line 38
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 41
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 44
    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 47
    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 50
    :pswitch_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 53
    :pswitch_6
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 56
    :pswitch_7
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 59
    :pswitch_8
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 62
    :pswitch_9
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 65
    :pswitch_a
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 68
    :pswitch_b
    const/16 v0, 0x17

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 71
    :pswitch_c
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 74
    :pswitch_d
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 77
    :pswitch_e
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 80
    :pswitch_f
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "ShootingModeSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    const-string v0, "ShootingModeSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "ShootingModeSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;->mShootingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onShootingModeMenuSelect(I)V

    goto :goto_0
.end method
