.class Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1$1;
.super Ljava/lang/Object;
.source "CircleLockScreenMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;->onMotionListener(Landroid/hardware/motion/MREvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionReady:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$200(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$300(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 82
    :cond_0
    return-void
.end method
