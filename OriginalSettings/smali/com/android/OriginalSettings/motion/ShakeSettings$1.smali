.class Lcom/android/OriginalSettings/motion/ShakeSettings$1;
.super Landroid/os/Handler;
.source "ShakeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/motion/ShakeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/ShakeSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/ShakeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/ShakeSettings$1;->this$0:Lcom/android/OriginalSettings/motion/ShakeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeSettings$1;->this$0:Lcom/android/OriginalSettings/motion/ShakeSettings;

    #calls: Lcom/android/OriginalSettings/motion/ShakeSettings;->updateAnimation()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeSettings;->access$000(Lcom/android/OriginalSettings/motion/ShakeSettings;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
