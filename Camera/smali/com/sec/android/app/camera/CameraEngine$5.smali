.class Lcom/sec/android/app/camera/CameraEngine$5;
.super Landroid/view/OrientationEventListener;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2863
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$5;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 2865
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2866
    const-string v0, "CameraEngine"

    const-string v1, "onOrientationChanged: orientation - unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    :goto_0
    return-void

    .line 2879
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$5;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraEngine;->roundOrientation(I)I

    move-result v1

    #calls: Lcom/sec/android/app/camera/CameraEngine;->setLastOrientation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1500(Lcom/sec/android/app/camera/CameraEngine;I)V

    goto :goto_0
.end method
