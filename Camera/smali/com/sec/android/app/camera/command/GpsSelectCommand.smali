.class public Lcom/sec/android/app/camera/command/GpsSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "GpsSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mGps:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/camera/command/GpsSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 36
    packed-switch p2, :pswitch_data_0

    .line 48
    :goto_0
    :pswitch_0
    return-void

    .line 39
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/GpsSelectCommand;->mGps:I

    goto :goto_0

    .line 43
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/GpsSelectCommand;->mGps:I

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/command/GpsSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/command/GpsSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "GpsSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/command/GpsSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    const-string v0, "GpsSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/GpsSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const-string v0, "GpsSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/GpsSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/GpsSelectCommand;->mGps:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGpsChanged(I)V

    goto :goto_0
.end method
