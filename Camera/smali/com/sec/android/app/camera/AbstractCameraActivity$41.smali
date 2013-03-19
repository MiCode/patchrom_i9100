.class Lcom/sec/android/app/camera/AbstractCameraActivity$41;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2374
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$41;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 2376
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$41;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$41;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v2, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2377
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$41;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2378
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$41;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->setEditableShortcutHelpTextDialog(I)V

    .line 2379
    return-void

    :cond_0
    move v0, v1

    .line 2378
    goto :goto_0
.end method
