.class Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleShutterReleaseEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3511
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3514
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3518
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$2502(Z)Z

    .line 3519
    return-void

    .line 3515
    :catch_0
    move-exception v0

    .line 3516
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
