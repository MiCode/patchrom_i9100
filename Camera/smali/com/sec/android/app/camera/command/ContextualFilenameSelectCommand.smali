.class public Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "ContextualFilenameSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextualFilenameSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mContextualFilename:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    sparse-switch p2, :sswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 40
    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;->mContextualFilename:I

    goto :goto_0

    .line 44
    :sswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;->mContextualFilename:I

    goto :goto_0

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x11f8 -> :sswitch_0
        0x11f9 -> :sswitch_1
        0x125c -> :sswitch_0
        0x125d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const-string v0, "ContextualFilenameSelectCommand"

    const-string v1, "return isStartPreview.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const-string v0, "ContextualFilenameSelectCommand"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v0, v0, Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    const-string v0, "ContextualFilenameSelectCommand"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;->mContextualFilename:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onContextualFilenameSelect(I)V

    .line 71
    iget v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method
