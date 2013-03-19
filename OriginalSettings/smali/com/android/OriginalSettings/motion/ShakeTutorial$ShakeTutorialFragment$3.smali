.class Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$3;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$3;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :pswitch_0
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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :pswitch_1
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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$3;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    #getter for: Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->access$700(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$3;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    #getter for: Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->access$700(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
