.class Lcom/android/internal/policy/impl/AccountUnlockScreen$2;
.super Ljava/lang/Object;
.source "AccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AccountUnlockScreen;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mSecondlock:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$100(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 167
    return-void
.end method
