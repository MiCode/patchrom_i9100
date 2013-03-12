.class Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$2;
.super Ljava/lang/Object;
.source "RecoveryUnlockScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mResuming:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->access$100(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->access$000(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 146
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 137
    return-void
.end method
