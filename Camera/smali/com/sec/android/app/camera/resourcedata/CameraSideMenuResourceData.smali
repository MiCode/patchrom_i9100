.class public Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;
.super Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
.source "CameraSideMenuResourceData.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 2
    .parameter "activityContext"

    .prologue
    .line 27
    const/16 v0, 0x29

    const v1, 0x7f090001

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;II)V

    .line 29
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSideMenuOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;->resetOrder(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public saveOrder()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSideMenuOrder(Ljava/lang/String;)V

    .line 35
    return-void
.end method
