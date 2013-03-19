.class public Lcom/sec/android/app/camera/command/ResolutionSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ResolutionSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolutionSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mResolution:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 2
    .parameter "context"
    .parameter "commandid"

    .prologue
    const/16 v1, 0x12

    const/16 v0, 0xe

    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    packed-switch p2, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 42
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 45
    :pswitch_2
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 48
    :pswitch_3
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 51
    :pswitch_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 54
    :pswitch_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 57
    :pswitch_6
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 60
    :pswitch_7
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 63
    :pswitch_8
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 66
    :pswitch_9
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 69
    :pswitch_a
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 72
    :pswitch_b
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 75
    :pswitch_c
    const/16 v0, 0x17

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 78
    :pswitch_d
    const/16 v0, 0x1a

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 81
    :pswitch_e
    const/16 v0, 0x1b

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 84
    :pswitch_f
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 87
    :pswitch_10
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 90
    :pswitch_11
    const/16 v0, 0x1c

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 93
    :pswitch_12
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 96
    :pswitch_13
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 99
    :pswitch_14
    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 102
    :pswitch_15
    const/16 v0, 0x1d

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 105
    :pswitch_16
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 108
    :pswitch_17
    iput v1, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 111
    :pswitch_18
    const/16 v0, 0x1f

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 114
    :pswitch_19
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 117
    :pswitch_1a
    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 120
    :pswitch_1b
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto :goto_0

    .line 124
    :pswitch_1c
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 127
    :pswitch_1d
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 130
    :pswitch_1e
    iput v1, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 133
    :pswitch_1f
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    goto/16 :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x8fc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_1c
        :pswitch_16
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_3
        :pswitch_9
        :pswitch_14
        :pswitch_c
        :pswitch_12
        :pswitch_6
        :pswitch_d
        :pswitch_e
        :pswitch_11
        :pswitch_15
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    const-string v0, "ResolutionSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const-string v0, "ResolutionSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    const-string v0, "ResolutionSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mResolution:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResolutionMenuSelect(I)V

    .line 160
    iget v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method
