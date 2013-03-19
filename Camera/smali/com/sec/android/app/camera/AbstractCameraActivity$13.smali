.class Lcom/sec/android/app/camera/AbstractCameraActivity$13;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1606
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1608
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_3

    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    .line 1609
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1626
    :goto_0
    return v0

    .line 1611
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1612
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x18

    if-eq v2, v3, :cond_1

    .line 1617
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 1618
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1620
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 1622
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$13;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1626
    goto :goto_0
.end method
