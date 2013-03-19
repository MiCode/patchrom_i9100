.class public Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "EffectMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mEffect:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 38
    packed-switch p2, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 41
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 45
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 49
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 53
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 57
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 61
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 65
    :pswitch_6
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 69
    :pswitch_7
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 73
    :pswitch_8
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 77
    :pswitch_9
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 81
    :pswitch_a
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 85
    :pswitch_b
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 89
    :pswitch_c
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 93
    :pswitch_d
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 97
    :pswitch_e
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 101
    :pswitch_f
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 105
    :pswitch_10
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 109
    :pswitch_11
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 113
    :pswitch_12
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 117
    :pswitch_13
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    const-string v1, "EffectMenuSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const-string v1, "EffectMenuSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v1, v1, Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    const-string v1, "EffectMenuSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    .line 150
    .local v0, currentEffect:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v2, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onEffectMenuSelect(I)V

    .line 155
    iget v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 147
    .end local v0           #currentEffect:I
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v0

    .restart local v0       #currentEffect:I
    goto :goto_1
.end method
