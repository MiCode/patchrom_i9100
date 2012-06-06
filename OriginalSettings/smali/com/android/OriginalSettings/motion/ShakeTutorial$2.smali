.class Lcom/android/OriginalSettings/motion/ShakeTutorial$2;
.super Landroid/os/Handler;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/motion/ShakeTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    #setter for: Lcom/android/OriginalSettings/motion/ShakeTutorial;->mCanShake:Z
    invoke-static {v0, v3}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$102(Lcom/android/OriginalSettings/motion/ShakeTutorial;Z)Z

    .line 73
    invoke-static {}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    #getter for: Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$300(Lcom/android/OriginalSettings/motion/ShakeTutorial;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    #getter for: Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$400(Lcom/android/OriginalSettings/motion/ShakeTutorial;)Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->setProgress(Z)V

    .line 76
    const/16 v0, 0x1e1

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    #calls: Lcom/android/OriginalSettings/motion/ShakeTutorial;->addBTPreference()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$500(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V

    .line 81
    const/16 v0, 0x1e2

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    #calls: Lcom/android/OriginalSettings/motion/ShakeTutorial;->showRetryDialog()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$600(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V

    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    #getter for: Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$400(Lcom/android/OriginalSettings/motion/ShakeTutorial;)Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1e0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
