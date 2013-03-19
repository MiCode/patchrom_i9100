.class Lcom/sec/android/app/camera/AbstractCameraActivity$40;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->showOnDeviceHelpScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2316
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$40;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-object p2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$40;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$40;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$40;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2322
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$40;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setOnDeviceHelpScreen(Z)V

    .line 2328
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$40;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$200(Lcom/sec/android/app/camera/AbstractCameraActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2329
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$40;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$200(Lcom/sec/android/app/camera/AbstractCameraActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 2330
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$40;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$202(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2332
    :cond_1
    return-void

    .line 2324
    :cond_2
    const-string v0, "AbstractCameraActivity"

    const-string v1, "CameraSetting is null, checkBox is not activated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
