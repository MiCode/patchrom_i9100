.class Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$5;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$5;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    #calls: Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->removeBTPreference()V
    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->access$400(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$5;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z
    invoke-static {v0, v1}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->access$102(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;Z)Z

    .line 268
    invoke-static {}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$5;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    #getter for: Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z
    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->access$100(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$5;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    #getter for: Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->access$300(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 271
    :cond_0
    return-void
.end method
