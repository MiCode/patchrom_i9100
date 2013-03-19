.class Lcom/sec/android/app/camera/CamcorderEngine$7$1$1;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderEngine$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/camera/CamcorderEngine$7$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine$7$1;)V
    .locals 0
    .parameter

    .prologue
    .line 2568
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$7$1$1;->this$2:Lcom/sec/android/app/camera/CamcorderEngine$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$7$1$1;->this$2:Lcom/sec/android/app/camera/CamcorderEngine$7$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine$7$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$7;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine$7;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0900f0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2571
    return-void
.end method
