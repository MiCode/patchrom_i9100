.class Lcom/android/internal/policy/impl/AccountUnlockScreen$5;
.super Ljava/lang/Object;
.source "AccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AccountUnlockScreen;ZLandroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->val$success:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->val$success:Z

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 298
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->clearPasswordLock()V

    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 302
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$300(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$400(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 313
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$400(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 319
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mInstructions:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$500(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x104041d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 316
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$600(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
