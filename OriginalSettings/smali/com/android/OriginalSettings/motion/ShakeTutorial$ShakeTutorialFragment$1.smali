.class Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$1;
.super Landroid/os/Handler;
.source "ShakeTutorial.java"


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
    .line 78
    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$1;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$1;->this$0:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;

    #calls: Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->access$000(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
