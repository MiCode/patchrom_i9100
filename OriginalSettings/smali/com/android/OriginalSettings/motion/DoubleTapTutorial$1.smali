.class Lcom/android/settings/motion/DoubleTapTutorial$1;
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
    .line 77
    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapTutorial$1;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapTutorial$1;->this$0:Lcom/android/settings/motion/DoubleTapTutorial;

    #calls: Lcom/android/settings/motion/DoubleTapTutorial;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapTutorial;->access$000(Lcom/android/settings/motion/DoubleTapTutorial;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
