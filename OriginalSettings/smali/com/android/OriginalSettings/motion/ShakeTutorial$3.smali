.class Lcom/android/OriginalSettings/motion/ShakeTutorial$3;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


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
    .line 92
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$3;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 110
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 101
    :sswitch_1
    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Motion Event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :sswitch_2
    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Motion Event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$3;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    #getter for: Lcom/android/OriginalSettings/motion/ShakeTutorial;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$700(Lcom/android/OriginalSettings/motion/ShakeTutorial;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$3;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial;

    #getter for: Lcom/android/OriginalSettings/motion/ShakeTutorial;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->access$700(Lcom/android/OriginalSettings/motion/ShakeTutorial;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0x23 -> :sswitch_1
        0x24 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
