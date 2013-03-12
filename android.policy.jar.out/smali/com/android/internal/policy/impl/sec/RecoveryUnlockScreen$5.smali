.class Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$5;
.super Ljava/lang/Object;
.source "RecoveryUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$5;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->access$000(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$5;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 174
    return-void
.end method
