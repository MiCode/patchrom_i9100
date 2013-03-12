.class Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;
.super Ljava/lang/Object;
.source "PcwUnlockScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 237
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$100(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, inputPassword:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$200(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPcwPassword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    const-string v4, "PcwUnlockScreen"

    const-string v5, "setPositiveButton ClickListener: checkPcwPassword success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$300(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$300(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_enabled"

    const-string v6, "10"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$300(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_enabled"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, state:Ljava/lang/String;
    const-string v4, "PcwUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pcw state=: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 251
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 252
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$100(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 255
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 256
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$500(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->r:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$400(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$000(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 273
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #state:Ljava/lang/String;
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v4, "PcwUnlockScreen"

    const-string v5, "setPositiveButton ClickListener: checkPcwPassword fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$500(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->r:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$400(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$300(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 264
    .local v0, errorDialog:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->access$300(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x104049c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 266
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 267
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 269
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    .line 270
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 271
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
