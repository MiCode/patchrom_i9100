.class Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;
.super Ljava/lang/Object;
.source "CircleLockScreenMotion.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->DBG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Here comes a motion event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->DBG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCK_EXECUTE_CAMERA_L"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$400(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
