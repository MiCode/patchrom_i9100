.class Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

.field final synthetic val$jpegData:[B

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3105
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$jpegData:[B

    iput-object p3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$location:Landroid/location/Location;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1708(Lcom/sec/android/app/camera/CameraEngine;)I

    .line 3109
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$jpegData:[B

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$location:Landroid/location/Location;

    #calls: Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->storeImage([BLandroid/location/Location;)Z
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->access$1800(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)Z

    .line 3110
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 3112
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1710(Lcom/sec/android/app/camera/CameraEngine;)I

    .line 3114
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-ImageSavingEnd**Point["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    return-void
.end method
