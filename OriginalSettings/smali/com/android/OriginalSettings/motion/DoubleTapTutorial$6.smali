.class Lcom/android/settings/motion/DoubleTapTutorial$6;
.super Ljava/lang/Object;
.source "DoubleTapTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/DoubleTapTutorial;->showRetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/DoubleTapTutorial;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/DoubleTapTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapTutorial$6;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial$6;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    #getter for: Lcom/android/settings/motion/DoubleTapTutorial;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapTutorial;->access$100(Lcom/android/settings/motion/DoubleTapTutorial;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial$6;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/motion/DoubleTapTutorial;->mCanDoubleTap:Z
    invoke-static {v0, v1}, Lcom/android/settings/motion/DoubleTapTutorial;->access$402(Lcom/android/settings/motion/DoubleTapTutorial;Z)Z

    .line 202
    invoke-static {}, Lcom/android/settings/motion/DoubleTapTutorial;->access$500()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial$6;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    #getter for: Lcom/android/settings/motion/DoubleTapTutorial;->mCanDoubleTap:Z
    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapTutorial;->access$400(Lcom/android/settings/motion/DoubleTapTutorial;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/android/settings/motion/DoubleTapTutorial;->access$500()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/DoubleTapTutorial$6;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    #getter for: Lcom/android/settings/motion/DoubleTapTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/settings/motion/DoubleTapTutorial;->access$600(Lcom/android/settings/motion/DoubleTapTutorial;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 205
    :cond_0
    return-void
.end method
