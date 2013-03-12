.class Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;->onStatusBarCbBehavior(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1$1;->this$2:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1$1;->this$2:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerInterceptInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->relayoutStatusBarVisibility()V

    .line 579
    return-void
.end method
