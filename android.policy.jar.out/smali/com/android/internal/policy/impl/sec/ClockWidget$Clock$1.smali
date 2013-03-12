.class Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$1;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 902
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DualClockSettingActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 904
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 905
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$1;->this$0:Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;

    #getter for: Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->access$1800(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 906
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1900()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1900()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 907
    :cond_0
    return-void
.end method
