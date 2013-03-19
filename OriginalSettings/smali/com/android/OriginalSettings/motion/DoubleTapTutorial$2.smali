.class Lcom/android/settings/motion/DoubleTapTutorial$2;
.super Landroid/os/Handler;
.source "DoubleTapTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/DoubleTapTutorial;
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
    .line 87
    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapTutorial$2;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 89
    const-string v0, "DoubleTapTutorial"

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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial$2;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    #getter for: Lcom/android/settings/motion/DoubleTapTutorial;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapTutorial;->access$100(Lcom/android/settings/motion/DoubleTapTutorial;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial$2;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    #calls: Lcom/android/settings/motion/DoubleTapTutorial;->showRetryDialog()V
    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapTutorial;->access$200(Lcom/android/settings/motion/DoubleTapTutorial;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1e0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
