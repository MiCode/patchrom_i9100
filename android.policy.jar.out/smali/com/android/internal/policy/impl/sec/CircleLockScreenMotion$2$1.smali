.class Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2$1;
.super Ljava/lang/Object;
.source "CircleLockScreenMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;->onMotionListener(Landroid/hardware/motion/MREvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionReady:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$200(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, cm:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, stillCameraIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$500(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->access$300(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 112
    .end local v0           #cm:Landroid/content/ComponentName;
    .end local v1           #stillCameraIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
