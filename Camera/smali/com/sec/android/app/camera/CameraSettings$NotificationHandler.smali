.class public Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;
.super Landroid/os/Handler;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSettings;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/CameraSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->this$0:Lcom/sec/android/app/camera/CameraSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 774
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->this$0:Lcom/sec/android/app/camera/CameraSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->handleNotification(II)V

    .line 777
    :cond_0
    return-void
.end method
