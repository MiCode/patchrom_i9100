.class Lcom/android/internal/policy/impl/PhoneWindowManager$11;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x1b

    const/4 v5, 0x0

    .line 1640
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1643
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2, v6, v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 1656
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraSpecialized:Z

    if-eqz v2, :cond_2

    .line 1657
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    const-string v3, "set wakeup reason by camerakey"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/16 v3, 0x3ea

    iput v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnReason:I

    .line 1662
    :cond_2
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1663
    .local v0, cameraKeyDown:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v1, v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1664
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1665
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.CameraButtonIntentReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1667
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1668
    return-void

    .line 1648
    .end local v0           #cameraKeyDown:Landroid/view/KeyEvent;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2, v6, v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardHiding(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1650
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, v5, v5}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_0
.end method
