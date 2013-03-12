.class Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;
.super Lcom/android/internal/policy/impl/PointerInterceptView;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PointerInterceptView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStatusBarCbBehavior(Z)V
    .locals 2
    .parameter "isOpen"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    if-eq v0, p1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarOpen:Z

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 582
    :cond_0
    return-void
.end method
