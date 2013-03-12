.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 223
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLastNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$302(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLastNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLastNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 228
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0
.end method
